package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.video.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/b.class */
public final class C11648b {

    /* renamed from: a */
    public final int f38798a;

    /* renamed from: b */
    public final int f38799b;

    /* renamed from: c */
    public final String f38800c;

    private C11648b(int i, int i2, String str) {
        this.f38798a = i;
        this.f38799b = i2;
        this.f38800c = str;
    }

    /* renamed from: a */
    public static C11648b m19739a(C11628u c11628u) {
        String str;
        c11628u.m19799e(2);
        int m19804c = c11628u.m19804c();
        int i = m19804c >> 1;
        int m19804c2 = ((c11628u.m19804c() >> 3) & 31) | ((m19804c & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = ".0";
        sb.append(".0");
        sb.append(i);
        if (m19804c2 >= 10) {
            str2 = ".";
        }
        sb.append(str2);
        sb.append(m19804c2);
        return new C11648b(i, m19804c2, sb.toString());
    }
}
