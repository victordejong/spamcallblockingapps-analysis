package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgt.class */
public final class zzgt extends zzkd<zzgt, zzgp> implements zzlj {
    private static final zzgt zzk;
    private int zza;
    private int zze;
    private zzkk<zzgt> zzf = zzkd.zzbE();
    private String zzg = "";
    private String zzh = "";
    private boolean zzi;
    private double zzj;

    static {
        zzgt zzgtVar = new zzgt();
        zzk = zzgtVar;
        zzkd.zzby(zzgt.class, zzgtVar);
    }

    private zzgt() {
    }

    public final zzgs zza() {
        zzgs zza = zzgs.zza(this.zze);
        zzgs zzgsVar = zza;
        if (zza == null) {
            zzgsVar = zzgs.UNKNOWN;
        }
        return zzgsVar;
    }

    public final List<zzgt> zzb() {
        return this.zzf;
    }

    public final String zzc() {
        return this.zzg;
    }

    public final boolean zzd() {
        return (this.zza & 4) != 0;
    }

    public final String zze() {
        return this.zzh;
    }

    public final boolean zzf() {
        return (this.zza & 8) != 0;
    }

    public final boolean zzg() {
        return this.zzi;
    }

    public final boolean zzh() {
        return (this.zza & 16) != 0;
    }

    public final double zzi() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzk, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဌ��\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zza", "zze", zzgs.zzb(), "zzf", zzgt.class, "zzg", "zzh", "zzi", "zzj"});
            } else if (i2 == 3) {
                return new zzgt();
            } else {
                if (i2 == 4) {
                    return new zzgp(null);
                }
                if (i2 == 5) {
                    return zzk;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
