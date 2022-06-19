package com.huawei.hms.framework.network.grs.p086f;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.AssetsUtil;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.local.model.C2340a;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.framework.network.grs.f.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/f/b.class */
public class C2313b {

    /* renamed from: b */
    private static final Map<String, C2313b> f7406b = new ConcurrentHashMap(16);

    /* renamed from: c */
    private static final Object f7407c = new Object();

    /* renamed from: a */
    private AbstractC2312a f7408a;

    public C2313b(Context context, GrsBaseInfo grsBaseInfo, boolean z) {
        m37957a(context, z);
        Map<String, C2313b> map = f7406b;
        map.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
    }

    /* renamed from: a */
    public static C2313b m37955a(String str, GrsBaseInfo grsBaseInfo) {
        Map<String, C2313b> map = f7406b;
        StringBuilder m8728C = C22128a.m8728C(str);
        m8728C.append(grsBaseInfo.uniqueCode());
        return map.get(m8728C.toString());
    }

    /* renamed from: a */
    public static void m37960a(Context context, GrsBaseInfo grsBaseInfo) {
        C2313b m37955a = m37955a(context.getPackageName(), grsBaseInfo);
        if (m37955a != null) {
            Logger.m38044i("LocalManagerProxy", "appGrs is not null and clear services.");
            synchronized (f7407c) {
                m37955a.f7408a.m37982a();
            }
        }
    }

    /* renamed from: a */
    public C2340a m37961a() {
        return this.f7408a.m37973b();
    }

    /* renamed from: a */
    public String m37959a(Context context, C2309a c2309a, GrsBaseInfo grsBaseInfo, String str, String str2, boolean z) {
        synchronized (f7407c) {
            String m37981a = this.f7408a.m37981a(context, c2309a, grsBaseInfo, str, str2, z);
            if (!TextUtils.isEmpty(m37981a) || !this.f7408a.m37967d()) {
                return m37981a;
            }
            m37957a(context, true);
            m37956a(grsBaseInfo);
            Map<String, C2313b> map = f7406b;
            map.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
            return this.f7408a.m37981a(context, c2309a, grsBaseInfo, str, str2, z);
        }
    }

    /* renamed from: a */
    public Map<String, String> m37958a(Context context, C2309a c2309a, GrsBaseInfo grsBaseInfo, String str, boolean z) {
        synchronized (f7407c) {
            Map<String, String> m37980a = this.f7408a.m37980a(context, c2309a, grsBaseInfo, str, z);
            if ((m37980a == null || m37980a.isEmpty()) && this.f7408a.m37967d()) {
                m37957a(context, true);
                m37956a(grsBaseInfo);
                Map<String, C2313b> map = f7406b;
                map.put(context.getPackageName() + grsBaseInfo.uniqueCode(), this);
                return this.f7408a.m37980a(context, c2309a, grsBaseInfo, str, z);
            }
            return m37980a;
        }
    }

    /* renamed from: a */
    public void m37957a(Context context, boolean z) {
        String[] list = AssetsUtil.list(context, GrsApp.getInstance().getBrand(""));
        ArrayList arrayList = list == null ? new ArrayList() : Arrays.asList(list);
        String appConfigName = GrsApp.getInstance().getAppConfigName();
        Logger.m38044i("LocalManagerProxy", "appConfigName is" + appConfigName);
        this.f7408a = new d(false, z);
        if (arrayList.contains("grs_app_global_route_config.json") || !TextUtils.isEmpty(appConfigName)) {
            this.f7408a = new d(context, appConfigName, z);
        }
        if (!this.f7408a.m37965e() && arrayList.contains("grs_sdk_global_route_config.json")) {
            this.f7408a = new c(context, z);
        }
        this.f7408a.m37979a(context, arrayList);
    }

    /* renamed from: a */
    public void m37956a(GrsBaseInfo grsBaseInfo) {
        this.f7408a.m37978a(grsBaseInfo);
    }

    /* renamed from: b */
    public Set<String> m37954b() {
        return this.f7408a.m37969c();
    }
}
