package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgf.class */
public final class zzgf extends zzjx implements zzld {
    private static final zzgf zza;
    private int zze;
    private int zzf;
    private zzkd zzg = zzjx.zzbw();

    static {
        zzgf zzgfVar = new zzgf();
        zza = zzgfVar;
        zzjx.zzbE(zzgf.class, zzgfVar);
    }

    private zzgf() {
    }

    public static zzge zzd() {
        return (zzge) zza.zzbs();
    }

    public static /* synthetic */ void zzg(zzgf zzgfVar, int i) {
        zzgfVar.zze |= 1;
        zzgfVar.zzf = i;
    }

    public static /* synthetic */ void zzh(zzgf zzgfVar, Iterable iterable) {
        zzkd zzkdVar = zzgfVar.zzg;
        if (!zzkdVar.zzc()) {
            zzgfVar.zzg = zzjx.zzbx(zzkdVar);
        }
        zzih.zzbo(iterable, zzgfVar.zzg);
    }

    public final int zza() {
        return this.zzg.size();
    }

    public final int zzb() {
        return this.zzf;
    }

    public final long zzc(int i) {
        return this.zzg.zza(i);
    }

    public final List zzf() {
        return this.zzg;
    }

    public final boolean zzi() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgf();
            }
            if (i2 == 4) {
                return new zzge(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
