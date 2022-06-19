package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ps3.class */
public final class ps3 implements uq3 {

    /* renamed from: a */
    public static final br3 f28117a = os3.f27705b;

    /* renamed from: g */
    private xq3 f28123g;

    /* renamed from: i */
    private boolean f28125i;

    /* renamed from: j */
    private long f28126j;

    /* renamed from: k */
    private int f28127k;

    /* renamed from: l */
    private int f28128l;

    /* renamed from: m */
    private int f28129m;

    /* renamed from: n */
    private long f28130n;

    /* renamed from: o */
    private boolean f28131o;

    /* renamed from: p */
    private ns3 f28132p;

    /* renamed from: q */
    private ss3 f28133q;

    /* renamed from: b */
    private final C6694la f28118b = new C6694la(4);

    /* renamed from: c */
    private final C6694la f28119c = new C6694la(9);

    /* renamed from: d */
    private final C6694la f28120d = new C6694la(11);

    /* renamed from: e */
    private final C6694la f28121e = new C6694la();

    /* renamed from: f */
    private final qs3 f28122f = new qs3();

    /* renamed from: h */
    private int f28124h = 1;

    /* renamed from: a */
    private final C6694la m12155a(vq3 vq3Var) {
        if (this.f28129m > this.f28121e.m13633r()) {
            C6694la c6694la = this.f28121e;
            int m13633r = c6694la.m13633r();
            c6694la.m13641j(new byte[Math.max(m13633r + m13633r, this.f28129m)], 0);
        } else {
            this.f28121e.m13635p(0);
        }
        this.f28121e.m13637n(this.f28129m);
        ((pq3) vq3Var).mo9883k(this.f28121e.m13634q(), 0, this.f28129m, false);
        return this.f28121e;
    }

    @RequiresNonNull({"extractorOutput"})
    /* renamed from: b */
    private final void m12154b() {
        if (!this.f28131o) {
            this.f28123g.mo8689r(new tr3(-9223372036854775807L, 0L));
            this.f28131o = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0008 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo9044e(com.google.android.gms.internal.ads.vq3 r9, com.google.android.gms.internal.ads.rr3 r10) {
        /*
            Method dump skipped, instructions count: 647
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ps3.mo9044e(com.google.android.gms.internal.ads.vq3, com.google.android.gms.internal.ads.rr3):int");
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        pq3 pq3Var = (pq3) vq3Var;
        pq3Var.mo9882l(this.f28118b.m13634q(), 0, 3, false);
        this.f28118b.m13635p(0);
        if (this.f28118b.m13625z() != 4607062) {
            return false;
        }
        pq3Var.mo9882l(this.f28118b.m13634q(), 0, 2, false);
        this.f28118b.m13635p(0);
        if ((this.f28118b.m13628w() & 250) != 0) {
            return false;
        }
        pq3Var.mo9882l(this.f28118b.m13634q(), 0, 4, false);
        this.f28118b.m13635p(0);
        int m13655D = this.f28118b.m13655D();
        vq3Var.mo9884i();
        pq3 pq3Var2 = (pq3) vq3Var;
        pq3Var2.m12195q(m13655D, false);
        pq3Var2.mo9882l(this.f28118b.m13634q(), 0, 4, false);
        this.f28118b.m13635p(0);
        return this.f28118b.m13655D() == 0;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f28123g = xq3Var;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        if (j == 0) {
            this.f28124h = 1;
            this.f28125i = false;
        } else {
            this.f28124h = 3;
        }
        this.f28127k = 0;
    }
}
