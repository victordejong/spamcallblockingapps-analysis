package com.amazonaws.util;

import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/VersionInfoUtils.class */
public class VersionInfoUtils {
    public static volatile String platform = "android";
    public static volatile String userAgent;
    public static volatile String version = "2.3.9";

    static {
        LogFactory.getLog(VersionInfoUtils.class);
    }

    public static String getPlatform() {
        return platform;
    }

    public static String getUserAgent() {
        if (userAgent == null) {
            synchronized (VersionInfoUtils.class) {
                try {
                    if (userAgent == null) {
                        initializeUserAgent();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return userAgent;
    }

    public static String getVersion() {
        return version;
    }

    public static void initializeUserAgent() {
        userAgent = userAgent();
    }

    public static String replaceSpaces(String str) {
        return str.replace(' ', '_');
    }

    public static String userAgent() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("aws-sdk-");
        sb.append(StringUtils.lowerCase(getPlatform()));
        sb.append("/");
        sb.append(getVersion());
        sb.append(" ");
        sb.append(replaceSpaces(System.getProperty("os.name")));
        sb.append("/");
        sb.append(replaceSpaces(System.getProperty("os.version")));
        sb.append(" ");
        sb.append(replaceSpaces(System.getProperty("java.vm.name")));
        sb.append("/");
        sb.append(replaceSpaces(System.getProperty("java.vm.version")));
        sb.append("/");
        sb.append(replaceSpaces(System.getProperty("java.version")));
        String property = System.getProperty("user.language");
        String property2 = System.getProperty("user.region");
        if (!(property == null || property2 == null)) {
            sb.append(" ");
            sb.append(replaceSpaces(property));
            sb.append("_");
            sb.append(replaceSpaces(property2));
        }
        return sb.toString();
    }
}
