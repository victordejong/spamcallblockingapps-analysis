package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbdk.class */
public final class zzbdk extends zzgkl<zzbdk, zzbdg> implements zzglw {
    private static final zzbdk zzb;
    private int zze;
    private int zzg;
    private int zzh;
    private long zzi;
    private long zzl;
    private zzgku<zzbdf> zzf = zzgkl.zzaE();
    private String zzj = "";
    private String zzk = "";

    static {
        zzbdk zzbdkVar = new zzbdk();
        zzb = zzbdkVar;
        zzgkl.zzaK(zzbdk.class, zzbdkVar);
    }

    private zzbdk() {
    }

    public static zzbdg zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzbdk zzbdkVar, Iterable iterable) {
        zzgku<zzbdf> zzgkuVar = zzbdkVar.zzf;
        if (!zzgkuVar.zzc()) {
            zzbdkVar.zzf = zzgkl.zzaF(zzgkuVar);
        }
        zzgin.zzap(iterable, zzbdkVar.zzf);
    }

    public static /* synthetic */ void zze(zzbdk zzbdkVar, int i) {
        zzbdkVar.zze |= 1;
        zzbdkVar.zzg = i;
    }

    public static /* synthetic */ void zzf(zzbdk zzbdkVar, int i) {
        zzbdkVar.zze |= 2;
        zzbdkVar.zzh = i;
    }

    public static /* synthetic */ void zzg(zzbdk zzbdkVar, long j) {
        zzbdkVar.zze |= 4;
        zzbdkVar.zzi = j;
    }

    public static /* synthetic */ void zzh(zzbdk zzbdkVar, String str) {
        Objects.requireNonNull(str);
        zzbdkVar.zze |= 8;
        zzbdkVar.zzj = str;
    }

    public static /* synthetic */ void zzi(zzbdk zzbdkVar, String str) {
        Objects.requireNonNull(str);
        zzbdkVar.zze |= 16;
        zzbdkVar.zzk = str;
    }

    public static /* synthetic */ void zzj(zzbdk zzbdkVar, long j) {
        zzbdkVar.zze |= 32;
        zzbdkVar.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002င��\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zze", "zzf", zzbdf.class, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl"});
            }
            if (i2 == 3) {
                return new zzbdk();
            }
            if (i2 == 4) {
                return new zzbdg(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
