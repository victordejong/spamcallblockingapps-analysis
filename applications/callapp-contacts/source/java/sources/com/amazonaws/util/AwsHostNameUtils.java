package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import java.net.URI;
import java.util.Collections;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AwsHostNameUtils.class */
public class AwsHostNameUtils {

    /* renamed from: a */
    private static final Pattern f12495a = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");

    /* renamed from: a */
    private static String m38274a(String str) {
        Matcher matcher = f12495a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return "us-east-1";
        }
        String substring = str.substring(lastIndexOf + 1);
        String str2 = substring;
        if ("us-gov".equals(substring)) {
            str2 = "us-gov-west-1";
        }
        return str2;
    }

    /* renamed from: a */
    public static String m38273a(String str, String str2) {
        if (str != null) {
            String m38271b = m38271b(str);
            if (m38271b != null) {
                return m38271b;
            }
            if (str.endsWith(".amazonaws.com")) {
                return m38274a(str.substring(0, str.length() - 14));
            }
            if (str.endsWith(".amazonaws.com.cn")) {
                return m38274a(str.substring(0, str.length() - 17));
            }
            if (str2 == null) {
                return "us-east-1";
            }
            Matcher matcher = Pattern.compile("^(?:.+\\.)?" + Pattern.quote(str2) + "[.-]([a-z0-9-]+)\\.").matcher(str);
            return matcher.find() ? matcher.group(1) : "us-east-1";
        }
        throw new IllegalArgumentException("hostname cannot be null");
    }

    @Deprecated
    /* renamed from: a */
    public static String m38272a(URI uri) {
        String host = uri.getHost();
        if (host.endsWith(".amazonaws.com")) {
            String substring = host.substring(0, host.indexOf(".amazonaws.com"));
            return (substring.endsWith(".s3") || f12495a.matcher(substring).matches()) ? "s3" : substring.indexOf(46) == -1 ? substring : substring.substring(0, substring.indexOf(46));
        }
        throw new IllegalArgumentException("Cannot parse a service name from an unrecognized endpoint (" + host + ").");
    }

    /* renamed from: b */
    private static String m38271b(String str) {
        for (HostRegexToRegionMapping hostRegexToRegionMapping : Collections.unmodifiableList(InternalConfig.Factory.m38603a().f12102f)) {
            if (str.matches(hostRegexToRegionMapping.f12093a)) {
                return hostRegexToRegionMapping.f12094b;
            }
        }
        return null;
    }
}
