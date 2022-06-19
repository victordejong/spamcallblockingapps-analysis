package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.cb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cb.class */
public abstract class AbstractC6360cb implements AbstractC7028ub, AbstractC7065vb {

    /* renamed from: a */
    private final int f21137a;

    /* renamed from: b */
    private C7102wb f21138b;

    /* renamed from: c */
    private int f21139c;

    /* renamed from: d */
    private int f21140d;

    /* renamed from: e */
    private AbstractC6996tg f21141e;

    /* renamed from: f */
    private long f21142f;

    /* renamed from: g */
    private boolean f21143g = true;

    /* renamed from: h */
    private boolean f21144h;

    public AbstractC6360cb(int i) {
        this.f21137a = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: C */
    public final void mo10370C(int i) {
        this.f21139c = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: D */
    public final void mo10369D(long j) {
        this.f21144h = false;
        this.f21143g = false;
        mo8358s(j, false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: E */
    public final void mo10368E(C7102wb c7102wb, zzanm[] zzanmVarArr, AbstractC6996tg abstractC6996tg, long j, boolean z, long j2) {
        C6367ci.m16039d(this.f21140d == 0);
        this.f21138b = c7102wb;
        this.f21140d = 1;
        mo8360q(z);
        mo10367F(zzanmVarArr, abstractC6996tg, j2);
        mo8358s(j, z);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: F */
    public final void mo10367F(zzanm[] zzanmVarArr, AbstractC6996tg abstractC6996tg, long j) {
        C6367ci.m16039d(!this.f21144h);
        this.f21141e = abstractC6996tg;
        this.f21143g = false;
        this.f21142f = j;
        mo8359r(zzanmVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: a */
    public final int mo10365a() {
        return this.f21140d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: b */
    public final AbstractC7065vb mo10364b() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: e */
    public AbstractC6516gi mo9287e() {
        return null;
    }

    /* renamed from: f */
    public final int m16093f(C6954sb c6954sb, C6548hd c6548hd, boolean z) {
        int mo10709d = this.f21141e.mo10709d(c6954sb, c6548hd, z);
        if (mo10709d == -4) {
            if (c6548hd.m16085c()) {
                this.f21143g = true;
                return this.f21144h ? -4 : -3;
            }
            c6548hd.f23854d += this.f21142f;
        } else if (mo10709d == -5) {
            zzanm zzanmVar = c6954sb.f29434a;
            long j = zzanmVar.f33572z;
            if (j != Long.MAX_VALUE) {
                c6954sb.f29434a = new zzanm(zzanmVar.f33550d, zzanmVar.f33554h, zzanmVar.f33555i, zzanmVar.f33552f, zzanmVar.f33551e, zzanmVar.f33556j, zzanmVar.f33559m, zzanmVar.f33560n, zzanmVar.f33561o, zzanmVar.f33562p, zzanmVar.f33563q, zzanmVar.f33565s, zzanmVar.f33564r, zzanmVar.f33566t, zzanmVar.f33567u, zzanmVar.f33568v, zzanmVar.f33569w, zzanmVar.f33570x, zzanmVar.f33571y, zzanmVar.f33546A, zzanmVar.f33547B, zzanmVar.f33548C, j + this.f21142f, zzanmVar.f33557k, zzanmVar.f33558l, zzanmVar.f33553g);
                return -5;
            }
        }
        return mo10709d;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: g */
    public final boolean mo10363g() {
        return this.f21143g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: h */
    public final void mo10362h() {
        this.f21144h = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: i */
    public final boolean mo10361i() {
        return this.f21144h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: j */
    public final void mo10360j() {
        this.f21141e.mo10710c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: l */
    public final void mo10359l() {
        boolean z = true;
        if (this.f21140d != 1) {
            z = false;
        }
        C6367ci.m16039d(z);
        this.f21140d = 0;
        this.f21141e = null;
        this.f21144h = false;
        mo8355v();
    }

    /* renamed from: m */
    public final void m16092m(long j) {
        this.f21141e.mo10712a(j - this.f21142f);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    /* renamed from: n */
    public final void mo10358n() {
        C6367ci.m16039d(this.f21140d == 2);
        this.f21140d = 1;
        mo8356u();
    }

    /* renamed from: p */
    public final boolean m16091p() {
        return this.f21143g ? this.f21144h : this.f21141e.mo10711b();
    }

    /* renamed from: q */
    protected abstract void mo8360q(boolean z);

    /* renamed from: r */
    protected void mo8359r(zzanm[] zzanmVarArr, long j) {
    }

    /* renamed from: s */
    protected abstract void mo8358s(long j, boolean z);

    /* renamed from: t */
    protected abstract void mo8357t();

    /* renamed from: u */
    protected abstract void mo8356u();

    /* renamed from: v */
    protected abstract void mo8355v();

    /* renamed from: w */
    public final C7102wb m16090w() {
        return this.f21138b;
    }

    /* renamed from: x */
    public final int m16089x() {
        return this.f21139c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub, com.google.android.gms.internal.ads.AbstractC7065vb
    public final int zza() {
        return this.f21137a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    public final void zzg() {
        boolean z = true;
        if (this.f21140d != 1) {
            z = false;
        }
        C6367ci.m16039d(z);
        this.f21140d = 2;
        mo8357t();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7028ub
    public final AbstractC6996tg zzi() {
        return this.f21141e;
    }
}
