package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import java.net.URI;
import java.util.Collections;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AwsHostNameUtils.class */
public class AwsHostNameUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6902a = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");

    private static String a(String str) {
        Matcher matcher = f6902a.matcher(str);
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

    public static String a(String str, String str2) {
        if (str != null) {
            String b2 = b(str);
            if (b2 != null) {
                return b2;
            }
            if (str.endsWith(".amazonaws.com")) {
                return a(str.substring(0, str.length() - 14));
            }
            if (str.endsWith(".amazonaws.com.cn")) {
                return a(str.substring(0, str.length() - 17));
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
    public static String a(URI uri) {
        String host = uri.getHost();
        if (host.endsWith(".amazonaws.com")) {
            String substring = host.substring(0, host.indexOf(".amazonaws.com"));
            return (substring.endsWith(".s3") || f6902a.matcher(substring).matches()) ? "s3" : substring.indexOf(46) == -1 ? substring : substring.substring(0, substring.indexOf(46));
        }
        throw new IllegalArgumentException("Cannot parse a service name from an unrecognized endpoint (" + host + ").");
    }

    private static String b(String str) {
        for (HostRegexToRegionMapping hostRegexToRegionMapping : Collections.unmodifiableList(InternalConfig.Factory.a().f)) {
            if (str.matches(hostRegexToRegionMapping.f6642a)) {
                return hostRegexToRegionMapping.f6643b;
            }
        }
        return null;
    }
}
