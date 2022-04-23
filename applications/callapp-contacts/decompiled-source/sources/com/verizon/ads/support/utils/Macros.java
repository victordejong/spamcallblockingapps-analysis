package com.verizon.ads.support.utils;

import com.verizon.ads.Logger;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/Macros.class */
public class Macros {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35635a = Logger.getInstance(Macros.class);

    public static String replacePattern(Pattern pattern, String str, Map<String, String> map) {
        return replacePattern(pattern, str, map, null);
    }

    public static String replacePattern(Pattern pattern, String str, Map<String, String> map, String str2) {
        if (!(pattern == null || str == null)) {
            try {
                Matcher matcher = pattern.matcher(str);
                if (!matcher.find()) {
                    return str;
                }
                StringBuffer stringBuffer = new StringBuffer(str.length() + 512);
                do {
                    String group = matcher.group();
                    int i = 1;
                    while (true) {
                        if (i > matcher.groupCount()) {
                            break;
                        } else if (matcher.group(i) != null) {
                            group = matcher.group(i);
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (group.length() == 0) {
                        return str;
                    }
                    String str3 = map != null ? map.get(group) : null;
                    if (str3 != null) {
                        matcher.appendReplacement(stringBuffer, str3);
                    } else {
                        f35635a.w(String.format("Value for macro key %s was not provided", group));
                        if (str2 != null) {
                            matcher.appendReplacement(stringBuffer, str2);
                        }
                    }
                } while (matcher.find());
                matcher.appendTail(stringBuffer);
                String stringBuffer2 = stringBuffer.toString();
                if (Logger.isLogLevelEnabled(3)) {
                    f35635a.d(String.format("Macro replacement:\nsource:%s\nresult:%s", str, stringBuffer2));
                }
                return stringBuffer2;
            } catch (Exception e) {
                f35635a.e("Error performing macro replacement", e);
            }
        }
        return str;
    }
}
