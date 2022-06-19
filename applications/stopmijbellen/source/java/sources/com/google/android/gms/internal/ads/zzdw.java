package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdw.class */
public final class zzdw {
    private static final Pattern zza = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern zzb = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static long zza(String str, String str2) {
        char c = 65535;
        if (!TextUtils.isEmpty(str)) {
            try {
                c = Long.parseLong(str);
            } catch (NumberFormatException e) {
                new StringBuilder(String.valueOf(str).length() + 28);
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
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(str2).length());
                            sb.append("Inconsistent headers [");
                            sb.append(str);
                            sb.append("] [");
                            sb.append(str2);
                            sb.append("]");
                            Log.w("HttpUtil", sb.toString());
                            c2 = Math.max((long) c, (long) parseLong2);
                        }
                    }
                } catch (NumberFormatException e2) {
                    new StringBuilder(String.valueOf(str2).length() + 27);
                    c2 = c;
                }
            }
        }
        return c2;
    }

    public static long zzb(String str) {
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
}
