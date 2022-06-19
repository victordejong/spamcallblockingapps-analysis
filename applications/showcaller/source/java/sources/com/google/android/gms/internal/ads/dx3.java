package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dx3.class */
final class dx3 {

    /* renamed from: a */
    private final gw3 f21916a;

    /* renamed from: b */
    private final C6990ta f21917b;

    /* renamed from: c */
    private final C6657ka f21918c = new C6657ka(new byte[64], 64);

    /* renamed from: d */
    private boolean f21919d;

    /* renamed from: e */
    private boolean f21920e;

    /* renamed from: f */
    private boolean f21921f;

    public dx3(gw3 gw3Var, C6990ta c6990ta) {
        this.f21916a = gw3Var;
        this.f21917b = c6990ta;
    }

    /* renamed from: a */
    public final void m15654a() {
        this.f21921f = false;
        this.f21916a.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* renamed from: b */
    public final void m15653b(C6694la c6694la) {
        ?? r13;
        c6694la.m13630u(this.f21918c.f25088a, 0, 3);
        this.f21918c.m13951d(0);
        this.f21918c.m13949f(8);
        this.f21919d = this.f21918c.m13948g();
        this.f21920e = this.f21918c.m13948g();
        this.f21918c.m13949f(6);
        c6694la.m13630u(this.f21918c.f25088a, 0, this.f21918c.m13947h(8));
        this.f21918c.m13951d(0);
        if (this.f21919d) {
            this.f21918c.m13949f(4);
            int m13947h = this.f21918c.m13947h(3);
            this.f21918c.m13949f(1);
            int m13947h2 = this.f21918c.m13947h(15);
            this.f21918c.m13949f(1);
            long j = m13947h;
            long j2 = m13947h2 << 15;
            long m13947h3 = this.f21918c.m13947h(15);
            this.f21918c.m13949f(1);
            if (!this.f21921f && this.f21920e) {
                this.f21918c.m13949f(4);
                int m13947h4 = this.f21918c.m13947h(3);
                this.f21918c.m13949f(1);
                int m13947h5 = this.f21918c.m13947h(15);
                this.f21918c.m13949f(1);
                int m13947h6 = this.f21918c.m13947h(15);
                this.f21918c.m13949f(1);
                this.f21917b.m10756e((m13947h5 << 15) | (m13947h4 << 30) | m13947h6);
                this.f21921f = true;
            }
            r13 = this.f21917b.m10756e((j << 30) | j2 | m13947h3);
        } else {
            r13 = false;
        }
        this.f21916a.mo8679c(r13 == true ? 1L : 0L, 4);
        this.f21916a.mo8678d(c6694la);
        this.f21916a.mo8681a();
    }
}
