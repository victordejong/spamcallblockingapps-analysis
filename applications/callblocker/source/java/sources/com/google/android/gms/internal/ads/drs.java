package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drs.class */
public final class drs implements drn {

    /* renamed from: a */
    private final boolean f15513a;

    /* renamed from: b */
    private final int f15514b;

    /* renamed from: c */
    private final byte[] f15515c;

    /* renamed from: d */
    private final drk[] f15516d;

    /* renamed from: e */
    private int f15517e;

    /* renamed from: f */
    private int f15518f;

    /* renamed from: g */
    private int f15519g;

    /* renamed from: h */
    private drk[] f15520h;

    public drs(boolean z, int i) {
        this(true, 65536, 0);
    }

    private drs(boolean z, int i, int i2) {
        drz.m8772a(true);
        drz.m8772a(true);
        this.f15513a = true;
        this.f15514b = 65536;
        this.f15519g = 0;
        this.f15520h = new drk[100];
        this.f15515c = null;
        this.f15516d = new drk[1];
    }

    @Override // com.google.android.gms.internal.ads.drn
    /* renamed from: a */
    public final drk mo8804a() {
        drk drkVar;
        synchronized (this) {
            this.f15518f++;
            if (this.f15519g > 0) {
                drk[] drkVarArr = this.f15520h;
                int i = this.f15519g - 1;
                this.f15519g = i;
                drkVar = drkVarArr[i];
                this.f15520h[this.f15519g] = null;
            } else {
                drkVar = new drk(new byte[this.f15514b], 0);
            }
        }
        return drkVar;
    }

    /* renamed from: a */
    public final void m8803a(int i) {
        synchronized (this) {
            boolean z = i < this.f15517e;
            this.f15517e = i;
            if (z) {
                mo8800b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.drn
    /* renamed from: a */
    public final void mo8802a(drk drkVar) {
        synchronized (this) {
            this.f15516d[0] = drkVar;
            mo8801a(this.f15516d);
        }
    }

    @Override // com.google.android.gms.internal.ads.drn
    /* renamed from: a */
    public final void mo8801a(drk[] drkVarArr) {
        synchronized (this) {
            if (this.f15519g + drkVarArr.length >= this.f15520h.length) {
                this.f15520h = (drk[]) Arrays.copyOf(this.f15520h, Math.max(this.f15520h.length << 1, this.f15519g + drkVarArr.length));
            }
            for (drk drkVar : drkVarArr) {
                drz.m8772a(drkVar.f15478a == null || drkVar.f15478a.length == this.f15514b);
                drk[] drkVarArr2 = this.f15520h;
                int i = this.f15519g;
                this.f15519g = i + 1;
                drkVarArr2[i] = drkVar;
            }
            this.f15518f -= drkVarArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.drn
    /* renamed from: b */
    public final void mo8800b() {
        synchronized (this) {
            int max = Math.max(0, dsn.m8708a(this.f15517e, this.f15514b) - this.f15518f);
            if (max < this.f15519g) {
                Arrays.fill(this.f15520h, max, this.f15519g, (Object) null);
                this.f15519g = max;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.drn
    /* renamed from: c */
    public final int mo8799c() {
        return this.f15514b;
    }

    /* renamed from: d */
    public final void m8798d() {
        synchronized (this) {
            if (this.f15513a) {
                m8803a(0);
            }
        }
    }

    /* renamed from: e */
    public final int m8797e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f15518f;
            i2 = this.f15514b;
        }
        return i * i2;
    }
}
