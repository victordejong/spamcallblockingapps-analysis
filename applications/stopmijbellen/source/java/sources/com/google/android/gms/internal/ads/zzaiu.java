package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaiu.class */
public final class zzaiu extends zzgkl<zzaiu, zzait> implements zzglw {
    private static final zzaiu zzb;
    private int zze;
    private int zzf = 2;

    static {
        zzaiu zzaiuVar = new zzaiu();
        zzb = zzaiuVar;
        zzgkl.zzaK(zzaiu.class, zzaiuVar);
    }

    private zzaiu() {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001bဌ��", new Object[]{"zze", "zzf", zzaiv.zza});
            } else if (i2 == 3) {
                return new zzaiu();
            } else {
                if (i2 == 4) {
                    return new zzait(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
