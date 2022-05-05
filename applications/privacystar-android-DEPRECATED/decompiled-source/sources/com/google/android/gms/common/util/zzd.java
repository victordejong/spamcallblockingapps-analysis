package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/zzd.class */
public final class zzd {
    private static final Pattern zzhg = Pattern.compile("\\\\u[0-9a-fA-F]{4}");

    public static String unescape(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = zzhg.matcher(str);
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
        return stringBuffer.toString();
    }
}
