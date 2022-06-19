package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.video.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/i.class */
public final class C5559i {

    /* renamed from: a */
    public final int f18054a;

    /* renamed from: b */
    public final int f18055b;

    /* renamed from: c */
    public final String f18056c;

    private C5559i(int i, int i2, String str) {
        this.f18054a = i;
        this.f18055b = i2;
        this.f18056c = str;
    }

    /* renamed from: a */
    public static C5559i m18556a(C5536v c5536v) {
        String str;
        c5536v.m18679N(2);
        int m18653z = c5536v.m18653z();
        int i = m18653z >> 1;
        int m18653z2 = ((c5536v.m18653z() >> 3) & 31) | ((m18653z & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        return new C5559i(i, m18653z2, str + ".0" + i + ".0" + m18653z2);
    }
}
