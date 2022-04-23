package com.mikepenz.iconics.utils;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/utils/GenericsUtil.class */
public class GenericsUtil {
    private static String[] getDefinedFonts(Context context, Field[] fieldArr) {
        ArrayList arrayList = new ArrayList();
        for (Field field : fieldArr) {
            if (field.getName().contains("define_font_")) {
                arrayList.add(getStringResourceByName(context, field.getName()));
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] getFields(Context context) {
        Class resolveRClass = resolveRClass(context.getPackageName());
        return resolveRClass != null ? getDefinedFonts(context, resolveRClass.getFields()) : new String[0];
    }

    private static String getStringResourceByName(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, "string", context.getPackageName());
        return identifier == 0 ? "" : context.getString(identifier);
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
