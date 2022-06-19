package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/d.class */
public final class C2949d {
    /* renamed from: a */
    public static boolean m10280a(String str) {
        return m10279a((String) dyx.m8158e().m7876a(edi.f16491cr), str);
    }

    /* renamed from: a */
    private static boolean m10279a(String str, String str2) {
        boolean z = false;
        if (str != null) {
            if (str2 == null) {
                z = false;
            } else {
                try {
                    z = Pattern.matches(str, str2);
                } catch (RuntimeException e) {
                    C2341q.m14740g().m7095a(e, "NonagonUtil.isPatternMatched");
                    z = false;
                }
            }
        }
        return z;
    }
}
