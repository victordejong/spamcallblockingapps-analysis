package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgew.class */
public final class zzgew extends zzgkl<zzgew, zzgev> implements zzglw {
    private static final zzgew zzb;
    private int zze;
    private zzgfc zzf;
    private zzgjf zzg = zzgjf.zzb;

    static {
        zzgew zzgewVar = new zzgew();
        zzb = zzgewVar;
        zzgkl.zzaK(zzgew.class, zzgewVar);
    }

    private zzgew() {
    }

    public static zzgev zzc() {
        return zzb.zzat();
    }

    public static zzgew zze() {
        return zzb;
    }

    public static zzgew zzf(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgew) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzj(zzgew zzgewVar, zzgfc zzgfcVar) {
        Objects.requireNonNull(zzgfcVar);
        zzgewVar.zzf = zzgfcVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zze", "zzf", "zzg"});
            }
            if (i2 == 3) {
                return new zzgew();
            }
            if (i2 == 4) {
                return new zzgev(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgfc zzg() {
        zzgfc zzgfcVar = this.zzf;
        zzgfc zzgfcVar2 = zzgfcVar;
        if (zzgfcVar == null) {
            zzgfcVar2 = zzgfc.zze();
        }
        return zzgfcVar2;
    }

    public final zzgjf zzh() {
        return this.zzg;
    }
}
