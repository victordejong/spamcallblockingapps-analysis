package com.huawei.updatesdk.p111b.p118e;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.huawei.updatesdk.b.e.f */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/e/f.class */
public class C2561f {

    /* renamed from: a */
    private static final Map<String, AbstractC2558a> f8270a = new ConcurrentHashMap();

    /* renamed from: a */
    public static AbstractC2558a m36617a(boolean z) {
        String str = z ? "apptouch" : "default";
        if (TextUtils.isEmpty(str)) {
            return new c();
        }
        Map<String, AbstractC2558a> map = f8270a;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        map.put(str, "apptouch".equals(str) ? new b() : new c());
        return map.get(str);
    }
}
