package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/AwsHostNameUtils.class */
public class AwsHostNameUtils {
    public static final Pattern S3_ENDPOINT_PATTERN = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");

    public static String parseRegionName(String str, String str2) {
        if (str != null) {
            String parseRegionNameByInternalConfig = parseRegionNameByInternalConfig(str);
            if (parseRegionNameByInternalConfig != null) {
                return parseRegionNameByInternalConfig;
            }
            if (str.endsWith(".amazonaws.com")) {
                return parseStandardRegionName(str.substring(0, str.length() - 14));
            }
            if (str2 == null) {
                return "us-east-1";
            }
            Matcher matcher = Pattern.compile("^(?:.+\\.)?" + Pattern.quote(str2) + "[.-]([a-z0-9-]+)\\.").matcher(str);
            return matcher.find() ? matcher.group(1) : "us-east-1";
        }
        throw new IllegalArgumentException("hostname cannot be null");
    }

    public static String parseRegionNameByInternalConfig(String str) {
        for (HostRegexToRegionMapping hostRegexToRegionMapping : InternalConfig.Factory.getInternalConfig().getHostRegexToRegionMappings()) {
            if (str.matches(hostRegexToRegionMapping.getHostNameRegex())) {
                return hostRegexToRegionMapping.getRegionName();
            }
        }
        return null;
    }

    @Deprecated
    public static String parseServiceName(URI uri) {
        String host = uri.getHost();
        if (host.endsWith(".amazonaws.com")) {
            String substring = host.substring(0, host.indexOf(".amazonaws.com"));
            return (substring.endsWith(".s3") || S3_ENDPOINT_PATTERN.matcher(substring).matches()) ? "s3" : substring.indexOf(46) == -1 ? substring : substring.substring(0, substring.indexOf(46));
        }
        throw new IllegalArgumentException("Cannot parse a service name from an unrecognized endpoint (" + host + ").");
    }

    public static String parseStandardRegionName(String str) {
        Matcher matcher = S3_ENDPOINT_PATTERN.matcher(str);
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
}
