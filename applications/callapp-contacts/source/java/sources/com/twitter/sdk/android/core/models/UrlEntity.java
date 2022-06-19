package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/UrlEntity.class */
public class UrlEntity extends Entity {
    @AbstractC15952b(m7988a = "display_url")
    public final String displayUrl;
    @AbstractC15952b(m7988a = "expanded_url")
    public final String expandedUrl;
    @AbstractC15952b(m7988a = "url")
    public final String url;

    public UrlEntity(String str, String str2, String str3, int i, int i2) {
        super(i, i2);
        this.url = str;
        this.expandedUrl = str2;
        this.displayUrl = str3;
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getEnd() {
        return super.getEnd();
    }

    @Override // com.twitter.sdk.android.core.models.Entity
    public /* bridge */ /* synthetic */ int getStart() {
        return super.getStart();
    }
}
