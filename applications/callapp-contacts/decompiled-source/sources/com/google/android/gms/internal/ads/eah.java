package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eah.class */
public final class eah implements dxx, eas, ebd, eck<eak> {
    private final Handler A;
    private final ebz B;
    private boolean D;
    private int E;
    private int H;

    /* renamed from: a  reason: collision with root package name */
    final eao f27516a;

    /* renamed from: b  reason: collision with root package name */
    final eat f27517b;

    /* renamed from: d  reason: collision with root package name */
    final long f27519d;
    final ean f;
    ear k;
    dya l;
    boolean m;
    boolean n;
    boolean o;
    ebi p;
    long q;
    boolean[] r;
    boolean[] s;
    boolean t;
    long u;
    boolean v;
    boolean w;
    private final Uri x;
    private final ecb y;
    private final int z;

    /* renamed from: c  reason: collision with root package name */
    final String f27518c = null;
    final ecm e = new ecm("Loader:ExtractorMediaPeriod");
    final ect g = new ect();
    private final Runnable C = new eag(this);
    final Runnable h = new eaj(this);
    final Handler i = new Handler();
    private long G = -9223372036854775807L;
    final SparseArray<ebb> j = new SparseArray<>();
    private long F = -1;

    public eah(Uri uri, ecb ecbVar, dxv[] dxvVarArr, int i, Handler handler, eao eaoVar, eat eatVar, ebz ebzVar, String str, int i2) {
        this.x = uri;
        this.y = ecbVar;
        this.z = i;
        this.A = handler;
        this.f27516a = eaoVar;
        this.f27517b = eatVar;
        this.B = ebzVar;
        this.f27519d = i2;
        this.f = new ean(dxvVarArr, this);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    private final void a2(eak eakVar) {
        if (this.F == -1) {
            this.F = eakVar.f27523a;
        }
    }

    private final void h() {
        dya dyaVar;
        eak eakVar = new eak(this, this.x, this.y, this.f, this.g);
        if (this.n) {
            ecr.b(g());
            long j = this.q;
            if (j == -9223372036854775807L || this.G < j) {
                eakVar.a(this.l.a(this.G), this.G);
                this.G = -9223372036854775807L;
            } else {
                this.v = true;
                this.G = -9223372036854775807L;
                return;
            }
        }
        this.H = i();
        int i = this.z;
        int i2 = i;
        if (i == -1) {
            i2 = (this.n && this.F == -1 && ((dyaVar = this.l) == null || dyaVar.b() == -9223372036854775807L)) ? 6 : 3;
        }
        this.e.a(eakVar, this, i2);
    }

    private final int i() {
        int size = this.j.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.j.valueAt(i2).f27566c.c();
        }
        return i;
    }

    private final long j() {
        int size = this.j.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.j.valueAt(i).f27566c.f());
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    public final long K_() {
        if (this.E == 0) {
            return Long.MIN_VALUE;
        }
        return e();
    }

