package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.nk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nk.class */
public final class C6778nk {

    /* renamed from: a */
    private static final Pattern f27166a = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* renamed from: b */
    private static final Pattern f27167b = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    /* renamed from: a */
    public static long m12894a(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f27167b.matcher(str);
        if (!matcher.matches()) {
            return -1L;
        }
        String group = matcher.group(1);
        Objects.requireNonNull(group);
        return Long.parseLong(group);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* renamed from: b */
    public static long m12893b(String str, String str2) {
        char c = 65535;
        if (!TextUtils.isEmpty(str)) {
            try {
                c = Long.parseLong(str);
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 28);
                sb.append("Unexpected Content-Length [");
                sb.append(str);
                sb.append("]");
                Log.e("HttpUtil", sb.toString());
                c = 65535;
            }
        }
        char c2 = c;
        if (!TextUtils.isEmpty(str2)) {
            Matcher matcher = f27166a.matcher(str2);
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
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(str2).length());
                            sb2.append("Inconsistent headers [");
                            sb2.append(str);
                            sb2.append("] [");
                            sb2.append(str2);
                            sb2.append("]");
                            Log.w("HttpUtil", sb2.toString());
                            c2 = Math.max((long) c, (long) parseLong2);
                        }
                    }
                } catch (NumberFormatException e2) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str2).length() + 27);
                    sb3.append("Unexpected Content-Range [");
                    sb3.append(str2);
                    sb3.append("]");
                    Log.e("HttpUtil", sb3.toString());
                    c2 = c;
                }
            }
        }
        return c2;
    }
}
