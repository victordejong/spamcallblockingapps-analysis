package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.util.u;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final int f22386a;

    /* renamed from: b  reason: collision with root package name */
    public final int f22387b;

    /* renamed from: c  reason: collision with root package name */
    public final String f22388c;

    private b(int i, int i2, String str) {
        this.f22386a = i;
        this.f22387b = i2;
        this.f22388c = str;
    }

    public static b a(u uVar) {
        String str;
        uVar.e(2);
        int c2 = uVar.c();
        int i = c2 >> 1;
        int c3 = ((uVar.c() >> 3) & 31) | ((c2 & 1) << 5);
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
        if (c3 >= 10) {
            str2 = ".";
        }
        sb.append(str2);
        sb.append(c3);
        return new b(i, c3, sb.toString());
    }
}
