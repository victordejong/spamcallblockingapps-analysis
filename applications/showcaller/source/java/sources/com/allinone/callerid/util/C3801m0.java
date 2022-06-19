package com.allinone.callerid.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.allinone.callerid.util.m0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/m0.class */
public class C3801m0 {

    /* renamed from: a */
    private static Pattern f12051a = Pattern.compile("\\d+");

    /* renamed from: a */
    public static String m24094a(String str) {
        Matcher matcher = f12051a.matcher(str);
        if (matcher.find()) {
            str = matcher.group();
        }
        return str;
    }
}
