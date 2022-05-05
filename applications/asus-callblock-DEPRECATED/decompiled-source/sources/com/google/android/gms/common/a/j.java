package com.google.android.gms.common.a;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3936a = Pattern.compile("\\\\.");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3937b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    public static String a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f3937b.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                switch (matcher.group().charAt(0)) {
                    case '\b':
                        matcher.appendReplacement(stringBuffer2, "\\\\b");
                        stringBuffer = stringBuffer2;
                        break;
                    case '\t':
                        matcher.appendReplacement(stringBuffer2, "\\\\t");
                        stringBuffer = stringBuffer2;
                        break;
                    case '\n':
                        matcher.appendReplacement(stringBuffer2, "\\\\n");
                        stringBuffer = stringBuffer2;
                        break;
                    case '\f':
                        matcher.appendReplacement(stringBuffer2, "\\\\f");
                        stringBuffer = stringBuffer2;
                        break;
                    case '\r':
                        matcher.appendReplacement(stringBuffer2, "\\\\r");
                        stringBuffer = stringBuffer2;
                        break;
                    case '\"':
                        matcher.appendReplacement(stringBuffer2, "\\\\\\\"");
                        stringBuffer = stringBuffer2;
                        break;
                    case '/':
                        matcher.appendReplacement(stringBuffer2, "\\\\/");
                        stringBuffer = stringBuffer2;
                        break;
                    case '\\':
                        matcher.appendReplacement(stringBuffer2, "\\\\\\\\");
                        stringBuffer = stringBuffer2;
                        break;
                    default:
                        stringBuffer = stringBuffer2;
                        break;
                }
            }
            if (stringBuffer == null) {
                str2 = str;
            } else {
                matcher.appendTail(stringBuffer);
                str2 = stringBuffer.toString();
            }
        }
        return str2;
    }
}
