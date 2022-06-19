package com.google.android.gms.common.util;

import android.text.TextUtils;
import androidx.annotation.RecentlyNullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.common.util.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/l.class */
public final class C6234l {

    /* renamed from: a */
    private static final Pattern f19717a = Pattern.compile("\\\\.");

    /* renamed from: b */
    private static final Pattern f19718b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    @RecentlyNullable
    /* renamed from: a */
    public static String m16786a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f19718b.matcher(str);
            StringBuffer stringBuffer = null;
            while (true) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (matcher.find()) {
                    StringBuffer stringBuffer3 = stringBuffer2;
                    if (stringBuffer2 == null) {
                        stringBuffer3 = new StringBuffer();
                    }
                    char charAt = matcher.group().charAt(0);
                    if (charAt == '\f') {
                        matcher.appendReplacement(stringBuffer3, "\\\\f");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '\r') {
                        matcher.appendReplacement(stringBuffer3, "\\\\r");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '\"') {
                        matcher.appendReplacement(stringBuffer3, "\\\\\\\"");
                        stringBuffer = stringBuffer3;
                    } else if (charAt == '/') {
                        matcher.appendReplacement(stringBuffer3, "\\\\/");
                        stringBuffer = stringBuffer3;
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case '\b':
                                matcher.appendReplacement(stringBuffer3, "\\\\b");
                                stringBuffer = stringBuffer3;
                                continue;
                            case '\t':
                                matcher.appendReplacement(stringBuffer3, "\\\\t");
                                stringBuffer = stringBuffer3;
                                continue;
                            case '\n':
                                matcher.appendReplacement(stringBuffer3, "\\\\n");
                                stringBuffer = stringBuffer3;
                                continue;
                            default:
                                stringBuffer = stringBuffer3;
                                continue;
                        }
                    } else {
                        matcher.appendReplacement(stringBuffer3, "\\\\\\\\");
                        stringBuffer = stringBuffer3;
                    }
                } else if (stringBuffer2 == null) {
                    return str;
                } else {
                    matcher.appendTail(stringBuffer2);
                    str2 = stringBuffer2.toString();
                }
            }
        }
        return str2;
    }
}
