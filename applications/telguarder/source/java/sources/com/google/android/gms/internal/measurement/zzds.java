package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzds.class */
public final class zzds extends zzhs<zzds, zzdr> implements zziy {
    private static final zzds zzg;
    private int zza;
    private int zze;
    private zzhy zzf = zzbC();

    static {
        zzds zzdsVar = new zzds();
        zzg = zzdsVar;
        zzhs.zzby(zzds.class, zzdsVar);
    }

    private zzds() {
    }

    public static zzdr zzf() {
        return zzg.zzbt();
    }

    public static /* synthetic */ void zzh(zzds zzdsVar, int i) {
        zzdsVar.zza |= 1;
        zzdsVar.zze = i;
    }

    public static /* synthetic */ void zzi(zzds zzdsVar, Iterable iterable) {
        zzhy zzhyVar = zzdsVar.zzf;
        if (!zzhyVar.zza()) {
            zzdsVar.zzf = zzhs.zzbD(zzhyVar);
        }
        zzgb.zzbs(iterable, zzdsVar.zzf);
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final int zzb() {
        return this.zze;
    }

    public final List<Long> zzc() {
        return this.zzf;
    }

    public final int zzd() {
        return this.zzf.size();
    }

    public final long zze(int i) {
        return this.zzf.zzc(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzg, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001င��\u0002\u0014", new Object[]{"zza", "zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzds();
            }
            if (i2 == 4) {
                return new zzdr(null);
            }
            if (i2 == 5) {
                return zzg;
            }
            return null;
        }
        return (byte) 1;
    }
}
