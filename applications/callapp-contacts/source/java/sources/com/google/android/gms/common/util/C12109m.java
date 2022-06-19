package com.google.android.gms.common.util;

import java.util.HashMap;
import java.util.Iterator;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.android.gms.common.util.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/m.class */
public final class C12109m {
    /* renamed from: a */
    public static void m19022a(StringBuilder sb, HashMap<String, String> hashMap) {
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
                sb.append(JsonReaderKt.NULL);
            } else {
                sb.append("\"");
                sb.append(str);
                sb.append("\"");
            }
            z = false;
        }
    }
}
