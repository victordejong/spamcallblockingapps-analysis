package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rm3.class */
public final class rm3 implements Comparable<rm3> {

    /* renamed from: d */
    private final boolean f29042d;

    /* renamed from: e */
    private final boolean f29043e;

    public rm3(C7021u4 c7021u4, int i) {
        this.f29042d = 1 != (c7021u4.f30503f & 1) ? false : true;
        this.f29043e = zm3.m8319k(i, false);
    }

    /* renamed from: a */
    public final int compareTo(rm3 rm3Var) {
        return uw2.m10158i().mo10163d(this.f29043e, rm3Var.f29043e).mo10163d(this.f29042d, rm3Var.f29042d).mo10162e();
    }
}
