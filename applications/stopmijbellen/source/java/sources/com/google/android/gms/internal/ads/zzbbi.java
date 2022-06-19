package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbi.class */
public final class zzbbi extends zzgkl<zzbbi, zzbbh> implements zzglw {
    private static final zzbbi zzb;
    private int zze;
    private int zzf;
    private zzbby zzh;
    private zzbca zzi;
    private zzbcc zzk;
    private zzbdm zzl;
    private zzbdc zzm;
    private zzbcq zzn;
    private zzbcs zzo;
    private int zzg = 1000;
    private zzgku<zzbbw> zzj = zzgkl.zzaE();
    private zzgku<zzbdy> zzp = zzgkl.zzaE();

    static {
        zzbbi zzbbiVar = new zzbbi();
        zzb = zzbbiVar;
        zzgkl.zzaK(zzbbi.class, zzbbiVar);
    }

    private zzbbi() {
    }

    public static zzbbi zzc() {
        return zzb;
    }

    public static /* synthetic */ void zze(zzbbi zzbbiVar, zzbbg zzbbgVar) {
        zzbbiVar.zzf = zzbbgVar.zza();
        zzbbiVar.zze |= 1;
    }

    public static /* synthetic */ void zzf(zzbbi zzbbiVar, zzbca zzbcaVar) {
        Objects.requireNonNull(zzbcaVar);
        zzbbiVar.zzi = zzbcaVar;
        zzbbiVar.zze |= 8;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u000b��\u0001\u0007\u0011\u000b��\u0002��\u0007ဌ��\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zze", "zzf", zzbbg.zzc(), "zzg", zzbcj.zza, "zzh", "zzi", "zzj", zzbbw.class, "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", zzbdy.class});
            } else if (i2 == 3) {
                return new zzbbi();
            } else {
                if (i2 == 4) {
                    return new zzbbh(null);
                }
                if (i2 == 5) {
                    return zzb;
                }
                return null;
            }
        }
        return (byte) 1;
    }

    public final zzbca zzd() {
        zzbca zzbcaVar = this.zzi;
        zzbca zzbcaVar2 = zzbcaVar;
        if (zzbcaVar == null) {
            zzbcaVar2 = zzbca.zzc();
        }
        return zzbcaVar2;
    }
}
