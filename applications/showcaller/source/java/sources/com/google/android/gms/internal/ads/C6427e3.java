package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.e3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e3.class */
public final class C6427e3 {

    /* renamed from: a */
    public static final C6427e3 f21986a = new C6427e3(0, 0, 0);

    /* renamed from: b */
    public static final AbstractC7093w2<C6427e3> f21987b = C6389d3.f21468a;

    /* renamed from: c */
    public final int f21988c = 0;

    /* renamed from: d */
    public final int f21989d;

    /* renamed from: e */
    public final int f21990e;

    public C6427e3(int i, int i2, int i3) {
        this.f21989d = i2;
        this.f21990e = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6427e3)) {
            return false;
        }
        C6427e3 c6427e3 = (C6427e3) obj;
        int i = c6427e3.f21988c;
        return this.f21989d == c6427e3.f21989d && this.f21990e == c6427e3.f21990e;
    }

    public final int hashCode() {
        return ((this.f21989d + 16337) * 31) + this.f21990e;
    }
}
