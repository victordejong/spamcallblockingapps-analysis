package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqx.class */
public class dqx implements dre {

    /* renamed from: a */
    private final dqs f15441a;

    /* renamed from: b */
    private final int f15442b;

    /* renamed from: c */
    private final int[] f15443c;

    /* renamed from: d */
    private final dlf[] f15444d;

    /* renamed from: e */
    private final long[] f15445e;

    /* renamed from: f */
    private int f15446f;

    public dqx(dqs dqsVar, int... iArr) {
        drz.m8770b(iArr.length > 0);
        this.f15441a = (dqs) drz.m8774a(dqsVar);
        this.f15442b = iArr.length;
        this.f15444d = new dlf[this.f15442b];
        for (int i = 0; i < iArr.length; i++) {
            this.f15444d[i] = dqsVar.m8842a(iArr[i]);
        }
        Arrays.sort(this.f15444d, new dqz());
        this.f15443c = new int[this.f15442b];
        for (int i2 = 0; i2 < this.f15442b; i2++) {
            this.f15443c[i2] = dqsVar.m8841a(this.f15444d[i2]);
        }
        this.f15445e = new long[this.f15442b];
    }

    @Override // com.google.android.gms.internal.ads.dre
    /* renamed from: a */
    public final dlf mo8826a(int i) {
        return this.f15444d[i];
    }

    @Override // com.google.android.gms.internal.ads.dre
    /* renamed from: a */
    public final dqs mo8827a() {
        return this.f15441a;
    }

    @Override // com.google.android.gms.internal.ads.dre
    /* renamed from: b */
    public final int mo8825b() {
        return this.f15443c.length;
    }

    @Override // com.google.android.gms.internal.ads.dre
    /* renamed from: b */
    public final int mo8824b(int i) {
        return this.f15443c[0];
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dqx dqxVar = (dqx) obj;
                if (this.f15441a != dqxVar.f15441a || !Arrays.equals(this.f15443c, dqxVar.f15443c)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        if (this.f15446f == 0) {
            this.f15446f = (System.identityHashCode(this.f15441a) * 31) + Arrays.hashCode(this.f15443c);
        }
        return this.f15446f;
    }
}
