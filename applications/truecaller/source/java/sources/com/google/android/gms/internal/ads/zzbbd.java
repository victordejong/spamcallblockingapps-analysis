package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbd.class */
public final class zzbbd extends zzgga<zzbbd, zzbaw> implements zzghj {
    private static final zzbbd zzg;
    private int zzb;
    private int zze;
    private int zzf;

    static {
        zzbbd zzbbdVar = new zzbbd();
        zzg = zzbbdVar;
        zzgga.zzay(zzbbd.class, zzbbdVar);
    }

    private zzbbd() {
    }

    public static zzbaw zzd() {
        return zzg.zzas();
    }

    public static zzbbd zze() {
        return zzg;
    }

    public static /* synthetic */ void zzi(zzbbd zzbbdVar, int i) {
        zzbbdVar.zze = i - 1;
        zzbbdVar.zzb |= 1;
    }

    public static /* synthetic */ void zzj(zzbbd zzbbdVar, int i) {
        zzbbdVar.zzf = i - 1;
        zzbbdVar.zzb |= 2;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgga
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgga.zzaz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zzb", "zze", zzbbb.zza, "zzf", zzbay.zza});
            } else if (i2 == 3) {
                return new zzbbd();
            } else {
                if (i2 == 4) {
                    return new zzbaw(null);
                }
                if (i2 == 5) {
                    return zzg;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final int zzg() {
        int zza = zzbbc.zza(this.zze);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public final int zzh() {
        int zza = zzbaz.zza(this.zzf);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }
}
