package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbr.class */
public final class zzbbr extends zzgkl<zzbbr, zzbbl> implements zzglw {
    private static final zzbbr zzb;
    private zzgku<zzbbk> zze = zzgkl.zzaE();

    static {
        zzbbr zzbbrVar = new zzbbr();
        zzb = zzbbrVar;
        zzgkl.zzaK(zzbbr.class, zzbbrVar);
    }

    private zzbbr() {
    }

    public static zzbbl zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzbbr zzbbrVar, zzbbk zzbbkVar) {
        Objects.requireNonNull(zzbbkVar);
        zzgku<zzbbk> zzgkuVar = zzbbrVar.zze;
        if (!zzgkuVar.zzc()) {
            zzbbrVar.zze = zzgkl.zzaF(zzgkuVar);
        }
        zzbbrVar.zze.add(zzbbkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zze", zzbbk.class});
            }
            if (i2 == 3) {
                return new zzbbr();
            }
            if (i2 == 4) {
                return new zzbbl(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
