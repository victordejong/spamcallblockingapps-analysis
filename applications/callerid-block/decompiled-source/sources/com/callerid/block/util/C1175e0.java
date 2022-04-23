package com.callerid.block.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.callerid.block.util.e0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/e0.class */
public class C1175e0 {

    /* renamed from: a */
    private static Pattern f4997a = Pattern.compile("\\d+");

    /* renamed from: a */
    public static String m9852a(String str) {
        Matcher matcher = f4997a.matcher(str);
        if (matcher.find()) {
            str = matcher.group();
        }
        return str;
    }
}
