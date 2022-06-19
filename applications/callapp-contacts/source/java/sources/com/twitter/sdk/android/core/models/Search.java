package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Search.class */
public class Search {
    @AbstractC15952b(m7988a = "search_metadata")
    public final SearchMetadata searchMetadata;
    @AbstractC15952b(m7988a = "statuses")
    public final List<Tweet> tweets;

    private Search() {
        this(null, null);
    }

    public Search(List<Tweet> list, SearchMetadata searchMetadata) {
        this.tweets = ModelUtils.getSafeList(list);
        this.searchMetadata = searchMetadata;
    }
}
