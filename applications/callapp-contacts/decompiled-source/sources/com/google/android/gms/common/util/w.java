package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f22956a = Pattern.compile("\\\\u[0-9a-fA-F]{4}");

    public static String a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f22956a.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                matcher.appendReplacement(stringBuffer2, new String(Character.toChars(Integer.parseInt(matcher.group().substring(2), 16))));
                stringBuffer = stringBuffer2;
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
