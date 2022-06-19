package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djb.class */
public enum djb implements dnm {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    UNRECOGNIZED(-1);
    
    private static final dnl<djb> zzes = new dnl<djb>() { // from class: com.google.android.gms.internal.ads.djd
    };
    private final int value;

    djb(int i) {
        this.value = i;
    }

    public static djb zzfz(int i) {
        if (i != 0) {
            if (i == 1) {
                return TINK;
            }
            if (i == 2) {
                return LEGACY;
            }
            if (i == 3) {
                return RAW;
            }
            if (i == 4) {
                return CRUNCHY;
            }
            return null;
        }
        return UNKNOWN_PREFIX;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName());
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this != UNRECOGNIZED) {
            sb.append(" number=");
            sb.append(zzv());
        }
        sb.append(" name=");
        sb.append(name());
        sb.append('>');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.dnm
    public final int zzv() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
