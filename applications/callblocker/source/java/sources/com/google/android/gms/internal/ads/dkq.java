package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkq.class */
public abstract class dkq implements dli, dll {

    /* renamed from: a */
    private final int f14528a;

    /* renamed from: b */
    private dlk f14529b;

    /* renamed from: c */
    private int f14530c;

    /* renamed from: d */
    private int f14531d;

    /* renamed from: e */
    private dqo f14532e;

    /* renamed from: f */
    private long f14533f;

    /* renamed from: g */
    private boolean f14534g = true;

    /* renamed from: h */
    private boolean f14535h;

    public dkq(int i) {
        this.f14528a = i;
    }

    @Override // com.google.android.gms.internal.ads.dli, com.google.android.gms.internal.ads.dll
    /* renamed from: a */
    public final int mo9202a() {
        return this.f14528a;
    }

    /* renamed from: a */
    public final int m9310a(dlg dlgVar, dmx dmxVar, boolean z) {
        int mo8848a = this.f14532e.mo8848a(dlgVar, dmxVar, z);
        if (mo8848a == -4) {
            if (dmxVar.m9107c()) {
                this.f14534g = true;
                mo8848a = this.f14535h ? -4 : -3;
            } else {
                dmxVar.f14881c += this.f14533f;
            }
        } else if (mo8848a == -5) {
            dlf dlfVar = dlgVar.f14659a;
            if (dlfVar.f14647o != Long.MAX_VALUE) {
                dlgVar.f14659a = dlfVar.m9235a(dlfVar.f14647o + this.f14533f);
            }
        }
        return mo8848a;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: a */
    public final void mo9217a(int i) {
        this.f14530c = i;
    }

    @Override // com.google.android.gms.internal.ads.dkv
    /* renamed from: a */
    public void mo8678a(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: a */
    public final void mo9216a(long j) {
        this.f14535h = false;
        this.f14534g = false;
        mo8676a(j, false);
    }

    /* renamed from: a */
    protected void mo8676a(long j, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: a */
    public final void mo9215a(dlk dlkVar, dlf[] dlfVarArr, dqo dqoVar, long j, boolean z, long j2) {
        drz.m8770b(this.f14531d == 0);
        this.f14529b = dlkVar;
        this.f14531d = 1;
        mo8665a(z);
        mo9214a(dlfVarArr, dqoVar, j2);
        mo8676a(j, z);
    }

    /* renamed from: a */
    protected void mo8665a(boolean z) {
    }

    /* renamed from: a */
    public void mo8663a(dlf[] dlfVarArr, long j) {
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: a */
    public final void mo9214a(dlf[] dlfVarArr, dqo dqoVar, long j) {
        drz.m8770b(!this.f14535h);
        this.f14532e = dqoVar;
        this.f14534g = false;
        this.f14533f = j;
        mo8663a(dlfVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: b */
    public final dll mo9213b() {
        return this;
    }

    /* renamed from: b */
    public final void m9309b(long j) {
        this.f14532e.mo8849a(j - this.f14533f);
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: c */
    public dsd mo9129c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: d */
    public final int mo9212d() {
        return this.f14531d;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: e */
    public final void mo9211e() {
        boolean z = true;
        if (this.f14531d != 1) {
            z = false;
        }
        drz.m8770b(z);
        this.f14531d = 2;
        mo8656n();
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: f */
    public final dqo mo9210f() {
        return this.f14532e;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: g */
    public final boolean mo9209g() {
        return this.f14534g;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: h */
    public final void mo9208h() {
        this.f14535h = true;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: i */
    public final boolean mo9207i() {
        return this.f14535h;
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: j */
    public final void mo9206j() {
        this.f14532e.mo8847b();
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: k */
    public final void mo9205k() {
        drz.m8770b(this.f14531d == 2);
        this.f14531d = 1;
        mo8655o();
    }

    @Override // com.google.android.gms.internal.ads.dli
    /* renamed from: l */
    public final void mo9204l() {
        boolean z = true;
        if (this.f14531d != 1) {
            z = false;
        }
        drz.m8770b(z);
        this.f14531d = 0;
        this.f14532e = null;
        this.f14535h = false;
        mo8654p();
    }

    @Override // com.google.android.gms.internal.ads.dll
    /* renamed from: m */
    public int mo8963m() {
        return 0;
    }

    /* renamed from: n */
    protected void mo8656n() {
    }

    /* renamed from: o */
    protected void mo8655o() {
    }

    /* renamed from: p */
    protected void mo8654p() {
    }

    /* renamed from: q */
    public final dlk m9308q() {
        return this.f14529b;
    }

    /* renamed from: r */
    public final int m9307r() {
        return this.f14530c;
    }

    /* renamed from: s */
    public final boolean m9306s() {
        return this.f14534g ? this.f14535h : this.f14532e.mo8850a();
    }
}
