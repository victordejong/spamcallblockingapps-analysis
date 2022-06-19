package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zk2.class */
final class zk2 {

    /* renamed from: a */
    public final pp2 f9366a;

    /* renamed from: b */
    public final Object f9367b;

    /* renamed from: c */
    public final int f9368c;

    /* renamed from: d */
    public final bq2[] f9369d = new bq2[2];

    /* renamed from: e */
    public final boolean[] f9370e = new boolean[2];

    /* renamed from: f */
    public final long f9371f;

    /* renamed from: g */
    public int f9372g;

    /* renamed from: h */
    public long f9373h;

    /* renamed from: i */
    public boolean f9374i;

    /* renamed from: j */
    public boolean f9375j;

    /* renamed from: k */
    public boolean f9376k;

    /* renamed from: l */
    public zk2 f9377l;

    /* renamed from: m */
    public uq2 f9378m;

    /* renamed from: n */
    private final hl2[] f9379n;

    /* renamed from: o */
    private final il2[] f9380o;

    /* renamed from: p */
    private final tq2 f9381p;

    /* renamed from: q */
    private final rp2 f9382q;

    /* renamed from: r */
    private uq2 f9383r;

    /* renamed from: s */
    private final C1865nr f9384s;

    public zk2(hl2[] hl2VarArr, il2[] il2VarArr, long j, tq2 tq2Var, C1865nr c1865nr, rp2 rp2Var, Object obj, int i, int i2, boolean z, long j2, byte[] bArr) {
        this.f9379n = hl2VarArr;
        this.f9380o = il2VarArr;
        this.f9371f = j;
        this.f9381p = tq2Var;
        this.f9384s = c1865nr;
        this.f9382q = rp2Var;
        obj.getClass();
        this.f9367b = obj;
        this.f9368c = i;
        this.f9372g = i2;
        this.f9374i = z;
        this.f9373h = j2;
        this.f9366a = rp2Var.m5875c(i2, c1865nr.m6394l());
    }

    /* renamed from: a */
    public final boolean m4607a() {
        boolean z = true;
        if (this.f9375j) {
            if (this.f9376k) {
                if (this.f9366a.h() == Long.MIN_VALUE) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public final boolean m4606b() {
        uq2 m5494a = this.f9381p.m5494a(this.f9380o, this.f9366a.g());
        uq2 uq2Var = this.f9383r;
        if (uq2Var != null) {
            for (int i = 0; i < 2; i++) {
                if (m5494a.m5350a(uq2Var, i)) {
                }
            }
            return false;
        }
        this.f9378m = m5494a;
        return true;
    }

    /* renamed from: c */
    public final long m4605c(long j, boolean z) {
        return m4604d(j, false, new boolean[2]);
    }

    /* renamed from: d */
    public final long m4604d(long j, boolean z, boolean[] zArr) {
        rq2 rq2Var = this.f9378m.f8833b;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= 2) {
                break;
            }
            boolean[] zArr2 = this.f9370e;
            if (z || !this.f9378m.m5350a(this.f9383r, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long m = this.f9366a.m(rq2Var.m5871b(), this.f9370e, this.f9369d, zArr, j);
        this.f9383r = this.f9378m;
        this.f9376k = false;
        int i2 = 0;
        while (true) {
            bq2[] bq2VarArr = this.f9369d;
            if (i2 >= 2) {
                this.f9384s.m6404b(this.f9379n, this.f9378m.f8832a, rq2Var);
                return m;
            }
            if (bq2VarArr[i2] != null) {
                jr2.m6923d(rq2Var.m5872a(i2) != null);
                this.f9376k = true;
            } else {
                jr2.m6923d(rq2Var.m5872a(i2) == null);
            }
            i2++;
        }
    }

    /* renamed from: e */
    public final void m4603e() {
        try {
            this.f9382q.m5877a(this.f9366a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
