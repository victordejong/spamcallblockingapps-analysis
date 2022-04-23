package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest$ErrorCode;
import com.google.ads.AdRequest$Gender;
import java.util.Date;
import java.util.HashSet;
import p131c.p161d.p162a.p163b.C2456a;
import p131c.p161d.p170b.p224d.p252g.p253a.C4237y2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaou.class */
public final class zzaou {
    /* renamed from: a */
    public static int m16520a(AdRequest$ErrorCode adRequest$ErrorCode) {
        int i = C4237y2.f16087b[adRequest$ErrorCode.ordinal()];
        if (i == 2) {
            return 1;
        }
        if (i != 3) {
            return i != 4 ? 0 : 3;
        }
        return 2;
    }

    /* renamed from: a */
    public static C2456a m16519a(zzvg zzvgVar, boolean z) {
        HashSet hashSet = zzvgVar.f29005e != null ? new HashSet(zzvgVar.f29005e) : null;
        Date date = new Date(zzvgVar.f29002b);
        int i = zzvgVar.f29004d;
        return new C2456a(date, i != 1 ? i != 2 ? AdRequest$Gender.UNKNOWN : AdRequest$Gender.FEMALE : AdRequest$Gender.MALE, hashSet, z, zzvgVar.f29011k);
    }
}
