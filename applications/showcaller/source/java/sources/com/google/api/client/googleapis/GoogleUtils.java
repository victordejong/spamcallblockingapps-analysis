package com.google.api.client.googleapis;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/GoogleUtils.class */
public final class GoogleUtils {

    /* renamed from: a */
    public static final String f38199a;

    /* renamed from: b */
    public static final Integer f38200b;

    /* renamed from: c */
    public static final Integer f38201c;

    /* renamed from: d */
    public static final Integer f38202d;

    /* renamed from: e */
    static final Pattern f38203e;

    static {
        String m3293a = m3293a();
        f38199a = m3293a;
        Pattern compile = Pattern.compile("(\\d+)\\.(\\d+)\\.(\\d+)(-SNAPSHOT)?");
        f38203e = compile;
        Matcher matcher = compile.matcher(m3293a);
        matcher.find();
        f38200b = Integer.valueOf(Integer.parseInt(matcher.group(1)));
        f38201c = Integer.valueOf(Integer.parseInt(matcher.group(2)));
        f38202d = Integer.valueOf(Integer.parseInt(matcher.group(3)));
    }

    private GoogleUtils() {
    }

    /* renamed from: a */
    private static String m3293a() {
        String str = null;
        String str2 = null;
        try {
            InputStream resourceAsStream = GoogleUtils.class.getResourceAsStream("google-api-client.properties");
            if (resourceAsStream != null) {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                str = properties.getProperty("google-api-client.version");
            }
            str2 = str;
            if (resourceAsStream != null) {
                str2 = str;
                resourceAsStream.close();
                str2 = str;
            }
        } catch (IOException e) {
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = "unknown-version";
        }
        return str3;
    }
}
