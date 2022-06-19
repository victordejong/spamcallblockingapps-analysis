package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.AdRequest$Gender;
import com.google.ads.mediation.C1271a;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.pf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pf.class */
public final class C1889pf {
    /* renamed from: a */
    public static int m6213a(AdRequest$ErrorCode adRequest$ErrorCode) {
        AdRequest$ErrorCode adRequest$ErrorCode2 = AdRequest$ErrorCode.INVALID_REQUEST;
        AdRequest$Gender adRequest$Gender = AdRequest$Gender.UNKNOWN;
        int ordinal = adRequest$ErrorCode.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return 3;
            }
            return ordinal != 2 ? 0 : 2;
        }
        return 1;
    }

    /* renamed from: b */
    public static C1271a m6212b(zzys zzysVar, boolean z) {
        List list = zzysVar.f;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zzysVar.c);
        int i = zzysVar.e;
        return new C1271a(date, i != 1 ? i != 2 ? AdRequest$Gender.UNKNOWN : AdRequest$Gender.FEMALE : AdRequest$Gender.MALE, hashSet, z, zzysVar.l);
    }
}
