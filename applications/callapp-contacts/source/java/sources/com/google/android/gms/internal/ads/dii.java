package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dii.class */
public enum dii implements dnm {
    UNKNOWN_STATUS(0),
    ENABLED(1),
    DISABLED(2),
    DESTROYED(3),
    UNRECOGNIZED(-1);
    
    private static final dnl<dii> zzes = new dnl<dii>() { // from class: com.google.android.gms.internal.ads.dil
    };
    private final int value;

    dii(int i) {
        this.value = i;
    }

    public static dii zzfs(int i) {
        if (i != 0) {
            if (i == 1) {
                return ENABLED;
            }
            if (i == 2) {
                return DISABLED;
            }
            if (i == 3) {
                return DESTROYED;
            }
            return null;
        }
        return UNKNOWN_STATUS;
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
