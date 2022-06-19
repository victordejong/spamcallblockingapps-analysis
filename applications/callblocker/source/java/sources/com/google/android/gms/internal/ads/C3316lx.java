package com.google.android.gms.internal.ads;

import com.google.ads.C2213a;
import com.google.ads.mediation.C2224a;
import java.util.Date;
import java.util.HashSet;
/* renamed from: com.google.android.gms.internal.ads.lx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lx.class */
public final class C3316lx {
    /* renamed from: a */
    public static int m7497a(C2213a.EnumC2214a enumC2214a) {
        int i;
        switch (C3318lz.f16954a[enumC2214a.ordinal()]) {
            case 2:
                i = 1;
                break;
            case 3:
                i = 2;
                break;
            case 4:
                i = 3;
                break;
            default:
                i = 0;
                break;
        }
        return i;
    }

    /* renamed from: a */
    public static C2224a m7496a(dya dyaVar, boolean z) {
        C2213a.EnumC2215b enumC2215b;
        HashSet hashSet = dyaVar.f16071e != null ? new HashSet(dyaVar.f16071e) : null;
        Date date = new Date(dyaVar.f16068b);
        switch (dyaVar.f16070d) {
            case 1:
                enumC2215b = C2213a.EnumC2215b.MALE;
                break;
            case 2:
                enumC2215b = C2213a.EnumC2215b.FEMALE;
                break;
            default:
                enumC2215b = C2213a.EnumC2215b.UNKNOWN;
                break;
        }
        return new C2224a(date, enumC2215b, hashSet, z, dyaVar.f16077k);
    }
}
