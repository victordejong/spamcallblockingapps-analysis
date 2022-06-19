package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgcu.class */
public final class zzgcu extends zzgkl<zzgcu, zzgct> implements zzglw {
    private static final zzgcu zzb;
    private zzgcx zze;
    private int zzf;

    static {
        zzgcu zzgcuVar = new zzgcu();
        zzb = zzgcuVar;
        zzgkl.zzaK(zzgcu.class, zzgcuVar);
    }

    private zzgcu() {
    }

    public static zzgct zzc() {
        return zzb.zzat();
    }

    public static zzgcu zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgcu) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzg(zzgcu zzgcuVar, zzgcx zzgcxVar) {
        Objects.requireNonNull(zzgcxVar);
        zzgcuVar.zze = zzgcxVar;
    }

    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgcu();
            }
            if (i2 == 4) {
                return new zzgct(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgcx zzf() {
        zzgcx zzgcxVar = this.zze;
        zzgcx zzgcxVar2 = zzgcxVar;
        if (zzgcxVar == null) {
            zzgcxVar2 = zzgcx.zze();
        }
        return zzgcxVar2;
    }
}
