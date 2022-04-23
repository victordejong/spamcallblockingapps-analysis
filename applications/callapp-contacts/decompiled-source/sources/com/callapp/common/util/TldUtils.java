package com.callapp.common.util;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/TldUtils.class */
public class TldUtils {
    public static String a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return null;
        }
        String replaceAll = trim.toLowerCase().replaceAll("\\.|。|．|｡", ".");
        String str2 = replaceAll;
        if (replaceAll.endsWith(".")) {
            str2 = replaceAll.substring(0, replaceAll.length() - 1);
        }
        String str3 = null;
        while (str2.contains(".")) {
            if (TldPatterns.f10401c.contains(str2)) {
                return str2;
            }
            String str4 = str2.split("\\.", 2)[1];
            if (str3 != null && TldPatterns.f10400b.contains(str4)) {
                return str3;
            }
            if (TldPatterns.f10399a.contains(str4)) {
                return str2;
            }
            str3 = str2;
            str2 = str4;
        }
        return null;
    }
}
