package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbce.class */
public final class zzbce extends zzgkl<zzbce, zzbcd> implements zzglw {
    private static final zzbce zzb;
    private int zze;
    private zzbdu zzg;
    private int zzh;
    private zzbdw zzi;
    private int zzj;
    private String zzf = "";
    private int zzk = 1000;
    private int zzl = 1000;
    private int zzm = 1000;

    static {
        zzbce zzbceVar = new zzbce();
        zzb = zzbceVar;
        zzgkl.zzaK(zzbce.class, zzbceVar);
    }

    private zzbce() {
    }

    public static zzbce zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzbce zzbceVar, String str) {
        zzbceVar.zze |= 1;
        zzbceVar.zzf = str;
    }

    public static /* synthetic */ void zze(zzbce zzbceVar, zzbdw zzbdwVar) {
        Objects.requireNonNull(zzbdwVar);
        zzbceVar.zzi = zzbdwVar;
        zzbceVar.zze |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                zzgkp zzgkpVar = zzbcj.zza;
                return zzgkl.zzaJ(zzb, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzgkpVar, "zzl", zzgkpVar, "zzm", zzgkpVar});
            } else if (i2 == 3) {
                return new zzbce();
            } else {
                if (i2 == 4) {
                    return new zzbcd(null);
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
