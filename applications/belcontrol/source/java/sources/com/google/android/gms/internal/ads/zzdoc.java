package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoc.class */
public final class zzdoc {
    private final Pattern zzhlm;

    @VisibleForTesting
    public zzdoc() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) zzwr.zzqr().zzd(zzabp.zzczb));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.zzhlm = pattern;
    }

    public final String zzgt(String str) {
        Pattern pattern = this.zzhlm;
        if (pattern == null || str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group();
    }
}
