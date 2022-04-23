package com.mikepenz.aboutlibraries.util;

import android.content.Context;
import android.text.TextUtils;
import com.mikepenz.aboutlibraries.Libs;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/util/GenericsUtil.class */
public class GenericsUtil {
    public static String[] getFields(Context context) {
        Class resolveRClass = resolveRClass(context.getPackageName());
        return resolveRClass != null ? Libs.toStringArray(resolveRClass.getFields()) : new String[0];
    }

    private static Class resolveRClass(String str) {
        String substring;
        String str2 = str;
        do {
            try {
                return Class.forName(str2 + ".R$string");
            } catch (ClassNotFoundException e) {
                substring = str2.contains(".") ? str2.substring(0, str2.lastIndexOf(46)) : "";
                str2 = substring;
                if (TextUtils.isEmpty(substring)) {
                    return null;
                }
            }
        } while (TextUtils.isEmpty(substring));
        return null;
    }
}
