package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcns.class */
public final class zzcns {
    private static final Pattern zza = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);
    private static final Pattern zzb = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    public static String zza(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        Matcher matcher = zza.matcher(str);
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            for (int i = 0; i <= 0; i++) {
                String str2 = strArr[i];
                if (str2 != null) {
                    sb.append(str2);
                }
            }
            sb.append(str.substring(end));
        } else {
            if (!zzb.matcher(str).find()) {
                for (int i2 = 0; i2 <= 0; i2++) {
                    String str3 = strArr[i2];
                    if (str3 != null) {
                        sb.append(str3);
                    }
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
