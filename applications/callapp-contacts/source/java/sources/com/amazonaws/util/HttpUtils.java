package com.amazonaws.util;

import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.mopub.common.Constants;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/HttpUtils.class */
public class HttpUtils {

    /* renamed from: a */
    private static final Pattern f12502a = Pattern.compile(Pattern.quote("+") + "|" + Pattern.quote("*") + "|" + Pattern.quote("%7E") + "|" + Pattern.quote("%2F"));

    /* renamed from: b */
    private static final Pattern f12503b;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(Pattern.quote("%2A"));
        sb.append("|");
        sb.append(Pattern.quote("%2B"));
        sb.append("|");
        f12503b = Pattern.compile(sb.toString());
    }

    /* renamed from: a */
    public static String m38245a(String str, String str2) {
        return m38244a(str, str2, false);
    }

    /* renamed from: a */
    public static String m38244a(String str, String str2, boolean z) {
        String str3;
        String str4;
        if (str2 == null || str2.length() <= 0) {
            str3 = str;
            if (!str.endsWith("/")) {
                str3 = str + "/";
            }
        } else {
            if (str2.startsWith("/")) {
                str4 = str;
                if (str.endsWith("/")) {
                    str4 = str.substring(0, str.length() - 1);
                }
            } else {
                str4 = str;
                if (!str.endsWith("/")) {
                    str4 = str + "/";
                }
            }
            String m38243a = m38243a(str2, true);
            String str5 = m38243a;
            if (z) {
                str5 = m38243a.replace("//", "/%2F");
            }
            str3 = str4 + str5;
        }
        return str3;
    }

    /* renamed from: a */
    public static String m38243a(String str, boolean z) {
        String str2;
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = f12502a.matcher(encode);
            StringBuffer stringBuffer = new StringBuffer(encode.length());
            while (matcher.find()) {
                String group = matcher.group(0);
                if ("+".equals(group)) {
                    str2 = "%20";
                } else if ("*".equals(group)) {
                    str2 = "%2A";
                } else if ("%7E".equals(group)) {
                    str2 = "~";
                } else {
                    str2 = group;
                    if (z) {
                        str2 = group;
                        if ("%2F".equals(group)) {
                            str2 = "/";
                        }
                    }
                }
                matcher.appendReplacement(stringBuffer, str2);
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public static boolean m38246a(Request<?> request) {
        return HttpMethodName.POST.equals(request.mo38706e()) && (request.mo38703h() == null);
    }

    /* renamed from: a */
    public static boolean m38242a(URI uri) {
        String m38227b = StringUtils.m38227b(uri.getScheme());
        int port = uri.getPort();
        if (port <= 0) {
            return false;
        }
        if ("http".equals(m38227b) && port == 80) {
            return false;
        }
        return !Constants.HTTPS.equals(m38227b) || port != 443;
    }

    /* renamed from: b */
    public static String m38241b(Request<?> request) {
        if (request.mo38707d().isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        try {
            for (Map.Entry<String, String> entry : request.mo38707d().entrySet()) {
                String encode = URLEncoder.encode(entry.getKey(), "UTF-8");
                String value = entry.getValue();
                String encode2 = value == null ? "" : URLEncoder.encode(value, "UTF-8");
                if (!z) {
                    sb.append("&");
                } else {
                    z = false;
                }
                sb.append(encode);
                sb.append("=");
                sb.append(encode2);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
