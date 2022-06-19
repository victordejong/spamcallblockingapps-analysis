package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgt.class */
public final class zzgt extends zzjx implements zzld {
    private static final zzgt zza;
    private int zze;
    private int zzf;
    private zzke zzg = zzjx.zzby();
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    static {
        zzgt zzgtVar = new zzgt();
        zza = zzgtVar;
        zzjx.zzbE(zzgt.class, zzgtVar);
    }

    private zzgt() {
    }

    public final double zza() {
        return this.zzk;
    }

    public final String zzc() {
        return this.zzh;
    }

    public final String zzd() {
        return this.zzi;
    }

    public final List zze() {
        return this.zzg;
    }

    public final boolean zzf() {
        return this.zzj;
    }

    public final boolean zzg() {
        return (this.zze & 8) != 0;
    }

    public final boolean zzh() {
        return (this.zze & 16) != 0;
    }

    public final boolean zzi() {
        return (this.zze & 4) != 0;
    }

    public final int zzj() {
        int zza2 = zzgs.zza(this.zzf);
        int i = zza2;
        if (zza2 == 0) {
            i = 1;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001ဌ��\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", zzgr.zza, "zzg", zzgt.class, "zzh", "zzi", "zzj", "zzk"});
            } else if (i2 == 3) {
                return new zzgt();
            } else {
                if (i2 == 4) {
                    return new zzgp(null);
                }
                if (i2 == 5) {
                    return zza;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
