package com.huawei.hms.framework.network.grs.p090h;

import android.os.SystemClock;
import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.h.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/d.class */
public class C2335d {

    /* renamed from: a */
    private static final Map<String, C2336a> f7490a = new ConcurrentHashMap(16);

    /* renamed from: com.huawei.hms.framework.network.grs.h.d$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/d$a.class */
    public static class C2336a {

        /* renamed from: a */
        private final long f7491a;

        /* renamed from: b */
        private final long f7492b;

        public C2336a(long j, long j2) {
            this.f7491a = j;
            this.f7492b = j2;
        }

        /* renamed from: a */
        public boolean m37851a() {
            return SystemClock.elapsedRealtime() - this.f7492b <= this.f7491a;
        }
    }

    /* renamed from: a */
    public static C2336a m37853a(String str) {
        StringBuilder m8728C = C22128a.m8728C("map size of get is before:");
        Map<String, C2336a> map = f7490a;
        m8728C.append(map.size());
        Logger.m38042v("RequestUtil", m8728C.toString());
        C2336a c2336a = map.get(str);
        StringBuilder m8728C2 = C22128a.m8728C("map size of get is after:");
        m8728C2.append(map.size());
        Logger.m38042v("RequestUtil", m8728C2.toString());
        return c2336a;
    }

    /* renamed from: a */
    public static void m37852a(String str, C2336a c2336a) {
        StringBuilder m8728C = C22128a.m8728C("map size of put is before:");
        Map<String, C2336a> map = f7490a;
        m8728C.append(map.size());
        Logger.m38042v("RequestUtil", m8728C.toString());
        map.put(str, c2336a);
        Logger.m38042v("RequestUtil", "map size of put is after:" + map.size());
    }
}
