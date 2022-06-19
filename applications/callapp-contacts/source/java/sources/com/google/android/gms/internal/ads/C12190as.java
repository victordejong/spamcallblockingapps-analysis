package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.as */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/as.class */
public final class C12190as {
    /* renamed from: a */
    public static boolean m18437a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkz().m13979a(e, "NonagonUtil.isPatternMatched");
            return false;
        }
    }
}
