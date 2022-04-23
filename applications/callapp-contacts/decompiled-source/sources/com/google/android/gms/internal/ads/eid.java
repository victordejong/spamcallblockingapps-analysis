package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eid.class */
public enum eid implements dnm {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);
    
    private static final dnl<eid> zzes = new dnl<eid>() { // from class: com.google.android.gms.internal.ads.eig
    };
    private final int value;

    eid(int i) {
        this.value = i;
    }

    public static eid zzcg(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    public static dno zzw() {
        return eif.f27861a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.dnm
    public final int zzv() {
        return this.value;
    }
}
