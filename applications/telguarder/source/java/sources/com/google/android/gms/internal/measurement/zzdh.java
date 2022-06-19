package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzdh.class */
public final class zzdh extends zzhs<zzdh, zzdg> implements zziy {
    private static final zzdh zze;
    private zzhz<zzdj> zza = zzbE();

    static {
        zzdh zzdhVar = new zzdh();
        zze = zzdhVar;
        zzhs.zzby(zzdh.class, zzdhVar);
    }

    private zzdh() {
    }

    public static zzdg zzc() {
        return zze.zzbt();
    }

    public static /* synthetic */ void zze(zzdh zzdhVar, zzdj zzdjVar) {
        zzdjVar.getClass();
        zzhz<zzdj> zzhzVar = zzdhVar.zza;
        if (!zzhzVar.zza()) {
            zzdhVar.zza = zzhs.zzbF(zzhzVar);
        }
        zzdhVar.zza.add(zzdjVar);
    }

    public final List<zzdj> zza() {
        return this.zza;
    }

    public final zzdj zzb(int i) {
        return this.zza.get(0);
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzbz(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zza", zzdj.class});
            }
            if (i2 == 3) {
                return new zzdh();
            }
            if (i2 == 4) {
                return new zzdg(null);
            }
            if (i2 == 5) {
                return zze;
            }
            return null;
        }
        return (byte) 1;
    }
}
