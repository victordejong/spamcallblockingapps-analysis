package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/SearchMetadata.class */
public class SearchMetadata {
    @AbstractC15952b(m7988a = "completed_in")
    public final double completedIn;
    @AbstractC15952b(m7988a = "count")
    public final long count;
    @AbstractC15952b(m7988a = "max_id")
    public final long maxId;
    @AbstractC15952b(m7988a = "max_id_str")
    public final String maxIdStr;
    @AbstractC15952b(m7988a = "next_results")
    public final String nextResults;
    @AbstractC15952b(m7988a = "query")
    public final String query;
    @AbstractC15952b(m7988a = "refresh_url")
    public final String refreshUrl;
    @AbstractC15952b(m7988a = "since_id")
    public final long sinceId;
    @AbstractC15952b(m7988a = "since_id_str")
    public final String sinceIdStr;

    public SearchMetadata(int i, int i2, String str, String str2, int i3, double d, String str3, String str4, String str5) {
        this.maxId = i;
        this.sinceId = i2;
        this.refreshUrl = str;
        this.nextResults = str2;
        this.count = i3;
        this.completedIn = d;
        this.sinceIdStr = str3;
        this.query = str4;
        this.maxIdStr = str5;
    }
}
