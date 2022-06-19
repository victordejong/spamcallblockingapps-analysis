package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/ImageValue.class */
public class ImageValue {
    @AbstractC15952b(m7988a = "alt")
    public final String alt;
    @AbstractC15952b(m7988a = "height")
    public final int height;
    @AbstractC15952b(m7988a = "url")
    public final String url;
    @AbstractC15952b(m7988a = "width")
    public final int width;

    public ImageValue(int i, int i2, String str, String str2) {
        this.height = i;
        this.width = i2;
        this.url = str;
        this.alt = str2;
    }
}
