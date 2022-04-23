package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Search.class */
public class Search {
    @b(a = "search_metadata")
    public final SearchMetadata searchMetadata;
    @b(a = "statuses")
    public final List<Tweet> tweets;

    private Search() {
        this(null, null);
    }

    public Search(List<Tweet> list, SearchMetadata searchMetadata) {
        this.tweets = ModelUtils.getSafeList(list);
        this.searchMetadata = searchMetadata;
    }
}
