package com.google.android.gms.common.util;

import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@VisibleForTesting
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/JsonUtils.class */
public final class JsonUtils {

    /* renamed from: a */
    public static final Pattern f6139a = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    static {
        Pattern.compile("\\\\.");
    }

    private JsonUtils() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static String m38778a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f6139a.matcher(str);
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
