package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lq3.class */
public class lq3 {

    /* renamed from: a */
    protected final fq3 f26229a;

    /* renamed from: b */
    protected final kq3 f26230b;

    /* renamed from: c */
    protected hq3 f26231c;

    /* renamed from: d */
    private final int f26232d;

    public lq3(iq3 iq3Var, kq3 kq3Var, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f26230b = kq3Var;
        this.f26232d = i;
        this.f26229a = new fq3(iq3Var, j, 0L, j3, j4, j5, j6);
    }

    /* renamed from: f */
    protected static final int m13424f(vq3 vq3Var, long j, rr3 rr3Var) {
        if (j == vq3Var.mo9465m()) {
            return 0;
        }
        rr3Var.f29206a = j;
        return 1;
    }

    /* renamed from: g */
    protected static final boolean m13423g(vq3 vq3Var, long j) {
        long mo9465m = j - vq3Var.mo9465m();
        if (mo9465m < 0 || mo9465m > 262144) {
            return false;
        }
        ((pq3) vq3Var).m12196p((int) mo9465m, false);
        return true;
    }

    /* renamed from: a */
    public final ur3 m13429a() {
        return this.f26229a;
    }

    /* renamed from: b */
    public final void m13428b(long j) {
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        hq3 hq3Var = this.f26231c;
        if (hq3Var != null) {
            j6 = hq3Var.f24018a;
            if (j6 == j) {
                return;
            }
        }
        long m15109i = this.f26229a.m15109i(j);
        j2 = this.f26229a.f23024c;
        j3 = this.f26229a.f23025d;
        j4 = this.f26229a.f23026e;
        j5 = this.f26229a.f23027f;
        this.f26231c = new hq3(j, m15109i, 0L, j2, j3, j4, j5);
    }

    /* renamed from: c */
    public final boolean m13427c() {
        return this.f26231c != null;
    }

    /* renamed from: d */
    public final int m13426d(vq3 vq3Var, rr3 rr3Var) {
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        while (true) {
            hq3 hq3Var = this.f26231c;
            C7173y8.m8894e(hq3Var);
            j = hq3Var.f24023f;
            j2 = hq3Var.f24024g;
            j3 = hq3Var.f24025h;
            if (j2 - j <= this.f26232d) {
                m13425e(false, j);
                return m13424f(vq3Var, j, rr3Var);
            } else if (!m13423g(vq3Var, j3)) {
                return m13424f(vq3Var, j3, rr3Var);
            } else {
                vq3Var.mo9884i();
                kq3 kq3Var = this.f26230b;
                j4 = hq3Var.f24019b;
                jq3 mo8153a = kq3Var.mo8153a(vq3Var, j4);
                i = mo8153a.f24956b;
                if (i == -3) {
                    m13425e(false, j3);
                    return m13424f(vq3Var, j3, rr3Var);
                } else if (i == -2) {
                    j10 = mo8153a.f24957c;
                    j11 = mo8153a.f24958d;
                    hq3.m14560f(hq3Var, j10, j11);
                } else if (i != -1) {
                    j5 = mo8153a.f24958d;
                    m13423g(vq3Var, j5);
                    j6 = mo8153a.f24958d;
                    m13425e(true, j6);
                    j7 = mo8153a.f24958d;
                    return m13424f(vq3Var, j7, rr3Var);
                } else {
                    j8 = mo8153a.f24957c;
                    j9 = mo8153a.f24958d;
                    hq3.m14559g(hq3Var, j8, j9);
                }
            }
        }
    }

    /* renamed from: e */
    protected final void m13425e(boolean z, long j) {
        this.f26231c = null;
        this.f26230b.mo8152b();
    }
}
