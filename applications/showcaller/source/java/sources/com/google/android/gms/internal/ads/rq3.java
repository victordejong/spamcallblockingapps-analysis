package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rq3.class */
public final class rq3 {

    /* renamed from: a */
    public final String f29097a;

    private rq3(int i, int i2, String str) {
        this.f29097a = str;
    }

    /* renamed from: a */
    public static rq3 m11323a(C6694la c6694la) {
        String str;
        c6694la.m13632s(2);
        int m13629v = c6694la.m13629v();
        int i = m13629v >> 1;
        int m13629v2 = (c6694la.m13629v() >> 3) | ((m13629v & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else if (i != 9) {
            return null;
        } else {
            str = "avc3";
        }
        String str2 = m13629v2 < 10 ? ".0" : ".";
        StringBuilder sb = new StringBuilder(str.length() + 24 + str2.length());
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(str2);
        sb.append(m13629v2);
        return new rq3(i, m13629v2, sb.toString());
    }
}
