package com.twitter.sdk.android.core.internal.p485a;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.TreeMap;
/* renamed from: com.twitter.sdk.android.core.internal.a.f */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/f.class */
public final class C17242f {
    private C17242f() {
    }

    /* renamed from: a */
    public static String m5681a(String str) {
        if (str == null) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    /* renamed from: a */
    public static TreeMap<String, String> m5680a(String str, boolean z) {
        TreeMap<String, String> treeMap = new TreeMap<>();
        if (str == null) {
            return treeMap;
        }
        for (String str2 : str.split("&")) {
            String[] split = str2.split("=");
            if (split.length == 2) {
                if (z) {
                    treeMap.put(m5677c(split[0]), m5677c(split[1]));
                } else {
                    treeMap.put(split[0], split[1]);
                }
            } else if (!TextUtils.isEmpty(split[0])) {
                if (z) {
                    treeMap.put(m5677c(split[0]), "");
                } else {
                    treeMap.put(split[0], "");
                }
            }
        }
        return treeMap;
    }

    /* renamed from: a */
    public static TreeMap<String, String> m5679a(URI uri, boolean z) {
        return m5680a(uri.getRawQuery(), z);
    }

    /* renamed from: b */
    public static String m5678b(String str) {
        int i;
        if (str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String m5681a = m5681a(str);
        int length = m5681a.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = m5681a.charAt(i2);
            if (charAt == '*') {
                sb.append("%2A");
            } else if (charAt == '+') {
                sb.append("%20");
            } else if (charAt == '%' && (i = i2 + 2) < length && m5681a.charAt(i2 + 1) == '7' && m5681a.charAt(i) == 'E') {
                sb.append('~');
                i2 = i;
            } else {
                sb.append(charAt);
            }
            i2++;
        }
        return sb.toString();
    }

    /* renamed from: c */
    private static String m5677c(String str) {
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
