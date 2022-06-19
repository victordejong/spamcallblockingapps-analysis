package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sj3.class */
public final class sj3 implements lk3, kk3 {

    /* renamed from: d */
    public final lk3 f29547d;

    /* renamed from: e */
    private kk3 f29548e;

    /* renamed from: f */
    private bj3[] f29549f = new bj3[0];

    /* renamed from: g */
    private long f29550g = 0;

    /* renamed from: h */
    long f29551h;

    public sj3(lk3 lk3Var, boolean z, long j, long j2) {
        this.f29547d = lk3Var;
        this.f29551h = j2;
    }

    /* renamed from: a */
    public final void m11003a(long j, long j2) {
        this.f29551h = j2;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: b */
    public final void mo8804b(long j) {
        this.f29547d.mo8804b(j);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: c */
    public final void mo8803c() {
        this.f29547d.mo8803c();
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: d */
    public final boolean mo8802d(long j) {
        return this.f29547d.mo8802d(j);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: e */
    public final dv3 mo8801e() {
        return this.f29547d.mo8801e();
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: f */
    public final long mo8800f() {
        long mo8800f = this.f29547d.mo8800f();
        if (mo8800f != Long.MIN_VALUE) {
            long j = this.f29551h;
            if (j != Long.MIN_VALUE && mo8800f >= j) {
                return Long.MIN_VALUE;
            }
            return mo8800f;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.kk3
    /* renamed from: g */
    public final void mo8799g(lk3 lk3Var) {
        kk3 kk3Var = this.f29548e;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8799g(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: h */
    public final long mo8798h() {
        long mo8798h = this.f29547d.mo8798h();
        if (mo8798h != Long.MIN_VALUE) {
            long j = this.f29551h;
            if (j != Long.MIN_VALUE && mo8798h >= j) {
                return Long.MIN_VALUE;
            }
            return mo8798h;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: i */
    public final long mo8797i(mm3[] mm3VarArr, boolean[] zArr, bm3[] bm3VarArr, boolean[] zArr2, long j) {
        int length = bm3VarArr.length;
        this.f29549f = new bj3[length];
        bm3[] bm3VarArr2 = new bm3[length];
        int i = 0;
        while (true) {
            bm3 bm3Var = null;
            if (i >= bm3VarArr.length) {
                break;
            }
            bj3[] bj3VarArr = this.f29549f;
            bj3 bj3Var = (bj3) bm3VarArr[i];
            bj3VarArr[i] = bj3Var;
            if (bj3Var != null) {
                bm3Var = bj3Var.f20494a;
            }
            bm3VarArr2[i] = bm3Var;
            i++;
        }
        long mo8797i = this.f29547d.mo8797i(mm3VarArr, zArr, bm3VarArr2, zArr2, j);
        this.f29550g = -9223372036854775807L;
        boolean z = true;
        if (mo8797i != j) {
            if (mo8797i >= 0) {
                long j2 = this.f29551h;
                z = true;
                if (j2 != Long.MIN_VALUE) {
                    if (mo8797i <= j2) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        C7173y8.m8895d(z);
        for (int i2 = 0; i2 < bm3VarArr.length; i2++) {
            bm3 bm3Var2 = bm3VarArr2[i2];
            if (bm3Var2 == null) {
                this.f29549f[i2] = null;
            } else {
                bj3[] bj3VarArr2 = this.f29549f;
                bj3 bj3Var2 = bj3VarArr2[i2];
                if (bj3Var2 == null || bj3Var2.f20494a != bm3Var2) {
                    bj3VarArr2[i2] = new bj3(this, bm3Var2);
                }
            }
            bm3VarArr[i2] = this.f29549f[i2];
        }
        return mo8797i;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: j */
    public final boolean mo8796j() {
        return this.f29547d.mo8796j();
    }

    @Override // com.google.android.gms.internal.ads.cm3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ void mo8795k(lk3 lk3Var) {
        kk3 kk3Var = this.f29548e;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8795k(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: l */
    public final void mo8794l(kk3 kk3Var, long j) {
        this.f29548e = kk3Var;
        this.f29547d.mo8794l(this, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
        if (r0 != r10.f31918g) goto L12;
     */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8793m(long r8, com.google.android.gms.internal.ads.C7134x6 r10) {
        /*
            r7 = this;
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6f
            r0 = r10
            long r0 = r0.f31917f
            r1 = 0
            r2 = r8
            long r0 = com.google.android.gms.internal.ads.C7101wa.m9694d0(r0, r1, r2)
            r11 = r0
            r0 = r10
            long r0 = r0.f31918g
            r13 = r0
            r0 = r7
            long r0 = r0.f29551h
            r15 = r0
            r0 = r15
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L2e
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r15 = r0
            goto L34
        L2e:
            r0 = r15
            r1 = r8
            long r0 = r0 - r1
            r15 = r0
        L34:
            r0 = r13
            r1 = 0
            r2 = r15
            long r0 = com.google.android.gms.internal.ads.C7101wa.m9694d0(r0, r1, r2)
            r15 = r0
            r0 = r11
            r1 = r10
            long r1 = r1.f31917f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L55
            r0 = r10
            r17 = r0
            r0 = r15
            r1 = r10
            long r1 = r1.f31918g
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L62
        L55:
            com.google.android.gms.internal.ads.x6 r0 = new com.google.android.gms.internal.ads.x6
            r1 = r0
            r2 = r11
            r3 = r15
            r1.<init>(r2, r3)
            r17 = r0
        L62:
            r0 = r7
            com.google.android.gms.internal.ads.lk3 r0 = r0.f29547d
            r1 = r8
            r2 = r17
            long r0 = r0.mo8793m(r1, r2)
            return r0
        L6f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sj3.mo8793m(long, com.google.android.gms.internal.ads.x6):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0066, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8792n(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f29550g = r1
            r0 = r5
            com.google.android.gms.internal.ads.bj3[] r0 = r0.f29549f
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L16:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L33
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2d
            r0 = r12
            r0.m16329e()
        L2d:
            int r11 = r11 + 1
            goto L16
        L33:
            r0 = r5
            com.google.android.gms.internal.ads.lk3 r0 = r0.f29547d
            r1 = r6
            long r0 = r0.mo8792n(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L69
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L6c
            r0 = r5
            long r0 = r0.f29551h
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L69
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6c
        L69:
            r0 = 1
            r15 = r0
        L6c:
            r0 = r15
            com.google.android.gms.internal.ads.C7173y8.m8895d(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sj3.mo8792n(long):long");
    }

    /* renamed from: o */
    public final boolean m11002o() {
        return this.f29550g != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: q */
    public final void mo8791q(long j, boolean z) {
        this.f29547d.mo8791q(j, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        if (r0 <= r0) goto L21;
     */
    @Override // com.google.android.gms.internal.ads.lk3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzg() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.m11002o()
            if (r0 == 0) goto L24
            r0 = r5
            long r0 = r0.f29550g
            r6 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f29550g = r1
            r0 = r5
            long r0 = r0.zzg()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L22
            r0 = r8
            return r0
        L22:
            r0 = r6
            return r0
        L24:
            r0 = r5
            com.google.android.gms.internal.ads.lk3 r0 = r0.f29547d
            long r0 = r0.zzg()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3a
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L3a:
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L49
            r0 = 1
            r11 = r0
            goto L4c
        L49:
            r0 = 0
            r11 = r0
        L4c:
            r0 = r11
            com.google.android.gms.internal.ads.C7173y8.m8895d(r0)
            r0 = r5
            long r0 = r0.f29551h
            r8 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L68
            r0 = r10
            r11 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6b
        L68:
            r0 = 1
            r11 = r0
        L6b:
            r0 = r11
            com.google.android.gms.internal.ads.C7173y8.m8895d(r0)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.sj3.zzg():long");
    }
}
