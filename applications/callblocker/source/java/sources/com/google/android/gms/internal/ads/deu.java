package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/deu.class */
public final class deu implements dee {

    /* renamed from: a */
    private final deg f14169a;

    /* renamed from: b */
    private final String f14170b;

    /* renamed from: c */
    private final Object[] f14171c;

    /* renamed from: d */
    private final int f14172d;

    public deu(deg degVar, String str, Object[] objArr) {
        this.f14169a = degVar;
        this.f14170b = str;
        this.f14171c = objArr;
        int i = 1;
        int charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f14172d = charAt;
            return;
        }
        int i2 = charAt & 8191;
        int i3 = 13;
        while (true) {
            int charAt2 = str.charAt(i);
            if (charAt2 < 55296) {
                this.f14172d = (charAt2 << i3) | i2;
                return;
            }
            i2 |= (charAt2 & 8191) << i3;
            i++;
            i3 += 13;
        }
    }

    @Override // com.google.android.gms.internal.ads.dee
    /* renamed from: a */
    public final int mo9758a() {
        return (this.f14172d & 1) == 1 ? dcw.C2960f.f14083h : dcw.C2960f.f14084i;
    }

    @Override // com.google.android.gms.internal.ads.dee
    /* renamed from: b */
    public final boolean mo9757b() {
        return (this.f14172d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.dee
    /* renamed from: c */
    public final deg mo9756c() {
        return this.f14169a;
    }

    /* renamed from: d */
    public final String m9925d() {
        return this.f14170b;
    }

    /* renamed from: e */
    public final Object[] m9924e() {
        return this.f14171c;
    }
}
