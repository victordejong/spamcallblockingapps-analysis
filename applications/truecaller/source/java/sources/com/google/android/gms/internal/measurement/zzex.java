package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzex.class */
public final class zzex extends zzjx implements zzld {
    private static final zzex zza;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private zzke zzi = zzjx.zzby();

    static {
        zzex zzexVar = new zzex();
        zza = zzexVar;
        zzjx.zzbE(zzex.class, zzexVar);
    }

    private zzex() {
    }

    public static zzex zzc() {
        return zza;
    }

    public final int zza() {
        return this.zzi.size();
    }

    public final String zzd() {
        return this.zzg;
    }

    public final List zze() {
        return this.zzi;
    }

    public final boolean zzf() {
        return this.zzh;
    }

    public final boolean zzg() {
        return (this.zze & 4) != 0;
    }

    public final boolean zzh() {
        return (this.zze & 2) != 0;
    }

    public final boolean zzi() {
        return (this.zze & 1) != 0;
    }

    public final int zzj() {
        int zza2 = zzew.zza(this.zzf);
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
                return zzjx.zzbD(zza, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", zzev.zza, "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzex();
            } else {
                if (i2 == 4) {
                    return new zzet(null);
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
