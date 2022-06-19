package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yk3.class */
final class yk3 implements lk3, kk3 {

    /* renamed from: d */
    private final lk3 f32532d;

    /* renamed from: e */
    private final long f32533e;

    /* renamed from: f */
    private kk3 f32534f;

    public yk3(lk3 lk3Var, long j) {
        this.f32532d = lk3Var;
        this.f32533e = j;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: b */
    public final void mo8804b(long j) {
        this.f32532d.mo8804b(j - this.f32533e);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: c */
    public final void mo8803c() {
        this.f32532d.mo8803c();
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: d */
    public final boolean mo8802d(long j) {
        return this.f32532d.mo8802d(j - this.f32533e);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: e */
    public final dv3 mo8801e() {
        return this.f32532d.mo8801e();
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: f */
    public final long mo8800f() {
        long mo8800f = this.f32532d.mo8800f();
        if (mo8800f == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return mo8800f + this.f32533e;
    }

    @Override // com.google.android.gms.internal.ads.kk3
    /* renamed from: g */
    public final void mo8799g(lk3 lk3Var) {
        kk3 kk3Var = this.f32534f;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8799g(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: h */
    public final long mo8798h() {
        long mo8798h = this.f32532d.mo8798h();
        if (mo8798h == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return mo8798h + this.f32533e;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: i */
    public final long mo8797i(mm3[] mm3VarArr, boolean[] zArr, bm3[] bm3VarArr, boolean[] zArr2, long j) {
        bm3[] bm3VarArr2 = new bm3[bm3VarArr.length];
        int i = 0;
        while (true) {
            bm3 bm3Var = null;
            if (i >= bm3VarArr.length) {
                break;
            }
            zk3 zk3Var = (zk3) bm3VarArr[i];
            if (zk3Var != null) {
                bm3Var = zk3Var.m8341e();
            }
            bm3VarArr2[i] = bm3Var;
            i++;
        }
        long mo8797i = this.f32532d.mo8797i(mm3VarArr, zArr, bm3VarArr2, zArr2, j - this.f32533e);
        for (int i2 = 0; i2 < bm3VarArr.length; i2++) {
            bm3 bm3Var2 = bm3VarArr2[i2];
            if (bm3Var2 == null) {
                bm3VarArr[i2] = null;
            } else {
                bm3 bm3Var3 = bm3VarArr[i2];
                if (bm3Var3 == null || ((zk3) bm3Var3).m8341e() != bm3Var2) {
                    bm3VarArr[i2] = new zk3(bm3Var2, this.f32533e);
                }
            }
        }
        return mo8797i + this.f32533e;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: j */
    public final boolean mo8796j() {
        return this.f32532d.mo8796j();
    }

    @Override // com.google.android.gms.internal.ads.cm3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ void mo8795k(lk3 lk3Var) {
        kk3 kk3Var = this.f32534f;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8795k(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: l */
    public final void mo8794l(kk3 kk3Var, long j) {
        this.f32534f = kk3Var;
        this.f32532d.mo8794l(this, j - this.f32533e);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: m */
    public final long mo8793m(long j, C7134x6 c7134x6) {
        return this.f32532d.mo8793m(j - this.f32533e, c7134x6) + this.f32533e;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: n */
    public final long mo8792n(long j) {
        return this.f32532d.mo8792n(j - this.f32533e) + this.f32533e;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: q */
    public final void mo8791q(long j, boolean z) {
        this.f32532d.mo8791q(j - this.f32533e, false);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    public final long zzg() {
        long zzg = this.f32532d.zzg();
        if (zzg == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzg + this.f32533e;
    }
}
