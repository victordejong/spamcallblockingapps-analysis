package com.google.android.gms.common.util;

import java.util.HashMap;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/m.class */
public final class m {
    public static void a(StringBuilder sb, HashMap<String, String> hashMap) {
        sb.append("{");
        boolean z = true;
        for (String str : hashMap.keySet()) {
            if (!z) {
                sb.append(",");
            }
            String str2 = hashMap.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append(JsonReaderKt.NULL);
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
            z = false;
        }
        sb.append("}");
    }
}
