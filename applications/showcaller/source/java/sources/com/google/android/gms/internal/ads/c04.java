package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c04.class */
public final class c04 extends oz3 {
    public c04(b04 b04Var, SSLSocketFactory sSLSocketFactory) {
    }

    /* renamed from: a */
    public static List<wy3> m16169a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                for (String str : entry.getValue()) {
                    arrayList.add(new wy3(entry.getKey(), str));
                }
            }
        }
        return arrayList;
    }
}