    @Override // com.google.android.gms.internal.ads.eck
    public final /* synthetic */ int a(eak eakVar, IOException iOException) {
        dya dyaVar;
        eak eakVar2 = eakVar;
        a2(eakVar2);
        Handler handler = this.A;
        if (!(handler == null || this.f27516a == null)) {
            handler.post(new eal(this, iOException));
        }
        if (iOException instanceof zznt) {
            return 3;
        }
        boolean z = i() > this.H;
        if (this.F == -1 && ((dyaVar = this.l) == null || dyaVar.b() == -9223372036854775807L)) {
            this.u = 0L;
            this.o = this.n;
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                this.j.valueAt(i).a(!this.n || this.r[i]);
            }
            eakVar2.a(0L, 0L);
        }
        this.H = i();
        return z ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x017e, code lost:
        if (r0 != false) goto L_0x018f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018c, code lost:
        if (r12 != 0) goto L_0x018f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x018f, code lost:
        r19 = b(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a3, code lost:
        if (r15 >= r10.length) goto L_0x01b9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01aa, code lost:
        if (r10[r15] == null) goto L_0x01b3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ad, code lost:
        r11[r15] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b3, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    @Override // com.google.android.gms.internal.ads.eas
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.ebu[] r8, boolean[] r9, com.google.android.gms.internal.ads.ebc[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eah.a(com.google.android.gms.internal.ads.ebu[], boolean[], com.google.android.gms.internal.ads.ebc[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.dxx
    public final dyc a(int i) {
        ebb ebbVar = this.j.get(i);
        ebb ebbVar2 = ebbVar;
        if (ebbVar == null) {
            ebbVar2 = new ebb(this.B);
            ebbVar2.h = this;
            this.j.put(i, ebbVar2);
        }
        return ebbVar2;
    }

    @Override // com.google.android.gms.internal.ads.dxx
    public final void a() {
        this.m = true;
        this.i.post(this.C);
    }

    @Override // com.google.android.gms.internal.ads.dxx
    public final void a(dya dyaVar) {
        this.l = dyaVar;
        this.i.post(this.C);
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final void a(ear earVar, long j) {
        this.k = earVar;
        this.g.a();
        h();
    }

    @Override // com.google.android.gms.internal.ads.eck
    public final /* synthetic */ void a(eak eakVar) {
        a2(eakVar);
        this.v = true;
        if (this.q == -9223372036854775807L) {
            long j = j();
            long j2 = j == Long.MIN_VALUE ? 0L : j + 10000;
            this.q = j2;
            this.f27517b.a(new ebh(j2, this.l.a()), null);
        }
        this.k.a((ear) this);
    }

    @Override // com.google.android.gms.internal.ads.eck
    public final /* synthetic */ void a(eak eakVar, boolean z) {
        a2(eakVar);
        if (!z && this.E > 0) {
            int size = this.j.size();
            for (int i = 0; i < size; i++) {
                this.j.valueAt(i).a(this.r[i]);
            }
            this.k.a((ear) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    public final boolean a(long j) {
        if (this.v) {
            return false;
        }
        if (this.n && this.E == 0) {
            return false;
        }
        boolean a2 = this.g.a();
        if (!this.e.a()) {
            h();
            a2 = true;
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final long b(long j) {
        if (!this.l.a()) {
            j = 0;
        }
        this.u = j;
        int size = this.j.size();
        boolean z = !g();
        for (int i = 0; z && i < size; i++) {
            if (this.r[i]) {
                z = this.j.valueAt(i).a(j, false);
            }
        }
        if (!z) {
            this.G = j;
            this.v = false;
            if (this.e.a()) {
                this.e.b();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.j.valueAt(i2).a(this.r[i2]);
                }
            }
        }
        this.o = false;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final void b() throws IOException {
        this.e.c();
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final ebi c() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.eas
    public final long d() {
        if (!this.o) {
            return -9223372036854775807L;
        }
        this.o = false;
        return this.u;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.gms.internal.ads.eas
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long e() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.v
            if (r0 == 0) goto L_0x000b
            r0 = -9223372036854775808
            return r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.g()
            if (r0 == 0) goto L_0x0017
            r0 = r5
            long r0 = r0.G
            return r0
        L_0x0017:
            r0 = r5
            boolean r0 = r0.t
            if (r0 == 0) goto L_0x0064
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = r0
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.ebb> r0 = r0.j
            int r0 = r0.size()
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x002d:
            r0 = r6
            r10 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x006a
            r0 = r6
            r10 = r0
            r0 = r5
            boolean[] r0 = r0.s
            r1 = r9
            r0 = r0[r1]
            if (r0 == 0) goto L_0x005b
            r0 = r6
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.ebb> r1 = r1.j
            r2 = r9
            java.lang.Object r1 = r1.valueAt(r2)
            com.google.android.gms.internal.ads.ebb r1 = (com.google.android.gms.internal.ads.ebb) r1
            com.google.android.gms.internal.ads.eaz r1 = r1.f27566c
            long r1 = r1.f()
            long r0 = java.lang.Math.min(r0, r1)
            r10 = r0
        L_0x005b:
            int r9 = r9 + 1
            r0 = r10
            r6 = r0
            goto L_0x002d
        L_0x0064:
            r0 = r5
            long r0 = r0.j()
            r10 = r0
        L_0x006a:
            r0 = r10
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0078
            r0 = r5
            long r0 = r0.u
            return r0
        L_0x0078:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eah.e():long");
    }

    @Override // com.google.android.gms.internal.ads.ebd
    public final void f() {
        this.i.post(this.C);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return this.G != -9223372036854775807L;
    }
}
