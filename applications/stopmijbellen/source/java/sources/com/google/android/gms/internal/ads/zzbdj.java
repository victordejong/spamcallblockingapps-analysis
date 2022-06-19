package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdj.class */
public enum zzbdj implements zzgkn {
    UNSPECIFIED(0),
    CONNECTING(1),
    CONNECTED(2),
    DISCONNECTING(3),
    DISCONNECTED(4),
    SUSPENDED(5);
    
    private static final zzgko<zzbdj> zzg = new zzgko<zzbdj>() { // from class: com.google.android.gms.internal.ads.zzbdh
    };
    private final int zzi;

    zzbdj(int i) {
        this.zzi = i;
    }

    public static zzbdj zzb(int i) {
        if (i != 0) {
            if (i == 1) {
                return CONNECTING;
            }
            if (i == 2) {
                return CONNECTED;
            }
            if (i == 3) {
                return DISCONNECTING;
            }
            if (i == 4) {
                return DISCONNECTED;
            }
            if (i == 5) {
                return SUSPENDED;
            }
            return null;
        }
        return UNSPECIFIED;
    }

    public static zzgkp zzc() {
        return zzbdi.zza;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzi);
    }

    public final int zza() {
        return this.zzi;
    }
}
