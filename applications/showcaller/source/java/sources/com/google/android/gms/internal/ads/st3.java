package com.google.android.gms.internal.ads;

import java.io.EOFException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/st3.class */
public final class st3 implements uq3 {

    /* renamed from: a */
    public static final br3 f29659a = qt3.f28629b;

    /* renamed from: b */
    private static final AbstractC6580i8 f29660b = rt3.f29222a;

    /* renamed from: c */
    private final C6694la f29661c;

    /* renamed from: d */
    private final or3 f29662d;

    /* renamed from: e */
    private final kr3 f29663e;

    /* renamed from: f */
    private final mr3 f29664f;

    /* renamed from: g */
    private final yr3 f29665g;

    /* renamed from: h */
    private xq3 f29666h;

    /* renamed from: i */
    private yr3 f29667i;

    /* renamed from: j */
    private yr3 f29668j;

    /* renamed from: k */
    private int f29669k;

    /* renamed from: l */
    private zzaiv f29670l;

    /* renamed from: m */
    private long f29671m;

    /* renamed from: n */
    private long f29672n;

    /* renamed from: o */
    private long f29673o;

    /* renamed from: p */
    private int f29674p;

    /* renamed from: q */
    private ut3 f29675q;

    /* renamed from: r */
    private boolean f29676r;

    public st3() {
        this(0);
    }

    public st3(int i) {
        this.f29661c = new C6694la(10);
        this.f29662d = new or3();
        this.f29663e = new kr3();
        this.f29671m = -9223372036854775807L;
        this.f29664f = new mr3();
        tq3 tq3Var = new tq3();
        this.f29665g = tq3Var;
        this.f29668j = tq3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x028f  */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m10912b(com.google.android.gms.internal.ads.vq3 r9) {
        /*
            Method dump skipped, instructions count: 1167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.st3.m10912b(com.google.android.gms.internal.ads.vq3):int");
    }

    /* renamed from: c */
    private final long m10911c(long j) {
        return this.f29671m + ((j * 1000000) / this.f29662d.f27699d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0122, code lost:
        if (r7 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0125, code lost:
        ((com.google.android.gms.internal.ads.pq3) r6).m12196p(r10 + r13, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0136, code lost:
        r6.mo9884i();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x013c, code lost:
        r5.f29669k = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0143, code lost:
        return true;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m10910d(com.google.android.gms.internal.ads.vq3 r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.st3.m10910d(com.google.android.gms.internal.ads.vq3, boolean):boolean");
    }

    /* renamed from: i */
    private final boolean m10909i(vq3 vq3Var) {
        ut3 ut3Var = this.f29675q;
        if (ut3Var != null) {
            long mo9459c = ut3Var.mo9459c();
            if (mo9459c != -1 && vq3Var.mo9466j() > mo9459c - 4) {
                return true;
            }
        }
        try {
            return !vq3Var.mo9882l(this.f29661c.m13634q(), 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: j */
    private final ut3 m10908j(vq3 vq3Var, boolean z) {
        ((pq3) vq3Var).mo9882l(this.f29661c.m13634q(), 0, 4, false);
        this.f29661c.m13635p(0);
        this.f29662d.m12540a(this.f29661c.m13655D());
        return new nt3(vq3Var.mo9464n(), vq3Var.mo9465m(), this.f29662d, false);
    }

    /* renamed from: k */
    private static boolean m10907k(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: a */
    public final void m10913a() {
        this.f29676r = true;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        C7173y8.m8894e(this.f29667i);
        int i = C7101wa.f31475a;
        int m10912b = m10912b(vq3Var);
        if (m10912b == -1 && (this.f29675q instanceof ot3)) {
            if (this.f29675q.zzg() != m10911c(this.f29672n)) {
                ot3 ot3Var = (ot3) this.f29675q;
                throw null;
            }
        }
        return m10912b;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        return m10910d(vq3Var, true);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f29666h = xq3Var;
        yr3 mo8690o = xq3Var.mo8690o(0, 1);
        this.f29667i = mo8690o;
        this.f29668j = mo8690o;
        this.f29666h.mo8688t();
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f29669k = 0;
        this.f29671m = -9223372036854775807L;
        this.f29672n = 0L;
        this.f29674p = 0;
        ut3 ut3Var = this.f29675q;
        if (!(ut3Var instanceof ot3)) {
            return;
        }
        ot3 ot3Var = (ot3) ut3Var;
        throw null;
    }
}
