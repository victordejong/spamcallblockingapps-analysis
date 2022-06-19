package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.AdRequest$Gender;
import com.google.ads.mediation.C4586a;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a90.class */
public final class a90 {
    /* renamed from: a */
    public static int m16670a(AdRequest$ErrorCode adRequest$ErrorCode) {
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
    public static C4586a m16669b(zzbdg zzbdgVar, boolean z) {
        List<String> list = zzbdgVar.f33663h;
        HashSet hashSet = list != null ? new HashSet(list) : null;
        Date date = new Date(zzbdgVar.f33660e);
        int i = zzbdgVar.f33662g;
        return new C4586a(date, i != 1 ? i != 2 ? AdRequest$Gender.UNKNOWN : AdRequest$Gender.FEMALE : AdRequest$Gender.MALE, hashSet, z, zzbdgVar.f33669n);
    }
}
