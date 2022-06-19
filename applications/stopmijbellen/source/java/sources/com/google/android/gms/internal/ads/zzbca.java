package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbca.class */
public final class zzbca extends zzgkl<zzbca, zzbbz> implements zzglw {
    private static final zzbca zzb;
    private int zze;
    private String zzf = "";
    private zzgku<zzbbw> zzg = zzgkl.zzaE();
    private int zzh = 1000;
    private int zzi = 1000;
    private int zzj = 1000;

    static {
        zzbca zzbcaVar = new zzbca();
        zzb = zzbcaVar;
        zzgkl.zzaK(zzbca.class, zzbcaVar);
    }

    private zzbca() {
    }

    public static zzbca zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzbca zzbcaVar, String str) {
        Objects.requireNonNull(str);
        zzbcaVar.zze |= 1;
        zzbcaVar.zzf = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgkp zzgkpVar = zzbcj.zza;
                return zzgkl.zzaJ(zzb, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zze", "zzf", "zzg", zzbbw.class, "zzh", zzgkpVar, "zzi", zzgkpVar, "zzj", zzgkpVar});
            } else if (i2 == 3) {
                return new zzbca();
            } else {
                if (i2 == 4) {
                    return new zzbbz(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
