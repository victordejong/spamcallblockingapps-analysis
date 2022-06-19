package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeh.class */
public final class zzeh extends zzkd<zzeh, zzeg> implements zzlj {
    private static final zzeh zzj;
    private int zza;
    private int zze;
    private zzkk<zzes> zzf = zzkd.zzbE();
    private zzkk<zzej> zzg = zzkd.zzbE();
    private boolean zzh;
    private boolean zzi;

    static {
        zzeh zzehVar = new zzeh();
        zzj = zzehVar;
        zzkd.zzby(zzeh.class, zzehVar);
    }

    private zzeh() {
    }

    public static /* synthetic */ void zzj(zzeh zzehVar, int i, zzes zzesVar) {
        Objects.requireNonNull(zzesVar);
        zzkk<zzes> zzkkVar = zzehVar.zzf;
        if (!zzkkVar.zza()) {
            zzehVar.zzf = zzkd.zzbF(zzkkVar);
        }
        zzehVar.zzf.set(i, zzesVar);
    }

    public static /* synthetic */ void zzk(zzeh zzehVar, int i, zzej zzejVar) {
        Objects.requireNonNull(zzejVar);
        zzkk<zzej> zzkkVar = zzehVar.zzg;
        if (!zzkkVar.zza()) {
            zzehVar.zzg = zzkd.zzbF(zzkkVar);
        }
        zzehVar.zzg.set(i, zzejVar);
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final List<zzes> zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzf.size();
    }

    public final zzes zze(int i) {
        return this.zzf.get(i);
    }

    public final List<zzej> zzf() {
        return this.zzg;
    }

    public final int zzg() {
        return this.zzg.size();
    }

    public final zzej zzh(int i) {
        return this.zzg.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzj, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zza", "zze", "zzf", zzes.class, "zzg", zzej.class, "zzh", "zzi"});
            }
            if (i2 == 3) {
                return new zzeh();
            }
            if (i2 == 4) {
                return new zzeg(null);
            }
            if (i2 == 5) {
                return zzj;
            }
            return null;
        }
        return (byte) 1;
    }
}
