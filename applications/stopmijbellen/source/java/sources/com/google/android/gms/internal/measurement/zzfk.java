package com.google.android.gms.internal.measurement;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfk.class */
public final class zzfk extends zzkd<zzfk, zzfj> implements zzlj {
    private static final zzfk zzi;
    private int zza;
    private int zze;
    private zzgd zzf;
    private zzgd zzg;
    private boolean zzh;

    static {
        zzfk zzfkVar = new zzfk();
        zzi = zzfkVar;
        zzkd.zzby(zzfk.class, zzfkVar);
    }

    private zzfk() {
    }

    public static zzfj zzh() {
        return zzi.zzbt();
    }

    public static /* synthetic */ void zzj(zzfk zzfkVar, int i) {
        zzfkVar.zza |= 1;
        zzfkVar.zze = i;
    }

    public static /* synthetic */ void zzk(zzfk zzfkVar, zzgd zzgdVar) {
        Objects.requireNonNull(zzgdVar);
        zzfkVar.zzf = zzgdVar;
        zzfkVar.zza |= 2;
    }

    public static /* synthetic */ void zzm(zzfk zzfkVar, zzgd zzgdVar) {
        zzfkVar.zzg = zzgdVar;
        zzfkVar.zza |= 4;
    }

    public static /* synthetic */ void zzn(zzfk zzfkVar, boolean z) {
        zzfkVar.zza |= 8;
        zzfkVar.zzh = z;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final zzgd zzc() {
        zzgd zzgdVar = this.zzf;
        zzgd zzgdVar2 = zzgdVar;
        if (zzgdVar == null) {
            zzgdVar2 = zzgd.zzm();
        }
        return zzgdVar2;
    }

    public final boolean zzd() {
        return (this.zza & 4) != 0;
    }

    public final zzgd zze() {
        zzgd zzgdVar = this.zzg;
        zzgd zzgdVar2 = zzgdVar;
        if (zzgdVar == null) {
            zzgdVar2 = zzgd.zzm();
        }
        return zzgdVar2;
    }

    public final boolean zzf() {
        return (this.zza & 8) != 0;
    }

    public final boolean zzg() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zza", "zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzfk();
            }
            if (i2 == 4) {
                return new zzfj(null);
            }
            if (i2 == 5) {
                return zzi;
            }
            return null;
        }
        return (byte) 1;
    }
}
