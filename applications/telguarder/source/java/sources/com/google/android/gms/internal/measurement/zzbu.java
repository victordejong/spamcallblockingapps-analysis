package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbu.class */
public final class zzbu extends zzhs<zzbu, zzbt> implements zziy {
    private static final zzbu zzj;
    private int zza;
    private int zze;
    private zzhz<zzcf> zzf = zzbE();
    private zzhz<zzbw> zzg = zzbE();
    private boolean zzh;
    private boolean zzi;

    static {
        zzbu zzbuVar = new zzbu();
        zzj = zzbuVar;
        zzhs.zzby(zzbu.class, zzbuVar);
    }

    private zzbu() {
    }

    public static /* synthetic */ void zzj(zzbu zzbuVar, int i, zzcf zzcfVar) {
        zzcfVar.getClass();
        zzhz<zzcf> zzhzVar = zzbuVar.zzf;
        if (!zzhzVar.zza()) {
            zzbuVar.zzf = zzhs.zzbF(zzhzVar);
        }
        zzbuVar.zzf.set(i, zzcfVar);
    }

    public static /* synthetic */ void zzk(zzbu zzbuVar, int i, zzbw zzbwVar) {
        zzbwVar.getClass();
        zzhz<zzbw> zzhzVar = zzbuVar.zzg;
        if (!zzhzVar.zza()) {
            zzbuVar.zzg = zzhs.zzbF(zzhzVar);
        }
        zzbuVar.zzg.set(i, zzbwVar);
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final List<zzcf> zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzf.size();
    }

    public final zzcf zze(int i) {
        return this.zzf.get(i);
    }

    public final List<zzbw> zzf() {
        return this.zzg;
    }

    public final int zzg() {
        return this.zzg.size();
    }

    public final zzbw zzh(int i) {
        return this.zzg.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zza", "zze", "zzf", zzcf.class, "zzg", zzbw.class, "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzbu();
            }
            if (i2 == 4) {
                return new zzbt(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
