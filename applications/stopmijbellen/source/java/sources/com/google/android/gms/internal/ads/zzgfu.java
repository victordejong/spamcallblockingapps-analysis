package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgfu.class */
public final class zzgfu extends zzgkl<zzgfu, zzgft> implements zzglw {
    private static final zzgfu zzb;
    private String zze = "";
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        zzgfu zzgfuVar = new zzgfu();
        zzb = zzgfuVar;
        zzgkl.zzaK(zzgfu.class, zzgfuVar);
    }

    private zzgfu() {
    }

    public static zzgft zza() {
        return zzb.zzat();
    }

    public static /* synthetic */ void zzd(zzgfu zzgfuVar, String str) {
        Objects.requireNonNull(str);
        zzgfuVar.zze = str;
    }

    public static /* synthetic */ void zzg(zzgfu zzgfuVar, int i) {
        if (i != 1) {
            zzgfuVar.zzf = i - 2;
            return;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 == 2) {
                return zzgkl.zzaJ(zzb, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
            }
            if (i2 == 3) {
                return new zzgfu();
            }
            if (i2 == 4) {
                return new zzgft(null);
            }
            if (i2 == 5) {
                return zzb;
            }
            return null;
        }
        return (byte) 1;
    }
}
