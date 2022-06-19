package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfv.class */
public final class zzgfv extends zzgkl<zzgfv, zzgfs> implements zzglw {
    private static final zzgfv zzb;
    private int zze;
    private zzgku<zzgfu> zzf = zzgkl.zzaE();

    static {
        zzgfv zzgfvVar = new zzgfv();
        zzb = zzgfvVar;
        zzgkl.zzaK(zzgfv.class, zzgfvVar);
    }

    private zzgfv() {
    }

    public static zzgfs zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zze(zzgfv zzgfvVar, zzgfu zzgfuVar) {
        Objects.requireNonNull(zzgfuVar);
        zzgku<zzgfu> zzgkuVar = zzgfvVar.zzf;
        if (!zzgkuVar.zzc()) {
            zzgfvVar.zzf = zzgkl.zzaF(zzgkuVar);
        }
        zzgfvVar.zzf.add(zzgfuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", zzgfu.class});
            }
            if (i2 == 3) {
                return new zzgfv();
            }
            if (i2 == 4) {
                return new zzgfs(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
