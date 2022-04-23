package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
public final class JsonUtils {

    /* renamed from: a */
    public static final Pattern f23568a = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    static {
        Pattern.compile("\\\\.");
    }

    @KeepForSdk
    /* renamed from: a */
    public static String m17070a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f23568a.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                StringBuffer stringBuffer2 = stringBuffer;
                if (stringBuffer == null) {
                    stringBuffer2 = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt == '\f') {
                    matcher.appendReplacement(stringBuffer2, "\\\\f");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\r') {
                    matcher.appendReplacement(stringBuffer2, "\\\\r");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '\"') {
                    matcher.appendReplacement(stringBuffer2, "\\\\\\\"");
                    stringBuffer = stringBuffer2;
                } else if (charAt == '/') {
                    matcher.appendReplacement(stringBuffer2, "\\\\/");
                    stringBuffer = stringBuffer2;
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            matcher.appendReplacement(stringBuffer2, "\\\\b");
                            stringBuffer = stringBuffer2;
                            continue;
                        case '\t':
                            matcher.appendReplacement(stringBuffer2, "\\\\t");
                            stringBuffer = stringBuffer2;
                            continue;
                        case '\n':
                            matcher.appendReplacement(stringBuffer2, "\\\\n");
                            stringBuffer = stringBuffer2;
                            continue;
                        default:
                            stringBuffer = stringBuffer2;
                            continue;
                    }
                } else {
                    matcher.appendReplacement(stringBuffer2, "\\\\\\\\");
                    stringBuffer = stringBuffer2;
                }
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
