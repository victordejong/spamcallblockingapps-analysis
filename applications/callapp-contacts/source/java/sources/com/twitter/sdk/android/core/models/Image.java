package com.twitter.sdk.android.core.models;

import com.explorestack.iab.mraid.C9568h;
import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/models/Image.class */
public class Image {
    @AbstractC15952b(m7988a = C9568h.f32519a)

    /* renamed from: h */
    public final int f61037h;
    @AbstractC15952b(m7988a = "image_type")
    public final String imageType;
    @AbstractC15952b(m7988a = "w")

    /* renamed from: w */
    public final int f61038w;

    public Image(int i, int i2, String str) {
        this.f61038w = i;
        this.f61037h = i2;
        this.imageType = str;
    }
}
