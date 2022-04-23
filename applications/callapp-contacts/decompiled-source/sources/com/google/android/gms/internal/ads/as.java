package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/as.class */
public final class as {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, String str2) {
        if (str == null || str2 == null) {
            return false;
        }
        try {
            return Pattern.matches(str, str2);
        } catch (RuntimeException e) {
            zzr.zzkz().a(e, "NonagonUtil.isPatternMatched");
            return false;
        }
    }
}
