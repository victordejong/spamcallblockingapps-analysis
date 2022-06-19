package com.google.android.gms.internal.ads;

import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzggm.class */
public final class zzggm extends zzgkl<zzggm, zzggl> implements zzglw {
    private static final zzggm zzb;
    private String zze = "";
    private zzgku<zzgfl> zzf = zzgkl.zzaE();

    static {
        zzggm zzggmVar = new zzggm();
        zzb = zzggmVar;
        zzgkl.zzaK(zzggm.class, zzggmVar);
    }

    private zzggm() {
    }

    public static zzggm zzc() {
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zze", "zzf", zzgfl.class});
            }
            if (i2 == 3) {
                return new zzggm();
            }
            if (i2 == 4) {
                return new zzggl(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final List<zzgfl> zzd() {
        return this.zzf;
    }
}
