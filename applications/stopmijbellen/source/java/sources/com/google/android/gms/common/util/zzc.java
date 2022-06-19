package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/zzc.class */
public final class zzc {
    private static final Pattern zza = Pattern.compile("\\\\u[0-9a-fA-F]{4}");

    public static String zza(String str) {
        StringBuffer stringBuffer;
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = zza.matcher(str);
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
