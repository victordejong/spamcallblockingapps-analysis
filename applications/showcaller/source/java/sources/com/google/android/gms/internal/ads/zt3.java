package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zt3.class */
class zt3 {

    /* renamed from: a */
    public final int f33399a;

    public zt3(int i) {
        this.f33399a = i;
    }

    /* renamed from: a */
    public static int m8183a(int i) {
        return (i >> 24) & 255;
    }

    /* renamed from: b */
    public static String m8182b(int i) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i >> 24) & 255));
        sb.append((char) ((i >> 16) & 255));
        sb.append((char) ((i >> 8) & 255));
        sb.append((char) (i & 255));
        return sb.toString();
    }

    public String toString() {
        return m8182b(this.f33399a);
    }
}
