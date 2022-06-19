package com.huawei.updatesdk.p097a.p106b.p109c;

import com.huawei.updatesdk.a.b.c.c.d;
import com.huawei.updatesdk.service.appmgr.bean.b;
import com.huawei.updatesdk.service.appmgr.bean.e;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.b.c.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/c/a.class */
public class C2533a {

    /* renamed from: a */
    private static final Map<String, Class> f8216a;

    static {
        HashMap hashMap = new HashMap();
        f8216a = hashMap;
        hashMap.put("client.updateCheck", e.class);
        hashMap.put("client.getMarketInfo", b.class);
    }

    /* renamed from: a */
    public static d m36743a(String str) {
        Class cls = f8216a.get(str);
        if (cls != null) {
            return (d) cls.newInstance();
        }
        throw new InstantiationException(C22128a.m8543z2("ResponseBean class not found, method:", str));
    }
}
