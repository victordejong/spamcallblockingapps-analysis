package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgbw.class */
public final class zzgbw extends zzgkl<zzgbw, zzgbv> implements zzglw {
    private static final zzgbw zzb;
    private int zze;
    private zzgbz zzf;

    static {
        zzgbw zzgbwVar = new zzgbw();
        zzb = zzgbwVar;
        zzgkl.zzaK(zzgbw.class, zzgbwVar);
    }

    private zzgbw() {
    }

    public static zzgbv zzc() {
        return zzb.zzat();
    }

    public static zzgbw zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgbw) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzh(zzgbw zzgbwVar, zzgbz zzgbzVar) {
        Objects.requireNonNull(zzgbzVar);
        zzgbwVar.zzf = zzgbzVar;
    }

    public final int zza() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zze", "zzf"});
            }
            if (i2 == 3) {
                return new zzgbw();
            }
            if (i2 == 4) {
                return new zzgbv(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgbz zzf() {
        zzgbz zzgbzVar = this.zzf;
        zzgbz zzgbzVar2 = zzgbzVar;
        if (zzgbzVar == null) {
            zzgbzVar2 = zzgbz.zze();
        }
        return zzgbzVar2;
    }
}
