package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzfw.class */
public final class zzfw extends zzjx implements zzld {
    private static final zzfw zza;
    private zzke zze = zzjx.zzby();

    static {
        zzfw zzfwVar = new zzfw();
        zza = zzfwVar;
        zzjx.zzbE(zzfw.class, zzfwVar);
    }

    private zzfw() {
    }

    public static zzfv zza() {
        return (zzfv) zza.zzbs();
    }

    public static /* synthetic */ void zze(zzfw zzfwVar, zzfy zzfyVar) {
        zzfyVar.getClass();
        zzke zzkeVar = zzfwVar.zze;
        if (!zzkeVar.zzc()) {
            zzfwVar.zze = zzjx.zzbz(zzkeVar);
        }
        zzfwVar.zze.add(zzfyVar);
    }

    public final zzfy zzc(int i) {
        return (zzfy) this.zze.get(0);
    }

    public final List zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zze", zzfy.class});
            }
            if (i2 == 3) {
                return new zzfw();
            }
            if (i2 == 4) {
                return new zzfv(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
