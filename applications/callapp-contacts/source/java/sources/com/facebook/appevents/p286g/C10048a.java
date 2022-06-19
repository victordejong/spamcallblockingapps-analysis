package com.facebook.appevents.p286g;
/* renamed from: com.facebook.appevents.g.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/g/a.class */
public final class C10048a {

    /* renamed from: a */
    float[] f33342a;

    /* renamed from: b */
    int[] f33343b;

    /* renamed from: c */
    int f33344c;

    public C10048a(int[] iArr) {
        this.f33343b = iArr;
        int m23529a = m23529a(iArr);
        this.f33344c = m23529a;
        this.f33342a = new float[m23529a];
    }

    /* renamed from: a */
    public static int m23529a(int[] iArr) {
        int i = 1;
        for (int i2 : iArr) {
            i *= i2;
        }
        return i;
    }
}
