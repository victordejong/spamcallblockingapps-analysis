package com.twitter.sdk.android.core.models;

import com.google.gson.annotations.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/ImageValue.class */
public class ImageValue {
    @b(a = "alt")
    public final String alt;
    @b(a = "height")
    public final int height;
    @b(a = "url")
    public final String url;
    @b(a = "width")
    public final int width;

    public ImageValue(int i, int i2, String str, String str2) {
        this.height = i;
        this.width = i2;
        this.url = str;
        this.alt = str2;
    }
}
