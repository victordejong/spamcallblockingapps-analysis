package com.verizon.ads.support.utils;

import com.verizon.ads.Logger;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/Macros.class */
public class Macros {

    /* renamed from: a */
    private static final Logger f61721a = Logger.getInstance(Macros.class);

    public static String replacePattern(Pattern pattern, String str, Map<String, String> map) {
        return replacePattern(pattern, str, map, null);
    }

    public static String replacePattern(Pattern pattern, String str, Map<String, String> map, String str2) {
        String str3;
        if (pattern != null && str != null) {
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
                        str3 = group;
                        if (i > matcher.groupCount()) {
                            break;
                        } else if (matcher.group(i) != null) {
                            str3 = matcher.group(i);
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (str3.length() == 0) {
                        return str;
                    }
                    String str4 = map != null ? map.get(str3) : null;
                    if (str4 != null) {
                        matcher.appendReplacement(stringBuffer, str4);
                    } else {
                        f61721a.m5559w(String.format("Value for macro key %s was not provided", str3));
                        if (str2 != null) {
                            matcher.appendReplacement(stringBuffer, str2);
                        }
                    }
                } while (matcher.find());
                matcher.appendTail(stringBuffer);
                String stringBuffer2 = stringBuffer.toString();
                if (Logger.isLogLevelEnabled(3)) {
                    f61721a.m5567d(String.format("Macro replacement:\nsource:%s\nresult:%s", str, stringBuffer2));
                }
                return stringBuffer2;
            } catch (Exception e) {
                f61721a.m5564e("Error performing macro replacement", e);
            }
        }
        return str;
    }
}
