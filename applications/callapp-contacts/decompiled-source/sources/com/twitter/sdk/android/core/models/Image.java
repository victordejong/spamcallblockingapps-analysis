package com.twitter.sdk.android.core.models;

import com.explorestack.iab.mraid.h;
import com.google.gson.annotations.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Image.class */
public class Image {
    @b(a = h.f19142a)
    public final int h;
    @b(a = "image_type")
    public final String imageType;
    @b(a = "w")
    public final int w;

    public Image(int i, int i2, String str) {
        this.w = i;
        this.h = i2;
        this.imageType = str;
    }
}
