package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.pu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pu.class */
public final class C1896pu {

    /* renamed from: a */
    private static final Pattern f8170a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* renamed from: b */
    private static final Pattern f8171b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    /* renamed from: a */
    public static String m6162a(String str, String... strArr) {
        String str2;
        int length = strArr.length;
        if (length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f8170a.matcher(str);
        int i = 0;
        if (matcher.find()) {
            int end = matcher.end();
            sb.append(str.substring(0, end));
            for (String str3 : strArr) {
                if (str3 != null) {
                    sb.append(str3);
                }
            }
            str2 = str.substring(end);
        } else {
            str2 = str;
            if (!f8171b.matcher(str).find()) {
                while (true) {
                    str2 = str;
                    if (i >= length) {
                        break;
                    }
                    String str4 = strArr[i];
                    if (str4 != null) {
                        sb.append(str4);
                    }
                    i++;
                }
            }
        }
        sb.append(str2);
        return sb.toString();
    }
}
