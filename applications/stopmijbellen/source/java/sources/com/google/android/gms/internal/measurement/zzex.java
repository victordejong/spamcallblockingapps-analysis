package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzex.class */
public final class zzex extends zzkd<zzex, zzet> implements zzlj {
    private static final zzex zzi;
    private int zza;
    private int zze;
    private boolean zzg;
    private String zzf = "";
    private zzkk<String> zzh = zzkd.zzbE();

    static {
        zzex zzexVar = new zzex();
        zzi = zzexVar;
        zzkd.zzby(zzex.class, zzexVar);
    }

    private zzex() {
    }

    public static zzex zzi() {
        return zzi;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzew zzb() {
        zzew zza = zzew.zza(this.zze);
        zzew zzewVar = zza;
        if (zza == null) {
            zzewVar = zzew.UNKNOWN_MATCH_TYPE;
        }
        return zzewVar;
    }

    public final boolean zzc() {
        return (this.zza & 2) != 0;
    }

    public final String zzd() {
        return this.zzf;
    }

    public final boolean zze() {
        return (this.zza & 4) != 0;
    }

    public final boolean zzf() {
        return this.zzg;
    }

    public final List<String> zzg() {
        return this.zzh;
    }

    public final int zzh() {
        return this.zzh.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzkd
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzkd.zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zza", "zze", zzew.zzb(), "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzex();
            } else {
                if (i2 == 4) {
                    return new zzet(null);
                }
                if (i2 == 5) {
                    return zzi;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
