package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.common.util.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/w.class */
public final class C12119w {

    /* renamed from: a */
    private static final Pattern f39646a = Pattern.compile("\\\\u[0-9a-fA-F]{4}");

    /* renamed from: a */
    public static String m18999a(String str) {
        StringBuffer stringBuffer;
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f39646a.matcher(str);
            StringBuffer stringBuffer2 = null;
            while (true) {
                stringBuffer = stringBuffer2;
                if (!matcher.find()) {
                    break;
                }
                StringBuffer stringBuffer3 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer3 = new StringBuffer();
                }
                matcher.appendReplacement(stringBuffer3, new String(Character.toChars(Integer.parseInt(matcher.group().substring(2), 16))));
                stringBuffer2 = stringBuffer3;
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            str2 = stringBuffer.toString();
        }
        return str2;
    }
}
