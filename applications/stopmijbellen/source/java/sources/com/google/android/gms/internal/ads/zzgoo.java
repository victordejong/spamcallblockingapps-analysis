package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgoo.class */
public final class zzgoo extends zzgkl<zzgoo, zzgom> implements zzglw {
    private static final zzgoo zzb;
    private int zze;
    private int zzf;
    private String zzg = "";
    private zzgjf zzh = zzgjf.zzb;

    static {
        zzgoo zzgooVar = new zzgoo();
        zzb = zzgooVar;
        zzgkl.zzaK(zzgoo.class, zzgooVar);
    }

    private zzgoo() {
    }

    public static zzgom zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ zzgoo zzc() {
        return zzb;
    }

    public static /* synthetic */ void zzd(zzgoo zzgooVar, String str) {
        zzgooVar.zze |= 2;
        zzgooVar.zzg = "image/png";
    }

    public static /* synthetic */ void zze(zzgoo zzgooVar, zzgjf zzgjfVar) {
        Objects.requireNonNull(zzgjfVar);
        zzgooVar.zze |= 4;
        zzgooVar.zzh = zzgjfVar;
    }

    public static /* synthetic */ void zzf(zzgoo zzgooVar, int i) {
        zzgooVar.zzf = 1;
        zzgooVar.zze = 1 | zzgooVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zze", "zzf", zzgon.zza, "zzg", "zzh"});
            } else if (i2 == 3) {
                return new zzgoo();
            } else {
                if (i2 == 4) {
                    return new zzgom(null);
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
