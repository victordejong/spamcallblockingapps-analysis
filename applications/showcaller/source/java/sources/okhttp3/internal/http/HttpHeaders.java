package okhttp3.internal.http;

import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http/HttpHeaders.class */
public final class HttpHeaders {
    private static final Pattern PARAMETER = Pattern.compile(" +([^ \"=]*)=(:?\"([^\"]*)\"|([^ \"=]*)) *(:?,|$)");
    private static final String QUOTED_STRING = "\"([^\"]*)\"";
    private static final String TOKEN = "([^ \"=]*)";

    private HttpHeaders() {
    }

    public static long contentLength(Headers headers) {
        return stringToLong(headers.get(com.yanzhenjie.nohttp.Headers.HEAD_KEY_CONTENT_LENGTH));
    }

    public static long contentLength(Response response) {
        return contentLength(response.headers());
    }

    public static boolean hasBody(Response response) {
        if (response.request().method().equals(OkHttpUtils.METHOD.HEAD)) {
            return false;
        }
        int code = response.code();
        return (((code >= 100 && code < 200) || code == 204 || code == 304) && contentLength(response) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    public static boolean hasVaryAll(Headers headers) {
        return varyFields(headers).contains(BasicSQLHelper.ALL);
    }

    public static boolean hasVaryAll(Response response) {
        return hasVaryAll(response.headers());
    }

    public static List<Challenge> parseChallenges(Headers headers, String str) {
        String str2;
        String str3;
        String str4;
        ArrayList arrayList = new ArrayList();
        for (String str5 : headers.values(str)) {
            int indexOf = str5.indexOf(32);
            if (indexOf != -1) {
                String substring = str5.substring(0, indexOf);
                Matcher matcher = PARAMETER.matcher(str5);
                String str6 = null;
                String str7 = null;
                while (true) {
                    str2 = str6;
                    str3 = str7;
                    if (!matcher.find(indexOf)) {
                        break;
                    }
                    if (str5.regionMatches(true, matcher.start(1), "realm", 0, 5)) {
                        str4 = matcher.group(3);
                    } else {
                        str4 = str6;
                        if (str5.regionMatches(true, matcher.start(1), "charset", 0, 7)) {
                            str7 = matcher.group(3);
                            str4 = str6;
                        }
                    }
                    if (str4 != null && str7 != null) {
                        str2 = str4;
                        str3 = str7;
                        break;
                    }
                    indexOf = matcher.end();
                    str6 = str4;
                }
                if (str2 != null) {
                    Challenge challenge = new Challenge(substring, str2);
                    Challenge challenge2 = challenge;
                    if (str3 != null) {
                        if (str3.equalsIgnoreCase("UTF-8")) {
                            challenge2 = challenge.withCharset(Util.UTF_8);
                        }
                    }
                    arrayList.add(challenge2);
                }
            }
        }
        return arrayList;
    }

    public static int parseSeconds(String str, int i) {
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

    public static void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> parseAll = Cookie.parseAll(httpUrl, headers);
        if (parseAll.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, parseAll);
    }

    public static int skipUntil(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static int skipWhitespace(String str, int i) {
        char charAt;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\t')) {
            i++;
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    private static long stringToLong(String str) {
        char c = 65535;
        if (str == null) {
            return -1L;
        }
        try {
            c = Long.parseLong(str);
        } catch (NumberFormatException e) {
        }
        return c;
    }

    public static Set<String> varyFields(Headers headers) {
        Set<String> emptySet = Collections.emptySet();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            if ("Vary".equalsIgnoreCase(headers.name(i))) {
                String value = headers.value(i);
                TreeSet treeSet = emptySet;
                if (emptySet.isEmpty()) {
                    treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                String[] split = value.split(",");
                int length = split.length;
                int i2 = 0;
                while (true) {
                    emptySet = treeSet;
                    if (i2 < length) {
                        treeSet.add(split[i2].trim());
                        i2++;
                    }
                }
            }
        }
        return emptySet;
    }

    private static Set<String> varyFields(Response response) {
        return varyFields(response.headers());
    }

    public static Headers varyHeaders(Headers headers, Headers headers2) {
        Set<String> varyFields = varyFields(headers2);
        if (varyFields.isEmpty()) {
            return new Headers.Builder().build();
        }
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            if (varyFields.contains(name)) {
                builder.add(name, headers.value(i));
            }
        }
        return builder.build();
    }

    public static Headers varyHeaders(Response response) {
        return varyHeaders(response.networkResponse().request().headers(), response.headers());
    }

    public static boolean varyMatches(Response response, Headers headers, Request request) {
        for (String str : varyFields(response)) {
            if (!Util.equal(headers.values(str), request.headers(str))) {
                return false;
            }
        }
        return true;
    }
}
