package com.google.android.gms.internal.ads;

import com.google.ads.a;
import java.util.Date;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oe.class */
public final class oe {
    public static int a(a.EnumC0408a aVar) {
        int i = od.f28257a[aVar.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    public static com.google.ads.mediation.a a(zzvq zzvqVar, boolean z) {
        HashSet hashSet = zzvqVar.zzcic != null ? new HashSet(zzvqVar.zzcic) : null;
        Date date = new Date(zzvqVar.zzcia);
        int i = zzvqVar.zzcib;
        return new com.google.ads.mediation.a(date, i != 1 ? i != 2 ? a.b.UNKNOWN : a.b.FEMALE : a.b.MALE, hashSet, z, zzvqVar.zzng);
    }
}
