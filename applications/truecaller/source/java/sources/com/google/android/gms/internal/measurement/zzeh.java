package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzeh.class */
public final class zzeh extends zzjx implements zzld {
    private static final zzeh zza;
    private int zze;
    private int zzf;
    private zzke zzg = zzjx.zzby();
    private zzke zzh = zzjx.zzby();
    private boolean zzi;
    private boolean zzj;

    static {
        zzeh zzehVar = new zzeh();
        zza = zzehVar;
        zzjx.zzbE(zzeh.class, zzehVar);
    }

    private zzeh() {
    }

    public static /* synthetic */ void zzi(zzeh zzehVar, int i, zzes zzesVar) {
        zzesVar.getClass();
        zzke zzkeVar = zzehVar.zzg;
        if (!zzkeVar.zzc()) {
            zzehVar.zzg = zzjx.zzbz(zzkeVar);
        }
        zzehVar.zzg.set(i, zzesVar);
    }

    public static /* synthetic */ void zzj(zzeh zzehVar, int i, zzej zzejVar) {
        zzejVar.getClass();
        zzke zzkeVar = zzehVar.zzh;
        if (!zzkeVar.zzc()) {
            zzehVar.zzh = zzjx.zzbz(zzkeVar);
        }
        zzehVar.zzh.set(i, zzejVar);
    }

    public final int zza() {
        return this.zzf;
    }

    public final int zzb() {
        return this.zzh.size();
    }

    public final int zzc() {
        return this.zzg.size();
    }

    public final zzej zze(int i) {
        return (zzej) this.zzh.get(i);
    }

    public final zzes zzf(int i) {
        return (zzes) this.zzg.get(i);
    }

    public final List zzg() {
        return this.zzh;
    }

    public final List zzh() {
        return this.zzg;
    }

    public final boolean zzk() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0002��\u0001င��\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", zzes.class, "zzh", zzej.class, "zzi", "zzj"});
            }
            if (i2 == 3) {
                return new zzeh();
            }
            if (i2 == 4) {
                return new zzeg(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
