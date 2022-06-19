package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpi.class */
public enum bpi implements dnm {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_FAILURE(2),
    ENUM_UNKNOWN(1000);
    
    private static final dnl<bpi> zzes = new dnl<bpi>() { // from class: com.google.android.gms.internal.ads.boi
    };
    private final int value;

    bpi(int i) {
        this.value = i;
    }

    public static bpi zzn(int i) {
        if (i != 0) {
            if (i == 1) {
                return ENUM_TRUE;
            }
            if (i == 2) {
                return ENUM_FAILURE;
            }
            if (i == 1000) {
                return ENUM_UNKNOWN;
            }
            return null;
        }
        return ENUM_FALSE;
    }

    public static dno zzw() {
        return brk.f44560a;
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
