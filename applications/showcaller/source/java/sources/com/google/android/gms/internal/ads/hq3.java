package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hq3.class */
public final class hq3 {

    /* renamed from: a */
    private final long f24018a;

    /* renamed from: b */
    private final long f24019b;

    /* renamed from: c */
    private final long f24020c;

    /* renamed from: d */
    private long f24021d = 0;

    /* renamed from: e */
    private long f24022e;

    /* renamed from: f */
    private long f24023f;

    /* renamed from: g */
    private long f24024g;

    /* renamed from: h */
    private long f24025h;

    public hq3(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.f24018a = j;
        this.f24019b = j2;
        this.f24022e = j4;
        this.f24023f = j5;
        this.f24024g = j6;
        this.f24020c = j7;
        this.f24025h = m14565a(j2, 0L, j4, j5, j6, j7);
    }

    /* renamed from: a */
    public static long m14565a(long j, long j2, long j3, long j4, long j5, long j6) {
        if (j4 + 1 >= j5 || 1 + j2 >= j3) {
            return j4;
        }
        long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
        return C7101wa.m9694d0(((j4 + j7) - j6) - (j7 / 20), j4, (-1) + j5);
    }

    /* renamed from: f */
    public static /* synthetic */ void m14560f(hq3 hq3Var, long j, long j2) {
        hq3Var.f24021d = j;
        hq3Var.f24023f = j2;
        hq3Var.m14557i();
    }

    /* renamed from: g */
    public static /* synthetic */ void m14559g(hq3 hq3Var, long j, long j2) {
        hq3Var.f24022e = j;
        hq3Var.f24024g = j2;
        hq3Var.m14557i();
    }

    /* renamed from: i */
    private final void m14557i() {
        this.f24025h = m14565a(this.f24019b, this.f24021d, this.f24022e, this.f24023f, this.f24024g, this.f24020c);
    }
}
