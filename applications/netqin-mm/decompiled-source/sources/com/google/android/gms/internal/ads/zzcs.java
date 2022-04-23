package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3552fo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcs.class */
public enum zzcs implements zzeke {
    UNKNOWN_PROTO(0),
    AFMA_SIGNALS(1),
    UNITY_SIGNALS(2),
    PARTNER_SIGNALS(3);
    
    public static final zzekd<zzcs> zzes = new zzekd<zzcs>() { // from class: c.d.b.d.g.a.in
    };
    public final int value;

    zzcs(int i) {
        this.value = i;
    }

    public static zzcs zzo(int i) {
        if (i == 0) {
            return UNKNOWN_PROTO;
        }
        if (i == 1) {
            return AFMA_SIGNALS;
        }
        if (i == 2) {
            return UNITY_SIGNALS;
        }
        if (i != 3) {
            return null;
        }
        return PARTNER_SIGNALS;
    }

    public static zzekg zzw() {
        return C3552fo.f12988a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzcs.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzeke
    public final int zzv() {
        return this.value;
    }
}
