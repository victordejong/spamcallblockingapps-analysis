package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfer.class */
public final class zzfer {
    private final Pattern zza;

    @VisibleForTesting
    public zzfer() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) zzbgq.zzc().zzb(zzblj.zzfl));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.zza = pattern;
    }

    public final String zza(String str) {
        Pattern pattern = this.zza;
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
