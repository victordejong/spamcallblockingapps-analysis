package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/util/MapUtils.class */
public class MapUtils {
    @KeepForSdk
    /* renamed from: a */
    public static void m38777a(StringBuilder sb, HashMap<String, String> hashMap) {
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
            C22128a.m8669S0(sb, "\"", next, "\":");
            if (str == null) {
                sb.append(AnalyticsConstants.NULL);
            } else {
                C22128a.m8669S0(sb, "\"", str, "\"");
            }
            z = false;
        }
    }
}
