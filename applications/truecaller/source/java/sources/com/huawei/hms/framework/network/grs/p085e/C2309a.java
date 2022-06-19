package com.huawei.hms.framework.network.grs.p085e;

import android.content.Context;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.C2304a;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.p087g.C2321d;
import com.huawei.hms.framework.network.grs.p087g.C2324h;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2330c;
import com.huawei.hms.framework.network.grs.p090h.C2337e;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.e.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/e/a.class */
public class C2309a {

    /* renamed from: f */
    private static final String f7389f = "a";

    /* renamed from: a */
    private final Map<String, Map<String, Map<String, String>>> f7390a = new ConcurrentHashMap(16);

    /* renamed from: b */
    private final Map<String, Long> f7391b = new ConcurrentHashMap(16);

    /* renamed from: c */
    private final C2311c f7392c;

    /* renamed from: d */
    private final C2311c f7393d;

    /* renamed from: e */
    private final C2324h f7394e;

    public C2309a(C2311c c2311c, C2311c c2311c2, C2324h c2324h) {
        this.f7393d = c2311c2;
        this.f7392c = c2311c;
        this.f7394e = c2324h;
        c2324h.m37890a(this);
    }

    /* renamed from: a */
    private void m37997a(GrsBaseInfo grsBaseInfo, C2310b c2310b, Context context, String str) {
        Long l = this.f7391b.get(grsBaseInfo.getGrsParasKey(true, true, context));
        if (C2337e.m37850a(l)) {
            c2310b.m37989a(2);
            return;
        }
        if (C2337e.m37849a(l, 300000L)) {
            this.f7394e.m37886a(new C2330c(grsBaseInfo, context), null, str, this.f7393d);
        }
        c2310b.m37989a(1);
    }

    /* renamed from: a */
    private void m37995a(GrsBaseInfo grsBaseInfo, String str, Context context) {
        if (C2337e.m37849a(this.f7391b.get(str), 300000L)) {
            this.f7394e.m37886a(new C2330c(grsBaseInfo, context), null, null, this.f7393d);
        }
    }

    /* renamed from: a */
    public C2311c m37999a() {
        return this.f7392c;
    }

    /* renamed from: a */
    public Map<String, String> m37994a(GrsBaseInfo grsBaseInfo, String str, C2310b c2310b, Context context) {
        Map<String, Map<String, String>> map = this.f7390a.get(grsBaseInfo.getGrsParasKey(true, true, context));
        if (map == null || map.isEmpty()) {
            return new HashMap();
        }
        m37997a(grsBaseInfo, c2310b, context, str);
        return map.get(str);
    }

    /* renamed from: a */
    public void m37998a(GrsBaseInfo grsBaseInfo, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        C2311c c2311c = this.f7392c;
        c2311c.m37983b(grsParasKey + "time", DtbConstants.NETWORK_TYPE_UNKNOWN);
        Map<String, Long> map = this.f7391b;
        map.remove(grsParasKey + "time");
        this.f7390a.remove(grsParasKey);
        this.f7394e.m37884a(grsParasKey);
    }

    /* renamed from: a */
    public void m37996a(GrsBaseInfo grsBaseInfo, C2321d c2321d, Context context, C2330c c2330c) {
        if (c2321d.m37908f() == 2) {
            Logger.m38040w(f7389f, "update cache from server failed");
        } else if (c2330c.m37873d().size() != 0) {
            this.f7392c.m37983b("geoipCountryCode", c2321d.m37903j());
            this.f7392c.m37983b("geoipCountryCodetime", c2321d.m37927a());
        } else {
            String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
            if (c2321d.m37900m()) {
                this.f7390a.put(grsParasKey, C2304a.m38034a(this.f7392c.m37985a(grsParasKey, "")));
            } else {
                this.f7392c.m37983b(grsParasKey, c2321d.m37903j());
                this.f7390a.put(grsParasKey, C2304a.m38034a(c2321d.m37903j()));
                this.f7392c.m37983b(C22128a.m8543z2(grsParasKey, "ETag"), c2321d.m37910e());
            }
            this.f7392c.m37983b(C22128a.m8543z2(grsParasKey, "time"), c2321d.m37927a());
            this.f7391b.put(grsParasKey, Long.valueOf(Long.parseLong(c2321d.m37927a())));
        }
    }

    /* renamed from: b */
    public C2324h m37993b() {
        return this.f7394e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: b */
    public void m37992b(GrsBaseInfo grsBaseInfo, Context context) {
        String grsParasKey = grsBaseInfo.getGrsParasKey(true, true, context);
        String m37985a = this.f7392c.m37985a(grsParasKey, "");
        String m37985a2 = this.f7392c.m37985a(grsParasKey + "time", DtbConstants.NETWORK_TYPE_UNKNOWN);
        ?? r15 = false;
        if (!TextUtils.isEmpty(m37985a2)) {
            r15 = false;
            if (m37985a2.matches("\\d+")) {
                try {
                    r15 = Long.parseLong(m37985a2);
                } catch (NumberFormatException e) {
                    Logger.m38039w(f7389f, "convert urlParamKey from String to Long catch NumberFormatException.", e);
                    r15 = false;
                }
            }
        }
        this.f7390a.put(grsParasKey, C2304a.m38034a(m37985a));
        this.f7391b.put(grsParasKey, Long.valueOf(r15 == true ? 1L : 0L));
        m37995a(grsBaseInfo, grsParasKey, context);
    }

    /* renamed from: c */
    public C2311c m37991c() {
        return this.f7393d;
    }
}
