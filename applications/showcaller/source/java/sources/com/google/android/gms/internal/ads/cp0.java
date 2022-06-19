package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cp0.class */
public final class cp0 {

    /* renamed from: a */
    private static final Pattern f21345a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* renamed from: b */
    private static final Pattern f21346b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    /* renamed from: a */
    public static String m16000a(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f21345a.matcher(str);
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
            if (!f21346b.matcher(str).find()) {
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
