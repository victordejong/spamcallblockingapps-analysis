package com.google.android.gms.internal.ads;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import p143k2.EnumC3320a;
import p154l2.C3483a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyy.class */
public final class zzbyy {
    public static int zza(EnumC3320a enumC3320a) {
        int ordinal = enumC3320a.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return 3;
            }
            return ordinal != 2 ? 0 : 2;
        }
        return 1;
    }

    public static C3483a zzb(zzbfd zzbfdVar, boolean z) {
        List<String> list = zzbfdVar.zze;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zzbfdVar.zzb);
        int i = zzbfdVar.zzd;
        int i2 = 1;
        if (i == 1) {
            i2 = 2;
        } else if (i == 2) {
            i2 = 3;
        }
        return new C3483a(date, i2, hashSet, z, zzbfdVar.zzk);
    }
}
