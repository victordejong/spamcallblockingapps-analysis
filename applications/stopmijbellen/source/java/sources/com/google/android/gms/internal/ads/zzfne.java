package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfne.class */
public final class zzfne extends zzgkl<zzfne, zzfnd> implements zzglw {
    private static final zzgkr<Integer, Object> zzb = new zzfnb();
    private static final zzfne zze;
    private int zzf;
    private zzgkq zzg = zzgkl.zzaB();
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        zzfne zzfneVar = new zzfne();
        zze = zzfneVar;
        zzgkl.zzaK(zzfne.class, zzfneVar);
    }

    private zzfne() {
    }

    public static zzfnd zza() {
        return zze.zzat();
    }

    public static /* synthetic */ void zzd(zzfne zzfneVar, String str) {
        Objects.requireNonNull(str);
        zzfneVar.zzf |= 1;
        zzfneVar.zzh = str;
    }

    public static /* synthetic */ void zze(zzfne zzfneVar, int i) {
        zzgkq zzgkqVar = zzfneVar.zzg;
        if (!zzgkqVar.zzc()) {
            zzfneVar.zzg = zzgkl.zzaC(zzgkqVar);
        }
        zzfneVar.zzg.zzh(2);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zze, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzf", "zzg", zzfnc.zza, "zzh", "zzi", "zzj"});
            } else if (i2 == 3) {
                return new zzfne();
            } else {
                if (i2 == 4) {
                    return new zzfnd(null);
                }
                if (i2 == 5) {
                    return zze;
                }
                return null;
            }
        }
        return (byte) 1;
    }
}
