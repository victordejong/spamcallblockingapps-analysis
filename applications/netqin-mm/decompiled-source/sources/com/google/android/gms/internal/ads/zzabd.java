package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabd.class */
public final class zzabd {
    /* renamed from: a */
    public static boolean m16912a(String str) {
        return m16911a((String) zzwm.m11166e().m16921a(zzabb.f23922z2), str);
    }

    /* renamed from: a */
    public static boolean m16911a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzp.m17965g().m16188a(e, "NonagonUtil.isPatternMatched");
            return false;
        }
    }
}
