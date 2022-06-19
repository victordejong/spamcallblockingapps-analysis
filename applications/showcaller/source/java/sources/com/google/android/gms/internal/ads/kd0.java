package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.C6147m;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kd0.class */
public final class kd0 extends md0 {

    /* renamed from: d */
    private final String f25102d;

    /* renamed from: e */
    private final int f25103e;

    public kd0(String str, int i) {
        this.f25102d = str;
        this.f25103e = i;
    }

    @Override // com.google.android.gms.internal.ads.nd0
    /* renamed from: b */
    public final String mo12951b() {
        return this.f25102d;
    }

    @Override // com.google.android.gms.internal.ads.nd0
    /* renamed from: c */
    public final int mo12950c() {
        return this.f25103e;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof kd0)) {
            return false;
        }
        kd0 kd0Var = (kd0) obj;
        return C6147m.m17044a(this.f25102d, kd0Var.f25102d) && C6147m.m17044a(Integer.valueOf(this.f25103e), Integer.valueOf(kd0Var.f25103e));
    }
}
