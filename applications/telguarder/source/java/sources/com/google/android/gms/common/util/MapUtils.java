package com.google.android.gms.common.util;

import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/MapUtils.class */
public class MapUtils {
    public static void writeStringMapToJson(StringBuilder sb, HashMap<String, String> hashMap) {
        sb.append("{");
        Iterator<String> it = hashMap.keySet().iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                sb.append("}");
                return;
            }
            String next = it.next();
            if (!z2) {
                sb.append(",");
            }
            String str = hashMap.get(next);
            sb.append("\"");
            sb.append(next);
            sb.append("\":");
            if (str == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str);
                sb.append("\"");
            }
            z = false;
        }
    }
}
