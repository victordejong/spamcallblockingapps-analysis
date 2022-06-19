package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebj.class */
public class ebj implements ebu {

    /* renamed from: a */
    private final ebg f48607a;

    /* renamed from: b */
    private final int f48608b;

    /* renamed from: c */
    private final int[] f48609c;

    /* renamed from: d */
    private final zzht[] f48610d;

    /* renamed from: e */
    private final long[] f48611e;

    /* renamed from: f */
    private int f48612f;

    public ebj(ebg ebgVar, int... iArr) {
        ecr.m15247b(iArr.length > 0);
        this.f48607a = (ebg) ecr.m15251a(ebgVar);
        int length = iArr.length;
        this.f48608b = length;
        this.f48610d = new zzht[length];
        for (int i = 0; i < iArr.length; i++) {
            this.f48610d[i] = ebgVar.f48594b[iArr[i]];
        }
        Arrays.sort(this.f48610d, new ebl());
        this.f48609c = new int[this.f48608b];
        int i2 = 0;
        while (true) {
            int i3 = this.f48608b;
            if (i2 >= i3) {
                this.f48611e = new long[i3];
                return;
            } else {
                this.f48609c[i2] = ebgVar.m15314a(this.f48610d[i2]);
                i2++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ebu
    /* renamed from: a */
    public final ebg mo15302a() {
        return this.f48607a;
    }

    @Override // com.google.android.gms.internal.ads.ebu
    /* renamed from: a */
    public final zzht mo15301a(int i) {
        return this.f48610d[i];
    }

    @Override // com.google.android.gms.internal.ads.ebu
    /* renamed from: b */
    public final int mo15300b() {
        return this.f48609c.length;
    }

    @Override // com.google.android.gms.internal.ads.ebu
    /* renamed from: c */
    public final int mo15299c() {
        return this.f48609c[0];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ebj ebjVar = (ebj) obj;
        return this.f48607a == ebjVar.f48607a && Arrays.equals(this.f48609c, ebjVar.f48609c);
    }

    public int hashCode() {
        if (this.f48612f == 0) {
            this.f48612f = (System.identityHashCode(this.f48607a) * 31) + Arrays.hashCode(this.f48609c);
        }
        return this.f48612f;
    }
}
