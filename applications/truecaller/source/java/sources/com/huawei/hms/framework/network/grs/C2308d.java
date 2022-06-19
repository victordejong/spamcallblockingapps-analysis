package com.huawei.hms.framework.network.grs;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.huawei.hms.framework.network.grs.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/d.class */
public class C2308d {

    /* renamed from: a */
    private static final Map<String, C2306c> f7387a = new ConcurrentHashMap(16);

    /* renamed from: b */
    private static final Object f7388b = new Object();

    /* renamed from: a */
    public static C2306c m38000a(GrsBaseInfo grsBaseInfo, Context context) {
        synchronized (f7388b) {
            int uniqueCode = grsBaseInfo.uniqueCode();
            Map<String, C2306c> map = f7387a;
            C2306c c2306c = map.get(context.getPackageName() + uniqueCode);
            if (c2306c == null) {
                C2306c c2306c2 = new C2306c(context, grsBaseInfo);
                map.put(context.getPackageName() + uniqueCode, c2306c2);
                return c2306c2;
            } else if (c2306c.m38015a((Object) new C2306c(grsBaseInfo))) {
                return c2306c;
            } else {
                C2306c c2306c3 = new C2306c(context, grsBaseInfo);
                map.put(context.getPackageName() + uniqueCode, c2306c3);
                return c2306c3;
            }
        }
    }
}
