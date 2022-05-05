package com.zendesk.util;

import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/FileUtils.class */
public class FileUtils {
    private static final String BINARY_PREFIXES = "KMGTPE";
    private static final int BINARY_UNIT = 1024;
    private static final String SI_PREFIXES = "kMGTPE";
    private static final int SI_UNIT = 1000;

    private FileUtils() {
    }

    public static String getFileExtension(String str) {
        if (!StringUtils.hasLength(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(".");
        String str2 = "";
        if (lastIndexOf != -1) {
            str2 = str.substring(lastIndexOf + 1).toLowerCase(Locale.US).trim();
        }
        return str2;
    }

    public static String humanReadableFileSize(Long l) {
        return humanReadableFileSize(l, true);
    }

    public static String humanReadableFileSize(Long l, boolean z) {
        if (l == null || l.longValue() < 0) {
            return "";
        }
        int i = z ? 1000 : 1024;
        if (l.longValue() < i) {
            return l + " B";
        }
        double d = i;
        int log = (int) (Math.log(l.longValue()) / Math.log(d));
        StringBuilder sb = new StringBuilder();
        sb.append((z ? SI_PREFIXES : BINARY_PREFIXES).charAt(log - 1));
        sb.append(z ? "" : "i");
        return String.format(Locale.US, "%.1f %sB", Double.valueOf(l.longValue() / Math.pow(d, log)), sb.toString());
    }
}
