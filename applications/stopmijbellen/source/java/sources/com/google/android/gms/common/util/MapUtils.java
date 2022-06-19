package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.HashMap;
import java.util.Iterator;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/MapUtils.class */
public class MapUtils {
    @KeepForSdk
    public static void writeStringMapToJson(StringBuilder sb, HashMap<String, String> hashMap) {
        sb.append("{");
        Iterator<String> it2 = hashMap.keySet().iterator();
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!it2.hasNext()) {
                sb.append("}");
                return;
            }
            String next = it2.next();
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
