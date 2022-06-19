package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qv3.class */
public abstract class qv3 {

    /* renamed from: b */
    private yr3 f28644b;

    /* renamed from: c */
    private xq3 f28645c;

    /* renamed from: d */
    private lv3 f28646d;

    /* renamed from: e */
    private long f28647e;

    /* renamed from: f */
    private long f28648f;

    /* renamed from: g */
    private long f28649g;

    /* renamed from: h */
    private int f28650h;

    /* renamed from: i */
    private int f28651i;

    /* renamed from: k */
    private long f28653k;

    /* renamed from: l */
    private boolean f28654l;

    /* renamed from: m */
    private boolean f28655m;

    /* renamed from: a */
    private final jv3 f28643a = new jv3();

    /* renamed from: j */
    private ov3 f28652j = new ov3();

    /* renamed from: a */
    public void mo10897a(boolean z) {
        int i;
        if (z) {
            this.f28652j = new ov3();
            this.f28648f = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.f28650h = i;
        this.f28647e = -1L;
        this.f28649g = 0L;
    }

    /* renamed from: b */
    protected abstract long mo10896b(C6694la c6694la);

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    /* renamed from: c */
    protected abstract boolean mo10895c(C6694la c6694la, long j, ov3 ov3Var);

    /* renamed from: d */
    public final void m11789d(xq3 xq3Var, yr3 yr3Var) {
        this.f28645c = xq3Var;
        this.f28644b = yr3Var;
        mo10897a(true);
    }

    /* renamed from: e */
    public final void m11788e(long j, long j2) {
        this.f28643a.m14032a();
        if (j == 0) {
            mo10897a(!this.f28654l);
        } else if (this.f28650h == 0) {
        } else {
            long m11785h = m11785h(j2);
            this.f28647e = m11785h;
            lv3 lv3Var = this.f28646d;
            int i = C7101wa.f31475a;
            lv3Var.mo12121b(m11785h);
            this.f28650h = 2;
        }
    }

    /* renamed from: f */
    public final int m11787f(vq3 vq3Var, rr3 rr3Var) {
        C7173y8.m8894e(this.f28644b);
        int i = C7101wa.f31475a;
        int i2 = this.f28650h;
        int i3 = -1;
        if (i2 == 0) {
            while (true) {
                if (!this.f28643a.m14031b(vq3Var)) {
                    this.f28650h = 3;
                    break;
                }
                this.f28653k = vq3Var.mo9465m() - this.f28648f;
                if (mo10895c(this.f28643a.m14029d(), this.f28648f, this.f28652j)) {
                    this.f28648f = vq3Var.mo9465m();
                } else {
                    C7021u4 c7021u4 = this.f28652j.f27753a;
                    this.f28651i = c7021u4.f30493B;
                    if (!this.f28655m) {
                        this.f28644b.mo8704d(c7021u4);
                        this.f28655m = true;
                    }
                    lv3 lv3Var = this.f28652j.f27754b;
                    if (lv3Var != null) {
                        this.f28646d = lv3Var;
                    } else if (vq3Var.mo9464n() == -1) {
                        this.f28646d = new pv3(null);
                    } else {
                        kv3 m14030c = this.f28643a.m14030c();
                        this.f28646d = new ev3(this, this.f28648f, vq3Var.mo9464n(), m14030c.f25431d + m14030c.f25432e, m14030c.f25429b, (m14030c.f25428a & 4) != 0);
                    }
                    this.f28650h = 2;
                    this.f28643a.m14028e();
                    i3 = 0;
                }
            }
            return i3;
        } else if (i2 == 1) {
            ((pq3) vq3Var).m12196p((int) this.f28648f, false);
            this.f28650h = 2;
            return 0;
        } else if (i2 != 2) {
            return -1;
        } else {
            long mo12122a = this.f28646d.mo12122a(vq3Var);
            if (mo12122a >= 0) {
                rr3Var.f29206a = mo12122a;
                i3 = 1;
            } else {
                if (mo12122a < -1) {
                    mo10894i(-(mo12122a + 2));
                }
                if (!this.f28654l) {
                    ur3 zzg = this.f28646d.zzg();
                    C7173y8.m8894e(zzg);
                    this.f28645c.mo8689r(zzg);
                    this.f28654l = true;
                }
                if (this.f28653k > 0 || this.f28643a.m14031b(vq3Var)) {
                    this.f28653k = 0L;
                    C6694la m14029d = this.f28643a.m14029d();
                    long mo10896b = mo10896b(m14029d);
                    if (mo10896b >= 0) {
                        long j = this.f28649g;
                        if (j + mo10896b >= this.f28647e) {
                            long m11786g = m11786g(j);
                            wr3.m9478b(this.f28644b, m14029d, m14029d.m13638m());
                            this.f28644b.mo8705c(m11786g, 1, m14029d.m13638m(), 0, null);
                            this.f28647e = -1L;
                        }
                    }
                    this.f28649g += mo10896b;
                    i3 = 0;
                } else {
                    this.f28650h = 3;
                }
            }
            return i3;
        }
    }

    /* renamed from: g */
    public final long m11786g(long j) {
        return (j * 1000000) / this.f28651i;
    }

    /* renamed from: h */
    public final long m11785h(long j) {
        return (this.f28651i * j) / 1000000;
    }

    /* renamed from: i */
    public void mo10894i(long j) {
        this.f28649g = j;
    }
}
