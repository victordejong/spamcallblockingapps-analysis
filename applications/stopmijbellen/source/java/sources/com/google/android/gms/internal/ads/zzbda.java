package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbda.class */
public final class zzbda extends zzgkl<zzbda, zzbct> implements zzglw {
    private static final zzbda zzb;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzbda zzbdaVar = new zzbda();
        zzb = zzbdaVar;
        zzgkl.zzaK(zzbda.class, zzbdaVar);
    }

    private zzbda() {
    }

    public static zzbct zza() {
        return zzb.zzat();
    }

    public static zzbda zzd() {
        return zzb;
    }

    public static /* synthetic */ void zzi(zzbda zzbdaVar, int i) {
        zzbdaVar.zzf = i - 1;
        zzbdaVar.zze |= 1;
    }

    public static /* synthetic */ void zzj(zzbda zzbdaVar, int i) {
        zzbdaVar.zzg = i - 1;
        zzbdaVar.zze |= 2;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zze", "zzf", zzbcy.zza, "zzg", zzbcv.zza});
            } else if (i2 == 3) {
                return new zzbda();
            } else {
                if (i2 == 4) {
                    return new zzbct(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final boolean zze() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzf() {
        return (this.zze & 1) != 0;
    }

    public final int zzg() {
        int zza = zzbcw.zza(this.zzg);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzh() {
        int zza = zzbcz.zza(this.zzf);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }
}
