package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzax.class */
public final class zzax {
    private static final Pattern zza = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern zzb = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    public static long zza(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = zzb.matcher(str);
        if (!matcher.matches()) {
            return -1L;
        }
        String group = matcher.group(1);
        Objects.requireNonNull(group);
        return Long.parseLong(group);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    public static long zzb(String str, String str2) {
        char c = 65535;
        if (!TextUtils.isEmpty(str)) {
            try {
                c = Long.parseLong(str);
            } catch (NumberFormatException e) {
                String.valueOf(str).length();
                c = 65535;
            }
        }
        char c2 = c;
        if (!TextUtils.isEmpty(str2)) {
            Matcher matcher = zza.matcher(str2);
            c2 = c;
            if (matcher.matches()) {
                try {
                    String group = matcher.group(2);
                    Objects.requireNonNull(group);
                    long parseLong = Long.parseLong(group);
                    String group2 = matcher.group(1);
                    Objects.requireNonNull(group2);
                    ?? parseLong2 = (parseLong - Long.parseLong(group2)) + 1;
                    if (c < 0) {
                        c2 = parseLong2;
                    } else {
                        c2 = c;
                        if (c != parseLong2) {
                            String.valueOf(str).length();
                            String.valueOf(str2).length();
                            c2 = Math.max((long) c, (long) parseLong2);
                        }
                    }
                } catch (NumberFormatException e2) {
                    String.valueOf(str2).length();
                    c2 = c;
                }
            }
        }
        return c2;
    }
}
