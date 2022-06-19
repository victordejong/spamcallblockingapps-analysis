package com.huawei.updatesdk.p111b.p116c;

import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.huawei.updatesdk.b.c.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/c/b.class */
public class C2548b {

    /* renamed from: a */
    private static final Map<Integer, Class<? extends AbstractC2549c>> f8251a;

    /* renamed from: b */
    private static AbstractC2549c f8252b;

    static {
        HashMap hashMap = new HashMap();
        f8251a = hashMap;
        hashMap.put(3, a.class);
        hashMap.put(1, e.class);
        hashMap.put(2, f.class);
        hashMap.put(0, d.class);
        hashMap.put(4, d.class);
        hashMap.put(7, d.class);
    }

    /* renamed from: a */
    public static AbstractC2549c m36671a() {
        synchronized (C2548b.class) {
            try {
                AbstractC2549c abstractC2549c = f8252b;
                if (abstractC2549c != null) {
                    return abstractC2549c;
                }
                C2511a.m36862b("DeviceImplFactory", "deviceType: " + C2526c.m36782d());
                Class<? extends AbstractC2549c> cls = f8251a.get(Integer.valueOf(C2526c.m36782d()));
                if (cls == null) {
                    d dVar = new d();
                    f8252b = dVar;
                    return dVar;
                }
                f8252b = cls.newInstance();
                return f8252b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
