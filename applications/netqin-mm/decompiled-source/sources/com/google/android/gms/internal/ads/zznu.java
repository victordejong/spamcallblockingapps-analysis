package com.google.android.gms.internal.ads;

import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.te0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznu.class */
public class zznu implements zzob {

    /* renamed from: a */
    public final zznq f28692a;

    /* renamed from: b */
    public final int f28693b;

    /* renamed from: c */
    public final int[] f28694c;

    /* renamed from: d */
    public final zzho[] f28695d;

    /* renamed from: e */
    public int f28696e;

    public zznu(zznq zznqVar, int... iArr) {
        int i = 0;
        zzoz.m11694b(iArr.length > 0);
        zzoz.m11698a(zznqVar);
        this.f28692a = zznqVar;
        int length = iArr.length;
        this.f28693b = length;
        this.f28695d = new zzho[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f28695d[i2] = zznqVar.m11752a(iArr[i2]);
        }
        Arrays.sort(this.f28695d, new te0());
        this.f28694c = new int[this.f28693b];
        while (true) {
            int i3 = this.f28693b;
            if (i < i3) {
                this.f28694c[i] = zznqVar.m11751a(this.f28695d[i]);
                i++;
            } else {
                long[] jArr = new long[i3];
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzob
    /* renamed from: a */
    public final zzho mo11742a(int i) {
        return this.f28695d[i];
    }

    @Override // com.google.android.gms.internal.ads.zzob
    /* renamed from: a */
    public final zznq mo11743a() {
        return this.f28692a;
    }

    @Override // com.google.android.gms.internal.ads.zzob
    /* renamed from: b */
    public final int mo11741b(int i) {
        return this.f28694c[0];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zznu zznuVar = (zznu) obj;
        return this.f28692a == zznuVar.f28692a && Arrays.equals(this.f28694c, zznuVar.f28694c);
    }

    public int hashCode() {
        if (this.f28696e == 0) {
            this.f28696e = (System.identityHashCode(this.f28692a) * 31) + Arrays.hashCode(this.f28694c);
        }
        return this.f28696e;
    }

    @Override // com.google.android.gms.internal.ads.zzob
    public final int length() {
        return this.f28694c.length;
    }
}
