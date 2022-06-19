package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgge.class */
public final class zzgge extends zzgkl<zzgge, zzggd> implements zzglw {
    private static final zzgge zzb;
    private int zze;
    private zzggh zzf;

    static {
        zzgge zzggeVar = new zzgge();
        zzb = zzggeVar;
        zzgkl.zzaK(zzgge.class, zzggeVar);
    }

    private zzgge() {
    }

    public static zzggd zzc() {
        return zzb.zzat();
    }

    public static zzgge zze(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzgge) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzh(zzgge zzggeVar, zzggh zzgghVar) {
        Objects.requireNonNull(zzgghVar);
        zzggeVar.zzf = zzgghVar;
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
                return new zzgge();
            }
            if (i2 == 4) {
                return new zzggd(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzggh zzf() {
        zzggh zzgghVar = this.zzf;
        zzggh zzgghVar2 = zzgghVar;
        if (zzgghVar == null) {
            zzgghVar2 = zzggh.zzd();
        }
        return zzgghVar2;
    }
}
