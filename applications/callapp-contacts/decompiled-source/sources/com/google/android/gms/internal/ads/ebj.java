package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebj.class */
public class ebj implements ebu {

    /* renamed from: a  reason: collision with root package name */
    private final ebg f27578a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27579b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f27580c;

    /* renamed from: d  reason: collision with root package name */
    private final zzht[] f27581d;
    private final long[] e;
    private int f;

    public ebj(ebg ebgVar, int... iArr) {
        int i = 0;
        ecr.b(iArr.length > 0);
        this.f27578a = (ebg) ecr.a(ebgVar);
        int length = iArr.length;
        this.f27579b = length;
        this.f27581d = new zzht[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f27581d[i2] = ebgVar.f27569b[iArr[i2]];
        }
        Arrays.sort(this.f27581d, new ebl());
        this.f27580c = new int[this.f27579b];
        while (true) {
            int i3 = this.f27579b;
            if (i < i3) {
                this.f27580c[i] = ebgVar.a(this.f27581d[i]);
                i++;
            } else {
                this.e = new long[i3];
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ebu
    public final ebg a() {
        return this.f27578a;
    }

    @Override // com.google.android.gms.internal.ads.ebu
    public final zzht a(int i) {
        return this.f27581d[i];
    }

    @Override // com.google.android.gms.internal.ads.ebu
    public final int b() {
        return this.f27580c.length;
    }

    @Override // com.google.android.gms.internal.ads.ebu
    public final int c() {
        return this.f27580c[0];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ebj ebjVar = (ebj) obj;
        return this.f27578a == ebjVar.f27578a && Arrays.equals(this.f27580c, ebjVar.f27580c);
    }

    public int hashCode() {
        if (this.f == 0) {
            this.f = (System.identityHashCode(this.f27578a) * 31) + Arrays.hashCode(this.f27580c);
        }
        return this.f;
    }
}
