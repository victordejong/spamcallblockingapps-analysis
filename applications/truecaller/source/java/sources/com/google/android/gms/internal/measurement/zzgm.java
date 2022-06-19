package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgm.class */
public final class zzgm extends zzjx implements zzld {
    private static final zzgm zza;
    private int zze;
    private String zzf = "";
    private zzke zzg = zzjx.zzby();

    static {
        zzgm zzgmVar = new zzgm();
        zza = zzgmVar;
        zzjx.zzbE(zzgm.class, zzgmVar);
    }

    private zzgm() {
    }

    public final String zzb() {
        return this.zzf;
    }

    public final List zzc() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဈ��\u0002\u001b", new Object[]{"zze", "zzf", "zzg", zzgt.class});
            }
            if (i2 == 3) {
                return new zzgm();
            }
            if (i2 == 4) {
                return new zzgl(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
