package com.twitter.sdk.android.core.internal.a;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/f.class */
public final class f {
    private f() {
    }

    public static String a(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public static TreeMap<String, String> a(String str, boolean z) {
        TreeMap<String, String> treeMap = new TreeMap<>();
        if (str == null) {
            return treeMap;
        }
        for (String str2 : str.split("&")) {
            String[] split = str2.split("=");
            if (split.length == 2) {
                if (z) {
                    treeMap.put(c(split[0]), c(split[1]));
                } else {
                    treeMap.put(split[0], split[1]);
                }
            } else if (!TextUtils.isEmpty(split[0])) {
                if (z) {
                    treeMap.put(c(split[0]), "");
                } else {
                    treeMap.put(split[0], "");
                }
            }
        }
        return treeMap;
    }

    public static TreeMap<String, String> a(URI uri, boolean z) {
        return a(uri.getRawQuery(), z);
    }

    public static String b(String str) {
        int i;
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String a2 = a(str);
        int length = a2.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = a2.charAt(i2);
            if (charAt == '*') {
                sb.append("%2A");
            } else if (charAt == '+') {
                sb.append("%20");
            } else if (charAt == '%' && (i = i2 + 2) < length && a2.charAt(i2 + 1) == '7' && a2.charAt(i) == 'E') {
                sb.append('~');
                i2 = i;
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        return sb.toString();
    }

    private static String c(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, "UTF8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }
}
