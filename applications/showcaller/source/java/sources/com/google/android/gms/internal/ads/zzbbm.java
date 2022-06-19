package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbm.class */
public enum zzbbm implements ke3 {
    UNSPECIFIED(0),
    CONNECTING(1),
    CONNECTED(2),
    DISCONNECTING(3),
    DISCONNECTED(4),
    SUSPENDED(5);
    

    /* renamed from: j */
    private static final le3<zzbbm> f33649j = new le3<zzbbm>() { // from class: com.google.android.gms.internal.ads.zo
    };
    private final int zzh;

    zzbbm(int i) {
        this.zzh = i;
    }

    public static zzbbm zzb(int i) {
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

    public static me3 zzc() {
        return C6300ap.f20073a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzh);
    }

    public final int zza() {
        return this.zzh;
    }
}
