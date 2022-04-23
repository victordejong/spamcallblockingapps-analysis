package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ece.class */
public final class ece implements ebz {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f27612a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27613b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f27614c;

    /* renamed from: d  reason: collision with root package name */
    private final eca[] f27615d;
    private int e;
    private int f;
    private int g;
    private eca[] h;

    public ece(boolean z, int i) {
        this(true, 65536, 0);
    }

    private ece(boolean z, int i, int i2) {
        ecr.a(true);
        ecr.a(true);
        this.f27612a = true;
        this.f27613b = 65536;
        this.g = 0;
        this.h = new eca[100];
        this.f27614c = null;
        this.f27615d = new eca[1];
    }

    @Override // com.google.android.gms.internal.ads.ebz
    public final eca a() {
        eca ecaVar;
        synchronized (this) {
            this.f++;
            int i = this.g;
            if (i > 0) {
                eca[] ecaVarArr = this.h;
                int i2 = i - 1;
                this.g = i2;
                ecaVar = ecaVarArr[i2];
                ecaVarArr[i2] = null;
            } else {
                ecaVar = new eca(new byte[this.f27613b], 0);
            }
        }
        return ecaVar;
    }

    public final void a(int i) {
        synchronized (this) {
            boolean z = i < this.e;
            this.e = i;
            if (z) {
                b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    public final void a(eca ecaVar) {
        synchronized (this) {
            eca[] ecaVarArr = this.f27615d;
            ecaVarArr[0] = ecaVar;
            a(ecaVarArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    public final void a(eca[] ecaVarArr) {
        boolean z;
        synchronized (this) {
            int i = this.g;
            int length = ecaVarArr.length;
            eca[] ecaVarArr2 = this.h;
            if (length + i >= ecaVarArr2.length) {
                this.h = (eca[]) Arrays.copyOf(ecaVarArr2, Math.max(ecaVarArr2.length << 1, i + ecaVarArr.length));
            }
            for (eca ecaVar : ecaVarArr) {
                if (!(ecaVar.f27606a == null || ecaVar.f27606a.length == this.f27613b)) {
                    z = false;
                    ecr.a(z);
                    eca[] ecaVarArr3 = this.h;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    ecaVarArr3[i2] = ecaVar;
                }
                z = true;
                ecr.a(z);
                eca[] ecaVarArr32 = this.h;
                int i22 = this.g;
                this.g = i22 + 1;
                ecaVarArr32[i22] = ecaVar;
            }
            this.f -= ecaVarArr.length;
            notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    public final void b() {
        synchronized (this) {
            int max = Math.max(0, ede.a(this.e, this.f27613b) - this.f);
            int i = this.g;
            if (max < i) {
                Arrays.fill(this.h, max, i, (Object) null);
                this.g = max;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ebz
    public final int c() {
        return this.f27613b;
    }

    public final void d() {
        synchronized (this) {
            if (this.f27612a) {
                a(0);
            }
        }
    }

    public final int e() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f;
            i2 = this.f27613b;
        }
        return i * i2;
    }
}
