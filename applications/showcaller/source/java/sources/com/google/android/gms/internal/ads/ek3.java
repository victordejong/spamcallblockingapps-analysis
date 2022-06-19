package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ek3.class */
public final class ek3 implements lk3, kk3 {

    /* renamed from: d */
    public final mk3 f22260d;

    /* renamed from: e */
    private final long f22261e;

    /* renamed from: f */
    private ok3 f22262f;

    /* renamed from: g */
    private lk3 f22263g;

    /* renamed from: h */
    private kk3 f22264h;

    /* renamed from: i */
    private long f22265i = -9223372036854775807L;

    /* renamed from: j */
    private final tn3 f22266j;

    public ek3(mk3 mk3Var, tn3 tn3Var, long j, byte[] bArr) {
        this.f22260d = mk3Var;
        this.f22266j = tn3Var;
        this.f22261e = j;
    }

    /* renamed from: u */
    private final long m15439u(long j) {
        long j2 = this.f22265i;
        return j2 != -9223372036854775807L ? j2 : j;
    }

    /* renamed from: a */
    public final long m15445a() {
        return this.f22261e;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: b */
    public final void mo8804b(long j) {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        lk3Var.mo8804b(j);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: c */
    public final void mo8803c() {
        try {
            lk3 lk3Var = this.f22263g;
            if (lk3Var != null) {
                lk3Var.mo8803c();
                return;
            }
            ok3 ok3Var = this.f22262f;
            if (ok3Var == null) {
                return;
            }
            ok3Var.zzu();
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: d */
    public final boolean mo8802d(long j) {
        lk3 lk3Var = this.f22263g;
        return lk3Var != null && lk3Var.mo8802d(j);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: e */
    public final dv3 mo8801e() {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        return lk3Var.mo8801e();
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: f */
    public final long mo8800f() {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        return lk3Var.mo8800f();
    }

    @Override // com.google.android.gms.internal.ads.kk3
    /* renamed from: g */
    public final void mo8799g(lk3 lk3Var) {
        kk3 kk3Var = this.f22264h;
        int i = C7101wa.f31475a;
        kk3Var.mo8799g(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: h */
    public final long mo8798h() {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        return lk3Var.mo8798h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.lk3] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: i */
    public final long mo8797i(mm3[] mm3VarArr, boolean[] zArr, bm3[] bm3VarArr, boolean[] zArr2, long j) {
        ?? r0 = this.f22265i;
        ?? r13 = j;
        if (r0 != -9223372036854775807L) {
            int i = (j > this.f22261e ? 1 : (j == this.f22261e ? 0 : -1));
            r13 = j;
            if (i == 0) {
                this.f22265i = -9223372036854775807L;
                r13 = r0;
            }
        }
        ?? r02 = this.f22263g;
        int i2 = C7101wa.f31475a;
        return r02.mo8797i(mm3VarArr, zArr, bm3VarArr, zArr2, r13);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: j */
    public final boolean mo8796j() {
        lk3 lk3Var = this.f22263g;
        return lk3Var != null && lk3Var.mo8796j();
    }

    @Override // com.google.android.gms.internal.ads.cm3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ void mo8795k(lk3 lk3Var) {
        kk3 kk3Var = this.f22264h;
        int i = C7101wa.f31475a;
        kk3Var.mo8795k(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: l */
    public final void mo8794l(kk3 kk3Var, long j) {
        this.f22264h = kk3Var;
        lk3 lk3Var = this.f22263g;
        if (lk3Var != null) {
            lk3Var.mo8794l(this, m15439u(this.f22261e));
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: m */
    public final long mo8793m(long j, C7134x6 c7134x6) {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        return lk3Var.mo8793m(j, c7134x6);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: n */
    public final long mo8792n(long j) {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        return lk3Var.mo8792n(j);
    }

    /* renamed from: o */
    public final void m15444o(long j) {
        this.f22265i = j;
    }

    /* renamed from: p */
    public final long m15443p() {
        return this.f22265i;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: q */
    public final void mo8791q(long j, boolean z) {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        lk3Var.mo8791q(j, false);
    }

    /* renamed from: r */
    public final void m15442r(ok3 ok3Var) {
        C7173y8.m8895d(this.f22262f == null);
        this.f22262f = ok3Var;
    }

    /* renamed from: s */
    public final void m15441s(mk3 mk3Var) {
        long m15439u = m15439u(this.f22261e);
        ok3 ok3Var = this.f22262f;
        Objects.requireNonNull(ok3Var);
        lk3 mo10990e = ok3Var.mo10990e(mk3Var, this.f22266j, m15439u);
        this.f22263g = mo10990e;
        if (this.f22264h != null) {
            mo10990e.mo8794l(this, m15439u);
        }
    }

    /* renamed from: t */
    public final void m15440t() {
        lk3 lk3Var = this.f22263g;
        if (lk3Var != null) {
            ok3 ok3Var = this.f22262f;
            Objects.requireNonNull(ok3Var);
            ok3Var.mo10991c(lk3Var);
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3
    public final long zzg() {
        lk3 lk3Var = this.f22263g;
        int i = C7101wa.f31475a;
        return lk3Var.zzg();
    }
}
