package org.apache.commons.cli;
/* loaded from: classes2-dex2jar.jar:org/apache/commons/cli/Util.class */
class Util {
    Util() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String stripLeadingAndTrailingQuotes(String str) {
        String str2 = str;
        if (str.startsWith("\"")) {
            str2 = str.substring(1, str.length());
        }
        String str3 = str2;
        if (str2.endsWith("\"")) {
            str3 = str2.substring(0, str2.length() - 1);
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String stripLeadingHyphens(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith(HelpFormatter.DEFAULT_LONG_OPT_PREFIX)) {
            return str.substring(2, str.length());
        }
        String str2 = str;
        if (str.startsWith(HelpFormatter.DEFAULT_OPT_PREFIX)) {
            str2 = str.substring(1, str.length());
        }
        return str2;
    }
}
