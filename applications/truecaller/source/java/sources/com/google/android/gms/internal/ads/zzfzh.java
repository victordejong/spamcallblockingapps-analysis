package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfzh.class */
public final class zzfzh extends zzgga<zzfzh, zzfzg> implements zzghj {
    private static final zzfzh zzb;

    static {
        zzfzh zzfzhVar = new zzfzh();
        zzb = zzfzhVar;
        zzgga.zzay(zzfzh.class, zzfzhVar);
    }

    private zzfzh() {
    }

    public static zzfzh zza(zzgex zzgexVar, zzgfm zzgfmVar) throws zzggm {
        return (zzfzh) zzgga.zzaI(zzb, zzgexVar, zzgfmVar);
    }

    public static zzfzh zzc() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzb, "����", null);
            }
            if (i2 == 3) {
                return new zzfzh();
            }
            if (i2 == 4) {
                return new zzfzg(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
