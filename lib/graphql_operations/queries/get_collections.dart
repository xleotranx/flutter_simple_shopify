const String getAllCollectionsQuery = r'''
query($cursor: String){
  collections(first: 1, after: $cursor) {
  pageInfo{
    hasNextPage
  }
    edges {
      cursor
      node {
        title
        description
        descriptionHtml
        handle
        id
        updatedAt
        image {
          altText
          id
          originalSrc
        }
      }
    }
  }
}
''';
