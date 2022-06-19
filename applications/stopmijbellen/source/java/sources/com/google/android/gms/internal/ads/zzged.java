package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzged.class */
public final class zzged extends zzgkl<zzged, zzgec> implements zzglw {
    private static final zzged zzb;
    private zzgeg zze;

    static {
        zzged zzgedVar = new zzged();
        zzb = zzgedVar;
        zzgkl.zzaK(zzged.class, zzgedVar);
    }

    private zzged() {
    }

    public static zzgec zza() {
        return zzb.zzat();
    }

    public static zzged zzd(zzgjf zzgjfVar, zzgjx zzgjxVar) throws zzgkx {
        return (zzged) zzgkl.zzay(zzb, zzgjfVar, zzgjxVar);
    }

    public static /* synthetic */ void zzf(zzged zzgedVar, zzgeg zzgegVar) {
        Objects.requireNonNull(zzgegVar);
        zzgedVar.zze = zzgegVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zze"});
            }
            if (i2 == 3) {
                return new zzged();
            }
            if (i2 == 4) {
                return new zzgec(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }

    public final zzgeg zze() {
        zzgeg zzgegVar = this.zze;
        zzgeg zzgegVar2 = zzgegVar;
        if (zzgegVar == null) {
            zzgegVar2 = zzgeg.zze();
        }
        return zzgegVar2;
    }
}
