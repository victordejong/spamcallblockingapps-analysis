package com.amazonaws.services.s3.internal;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3HttpUtils.class */
public final class S3HttpUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6822a = Pattern.compile(Pattern.quote("+") + "|" + Pattern.quote("*") + "|" + Pattern.quote("%7E") + "|" + Pattern.quote("%2F") + "|" + Pattern.quote("%3A") + "|" + Pattern.quote("%27") + "|" + Pattern.quote("%28") + "|" + Pattern.quote("%29") + "|" + Pattern.quote("%21") + "|" + Pattern.quote("%5B") + "|" + Pattern.quote("%5D") + "|" + Pattern.quote("%24"));

    public static String a(String str) {
        String str2;
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = f6822a.matcher(encode);
            StringBuffer stringBuffer = new StringBuffer(encode.length());
            while (matcher.find()) {
                String group = matcher.group(0);
                if ("+".equals(group)) {
                    str2 = StringUtils.SPACE;
                } else if ("*".equals(group)) {
                    str2 = "%2A";
                } else {
                    str2 = group;
                    if ("%7E".equals(group)) {
                        str2 = "~";
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

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
