package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfni.class */
public final class zzfni extends zzgkl<zzfni, zzfng> implements zzglw {
    private static final zzfni zzb;
    private int zze;
    private int zzf;
    private String zzg = "";
    private String zzh = "";
    private zzfne zzi;

    static {
        zzfni zzfniVar = new zzfni();
        zzb = zzfniVar;
        zzgkl.zzaK(zzfni.class, zzfniVar);
    }

    private zzfni() {
    }

    public static zzfng zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzfni zzfniVar, String str) {
        Objects.requireNonNull(str);
        zzfniVar.zze |= 2;
        zzfniVar.zzg = str;
    }

    public static /* synthetic */ void zze(zzfni zzfniVar, zzfne zzfneVar) {
        Objects.requireNonNull(zzfneVar);
        zzfniVar.zzi = zzfneVar;
        zzfniVar.zze |= 8;
    }

    public static /* synthetic */ void zzf(zzfni zzfniVar, int i) {
        zzfniVar.zzf = 1;
        zzfniVar.zze = 1 | zzfniVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zze", "zzf", zzfnh.zza, "zzg", "zzh", "zzi"});
            } else if (i2 == 3) {
                return new zzfni();
            } else {
                if (i2 == 4) {
                    return new zzfng(null);
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
