package com.google.android.gms.internal.ads;

import com.google.ads.C10582a;
import com.google.ads.mediation.C10593a;
import java.util.Date;
import java.util.HashSet;
/* renamed from: com.google.android.gms.internal.ads.oe */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oe.class */
public final class C12793oe {
    /* renamed from: a */
    public static int m14330a(C10582a.EnumC10583a enumC10583a) {
        int i = C12792od.f49629a[enumC10583a.ordinal()];
        if (i != 2) {
            if (i == 3) {
                return 2;
            }
            return i != 4 ? 0 : 3;
        }
        return 1;
    }

    /* renamed from: a */
    public static C10593a m14329a(zzvq zzvqVar, boolean z) {
        HashSet hashSet = zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null;
        Date date = new Date(zzvqVar.zzcia);
        int i = zzvqVar.zzcib;
        return new C10593a(date, i != 1 ? i != 2 ? C10582a.EnumC10584b.UNKNOWN : C10582a.EnumC10584b.FEMALE : C10582a.EnumC10584b.MALE, hashSet, z, zzvqVar.zzng);
    }
}
