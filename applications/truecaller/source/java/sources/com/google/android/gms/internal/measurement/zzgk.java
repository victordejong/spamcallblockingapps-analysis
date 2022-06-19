package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgk.class */
public final class zzgk extends zzjx implements zzld {
    private static final zzgk zza;
    private zzke zze = zzjx.zzby();

    static {
        zzgk zzgkVar = new zzgk();
        zza = zzgkVar;
        zzjx.zzbE(zzgk.class, zzgkVar);
    }

    private zzgk() {
    }

    public static zzgk zzc() {
        return zza;
    }

    public final int zza() {
        return this.zze.size();
    }

    public final List zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zze", zzgm.class});
            }
            if (i2 == 3) {
                return new zzgk();
            }
            if (i2 == 4) {
                return new zzgj(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
