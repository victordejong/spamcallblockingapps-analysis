package com.google.android.gms.internal.measurement;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgo.class */
public final class zzgo extends zzjx implements zzld {
    private static final zzgo zza;
    private int zze;
    private zzke zzf = zzjx.zzby();
    private zzgk zzg;

    static {
        zzgo zzgoVar = new zzgo();
        zza = zzgoVar;
        zzjx.zzbE(zzgo.class, zzgoVar);
    }

    private zzgo() {
    }

    public final zzgk zza() {
        zzgk zzgkVar = this.zzg;
        zzgk zzgkVar2 = zzgkVar;
        if (zzgkVar == null) {
            zzgkVar2 = zzgk.zzc();
        }
        return zzgkVar2;
    }

    public final List zzc() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.zzjx
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzjx.zzbD(zza, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\u001b\u0002ဉ��", new Object[]{"zze", "zzf", zzgt.class, "zzg"});
            }
            if (i2 == 3) {
                return new zzgo();
            }
            if (i2 == 4) {
                return new zzgn(null);
            }
            if (i2 == 5) {
                return zza;
            }
            return null;
        }
        return (byte) 1;
    }
}
