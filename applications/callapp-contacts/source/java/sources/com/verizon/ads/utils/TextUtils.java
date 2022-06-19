package com.verizon.ads.utils;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/TextUtils.class */
public class TextUtils {
    public static boolean isEmpty(String str) {
        return str == null || str.trim().isEmpty();
    }

    public static Set<String> split(String str, String str2) {
        String[] split;
        HashSet hashSet = new HashSet();
        if (str != null && str2 != null) {
            for (String str3 : str.split(str2)) {
                if (!isEmpty(str3)) {
                    hashSet.add(str3);
                }
            }
        }
        return hashSet;
    }
}
