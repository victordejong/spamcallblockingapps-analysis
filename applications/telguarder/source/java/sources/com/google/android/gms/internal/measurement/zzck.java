package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzck.class */
public final class zzck extends zzhs<zzck, zzcg> implements zziy {
    private static final zzck zzi;
    private int zza;
    private int zze;
    private boolean zzg;
    private String zzf = "";
    private zzhz<String> zzh = zzhs.zzbE();

    static {
        zzck zzckVar = new zzck();
        zzi = zzckVar;
        zzhs.zzby(zzck.class, zzckVar);
    }

    private zzck() {
    }

    public static zzck zzi() {
        return zzi;
    }

    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    public final zzcj zzb() {
        zzcj zza = zzcj.zza(this.zze);
        zzcj zzcjVar = zza;
        if (zza == null) {
            zzcjVar = zzcj.UNKNOWN_MATCH_TYPE;
        }
        return zzcjVar;
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

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zzi, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဌ��\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zza", "zze", zzcj.zzb(), "zzf", "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzck();
            } else {
                if (i2 == 4) {
                    return new zzcg(null);
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
