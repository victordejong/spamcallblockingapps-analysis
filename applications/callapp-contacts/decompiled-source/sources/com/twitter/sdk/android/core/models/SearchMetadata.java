package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/SearchMetadata.class */
public class SearchMetadata {
    @b(a = "completed_in")
    public final double completedIn;
    @b(a = "count")
    public final long count;
    @b(a = "max_id")
    public final long maxId;
    @b(a = "max_id_str")
    public final String maxIdStr;
    @b(a = "next_results")
    public final String nextResults;
    @b(a = "query")
    public final String query;
    @b(a = "refresh_url")
    public final String refreshUrl;
    @b(a = "since_id")
    public final long sinceId;
    @b(a = "since_id_str")
    public final String sinceIdStr;

    public SearchMetadata(int i, int i2, String str, String str2, int i3, double d2, String str3, String str4, String str5) {
        this.maxId = i;
        this.sinceId = i2;
        this.refreshUrl = str;
        this.nextResults = str2;
        this.count = i3;
        this.completedIn = d2;
        this.sinceIdStr = str3;
        this.query = str4;
        this.maxIdStr = str5;
    }
}
