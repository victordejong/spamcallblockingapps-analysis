package com.yanzhenjie.nohttp.tools;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/HeaderUtils.class */
public class HeaderUtils {
    public static final String FORMAT_HTTP_DATA = "EEE, dd MMM y HH:mm:ss 'GMT'";
    public static final TimeZone GMT_TIME_ZONE = TimeZone.getTimeZone("GMT");
    private static String acceptLanguageInstance;

    public static String formatMillisToGMT(long j) {
        Date date = new Date(j);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(FORMAT_HTTP_DATA, Locale.US);
        simpleDateFormat.setTimeZone(GMT_TIME_ZONE);
        return simpleDateFormat.format(date);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    public static long getLocalExpires(Headers headers) {
        char c;
        char c2;
        char c3;
        ?? currentTimeMillis = System.currentTimeMillis();
        long date = headers.getDate();
        long expiration = headers.getExpiration();
        String cacheControl = headers.getCacheControl();
        if (!TextUtils.isEmpty(cacheControl)) {
            StringTokenizer stringTokenizer = new StringTokenizer(cacheControl, ",");
            char c4 = 0;
            char c5 = 0;
            while (true) {
                c2 = c4;
                c = c5;
                if (!stringTokenizer.hasMoreTokens()) {
                    break;
                }
                String lowerCase = stringTokenizer.nextToken().trim().toLowerCase(Locale.getDefault());
                if (lowerCase.equals("no-cache") || lowerCase.equals("no-store")) {
                    return 0L;
                }
                if (lowerCase.startsWith("max-age=")) {
                    c4 = Long.parseLong(lowerCase.substring(8));
                } else if (lowerCase.startsWith("must-revalidate")) {
                    return 0L;
                } else {
                    if (lowerCase.startsWith("stale-while-revalidate=")) {
                        c5 = Long.parseLong(lowerCase.substring(23));
                    }
                }
            }
        } else {
            c2 = 0;
            c = 0;
        }
        if (!TextUtils.isEmpty(cacheControl)) {
            ?? r0 = (c2 * 1000) + currentTimeMillis;
            c3 = r0;
            if (c > 0) {
                c3 = r0 + (c * 1000);
            }
        } else {
            c3 = currentTimeMillis;
        }
        char c6 = c3;
        if (c3 <= currentTimeMillis) {
            c6 = c3;
            if (expiration > date) {
                c6 = currentTimeMillis + (expiration - date);
            }
        }
        return c6;
    }

    public static long getMaxExpiryMillis() {
        return System.currentTimeMillis() + 3153600000000L;
    }

    public static boolean isGzipContent(String str) {
        return str != null && str.contains("gzip");
    }

    public static long parseGMTToMillis(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(FORMAT_HTTP_DATA, Locale.US);
        simpleDateFormat.setTimeZone(GMT_TIME_ZONE);
        return simpleDateFormat.parse(str).getTime();
    }

    public static String parseHeadValue(String str, String str2, String str3) {
        String str4 = str3;
        if (!TextUtils.isEmpty(str)) {
            str4 = str3;
            if (!TextUtils.isEmpty(str2)) {
                StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
                while (true) {
                    str4 = str3;
                    if (stringTokenizer.hasMoreElements()) {
                        String nextToken = stringTokenizer.nextToken();
                        int indexOf = nextToken.indexOf(61);
                        if (indexOf > 0 && str2.equalsIgnoreCase(nextToken.substring(0, indexOf).trim())) {
                            str4 = nextToken.substring(indexOf + 1).trim();
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return str4;
    }

    public static String systemAcceptLanguage() {
        if (TextUtils.isEmpty(acceptLanguageInstance)) {
            Locale locale = Locale.getDefault();
            String language = locale.getLanguage();
            String country = locale.getCountry();
            StringBuilder sb = new StringBuilder(language);
            if (!TextUtils.isEmpty(country)) {
                sb.append('-');
                sb.append(country);
                sb.append(',');
                sb.append(language);
            }
            acceptLanguageInstance = sb.toString();
        }
        return acceptLanguageInstance;
    }
}
