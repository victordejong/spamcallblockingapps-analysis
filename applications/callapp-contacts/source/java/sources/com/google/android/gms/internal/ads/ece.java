package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ece.class */
public final class ece implements ebz {

    /* renamed from: a */
    private final boolean f48654a;

    /* renamed from: b */
    private final int f48655b;

    /* renamed from: c */
    private final byte[] f48656c;

    /* renamed from: d */
    private final eca[] f48657d;

    /* renamed from: e */
    private int f48658e;

    /* renamed from: f */
    private int f48659f;

    /* renamed from: g */
    private int f48660g;

    /* renamed from: h */
    private eca[] f48661h;

    public ece(boolean z, int i) {
        this(true, 65536, 0);
    }

    private ece(boolean z, int i, int i2) {
        ecr.m15249a(true);
        ecr.m15249a(true);
        this.f48654a = true;
        this.f48655b = 65536;
        this.f48660g = 0;
        this.f48661h = new eca[100];
        this.f48656c = null;
        this.f48657d = new eca[1];
    }

    @Override // com.google.android.gms.internal.ads.ebz
    /* renamed from: a */
    public final eca mo15291a() {
        eca ecaVar;
        synchronized (this) {
            this.f48659f++;
            int i = this.f48660g;
            if (i > 0) {
                eca[] ecaVarArr = this.f48661h;
                int i2 = i - 1;
                this.f48660g = i2;
                ecaVar = ecaVarArr[i2];
                ecaVarArr[i2] = null;
            } else {
                ecaVar = new eca(new byte[this.f48655b], 0);
            }
        }
        return ecaVar;
    }

    /* renamed from: a */
    public final void m15290a(int i) {
        synchronized (this) {
            boolean z = i < this.f48658e;
            this.f48658e = i;
            if (z) {
                mo15287b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    /* renamed from: a */
    public final void mo15289a(eca ecaVar) {
        synchronized (this) {
            eca[] ecaVarArr = this.f48657d;
            ecaVarArr[0] = ecaVar;
            mo15288a(ecaVarArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    /* renamed from: a */
    public final void mo15288a(eca[] ecaVarArr) {
        boolean z;
        synchronized (this) {
            int i = this.f48660g;
            int length = ecaVarArr.length;
            eca[] ecaVarArr2 = this.f48661h;
            if (length + i >= ecaVarArr2.length) {
                this.f48661h = (eca[]) Arrays.copyOf(ecaVarArr2, Math.max(ecaVarArr2.length << 1, i + ecaVarArr.length));
            }
            for (eca ecaVar : ecaVarArr) {
                if (ecaVar.f48648a != null && ecaVar.f48648a.length != this.f48655b) {
                    z = false;
                    ecr.m15249a(z);
                    eca[] ecaVarArr3 = this.f48661h;
                    int i2 = this.f48660g;
                    this.f48660g = i2 + 1;
                    ecaVarArr3[i2] = ecaVar;
                }
                z = true;
                ecr.m15249a(z);
                eca[] ecaVarArr32 = this.f48661h;
                int i22 = this.f48660g;
                this.f48660g = i22 + 1;
                ecaVarArr32[i22] = ecaVar;
            }
            this.f48659f -= ecaVarArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    /* renamed from: b */
    public final void mo15287b() {
        synchronized (this) {
            int max = Math.max(0, ede.m15198a(this.f48658e, this.f48655b) - this.f48659f);
            int i = this.f48660g;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.f48661h, max, i, (Object) null);
            this.f48660g = max;
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    /* renamed from: c */
    public final int mo15286c() {
        return this.f48655b;
    }

    /* renamed from: d */
    public final void m15285d() {
        synchronized (this) {
            if (this.f48654a) {
                m15290a(0);
            }
        }
    }

    /* renamed from: e */
    public final int m15284e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f48659f;
            i2 = this.f48655b;
        }
        return i * i2;
    }
}
