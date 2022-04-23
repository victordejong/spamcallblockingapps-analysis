package com.squareup.okhttp.internal.http;
/* renamed from: com.squareup.okhttp.internal.http.d */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/d.class */
public final class C2917d {
    /* renamed from: a */
    public static int m1029a(String str, int i) {
        long parseLong;
        try {
            parseLong = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        if (parseLong > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (parseLong < 0) {
            return 0;
        }
        i = (int) parseLong;
        return i;
    }

    /* renamed from: b */
    public static int m1028b(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    /* renamed from: c */
    public static int m1027c(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }
}
