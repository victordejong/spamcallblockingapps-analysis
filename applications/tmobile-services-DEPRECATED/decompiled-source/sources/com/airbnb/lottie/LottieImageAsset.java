package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieImageAsset.class */
public class LottieImageAsset {

    /* renamed from: a */
    private final int f5813a;

    /* renamed from: b */
    private final int f5814b;

    /* renamed from: c */
    private final String f5815c;

    /* renamed from: d */
    private final String f5816d;
    @Nullable

    /* renamed from: e */
    private Bitmap f5817e;

    @RestrictTo
    public LottieImageAsset(int i, int i2, String str, String str2, String str3) {
        this.f5813a = i;
        this.f5814b = i2;
        this.f5815c = str;
        this.f5816d = str2;
    }

    @Nullable
    /* renamed from: a */
    public Bitmap m16224a() {
        return this.f5817e;
    }

    /* renamed from: b */
    public String m16223b() {
        return this.f5816d;
    }

    /* renamed from: c */
    public int m16222c() {
        return this.f5814b;
    }

    /* renamed from: d */
    public String m16221d() {
        return this.f5815c;
    }

    /* renamed from: e */
    public int m16220e() {
        return this.f5813a;
    }

    /* renamed from: f */
    public void m16219f(@Nullable Bitmap bitmap) {
        this.f5817e = bitmap;
    }
}
