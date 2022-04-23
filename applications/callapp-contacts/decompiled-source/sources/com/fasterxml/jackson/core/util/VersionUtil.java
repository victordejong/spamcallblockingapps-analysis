package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/VersionUtil.class */
public class VersionUtil {
    private static final Pattern V_SEP = Pattern.compile("[-_./;:]");

    protected VersionUtil() {
    }

    public static Version parseVersion(String str, String str2, String str3) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() > 0) {
                String[] split = V_SEP.split(trim);
                return new Version(parseVersionPart(split[0]), split.length > 1 ? parseVersionPart(split[1]) : 0, split.length > 2 ? parseVersionPart(split[2]) : 0, split.length > 3 ? split[3] : null, str2, str3);
            }
        }
        return Version.unknownVersion();
    }

    protected static int parseVersionPart(String str) {
        char charAt;
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length && (charAt = str.charAt(i2)) <= '9' && charAt >= '0'; i2++) {
            i = (i * 10) + (charAt - '0');
        }
        return i;
    }

    public static final void throwInternal() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    public static Version versionFor(Class<?> cls) {
        Version version;
        try {
            Class<?> cls2 = Class.forName(cls.getPackage().getName() + ".PackageVersion", true, cls.getClassLoader());
            try {
                version = ((Versioned) cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0])).version();
            } catch (Exception e) {
                throw new IllegalArgumentException("Failed to get Versioned out of ".concat(String.valueOf(cls2)));
            }
        } catch (Exception e2) {
            version = null;
        }
        Version version2 = version;
        if (version == null) {
            version2 = Version.unknownVersion();
        }
        return version2;
    }
}
