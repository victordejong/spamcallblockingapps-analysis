package com.huawei.hms.framework.network.grs.p086f;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.local.model.C2340a;
import com.huawei.hms.framework.network.grs.local.model.C2341b;
import com.huawei.hms.framework.network.grs.local.model.C2342c;
import com.huawei.hms.framework.network.grs.local.model.C2343d;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import com.huawei.hms.framework.network.grs.p090h.C2334c;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.framework.network.grs.f.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/f/a.class */
public abstract class AbstractC2312a {

    /* renamed from: a */
    public C2340a f7399a;

    /* renamed from: b */
    public List<C2341b> f7400b;

    /* renamed from: c */
    public Map<String, String> f7401c = new ConcurrentHashMap(16);

    /* renamed from: d */
    public boolean f7402d = false;

    /* renamed from: e */
    public boolean f7403e = false;

    /* renamed from: f */
    public boolean f7404f = false;

    /* renamed from: g */
    public Set<String> f7405g = new HashSet(16);

    /* renamed from: a */
    private Map<String, String> m37975a(List<C2341b> list, GrsBaseInfo grsBaseInfo, String str) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(16);
        concurrentHashMap.put("no_route_country", "no-country");
        for (C2341b c2341b : list) {
            if (c2341b.m37838a().contains(grsBaseInfo.getIssueCountry())) {
                concurrentHashMap.put(grsBaseInfo.getIssueCountry(), c2341b.m37835b());
            }
            if (c2341b.m37838a().contains(grsBaseInfo.getRegCountry())) {
                concurrentHashMap.put(grsBaseInfo.getRegCountry(), c2341b.m37835b());
            }
            if (c2341b.m37838a().contains(grsBaseInfo.getSerCountry())) {
                concurrentHashMap.put(grsBaseInfo.getSerCountry(), c2341b.m37835b());
            }
            if (c2341b.m37838a().contains(str)) {
                Logger.m38042v("AbstractLocalManager", "get countryGroupID from geoIp");
                concurrentHashMap.put(str, c2341b.m37835b());
            }
        }
        return concurrentHashMap;
    }

    /* renamed from: b */
    private int m37971b(String str, Context context) {
        int i = 0;
        if (m37963f(C2334c.m37854a(str, context)) == 0) {
            Logger.m38043i("AbstractLocalManager", "load APP_CONFIG_FILE success{%s}.", str);
        } else {
            i = -1;
        }
        return i;
    }

    /* renamed from: f */
    private int m37963f(String str) {
        int m37972b;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (this.f7403e && (m37972b = m37972b(str)) != 0) {
            return m37972b;
        }
        int m37977a = m37977a(str);
        return m37977a != 0 ? m37977a : m37964e(str);
    }

    /* renamed from: g */
    private int m37962g(String str) {
        List<C2341b> list;
        int m37968c;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return (!this.f7403e || ((list = this.f7400b) != null && !list.isEmpty()) || (m37968c = m37968c(str)) == 0) ? m37966d(str) : m37968c;
    }

    /* renamed from: a */
    public abstract int m37977a(String str);

    /* renamed from: a */
    public int m37976a(String str, Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(GrsApp.getInstance().getBrand(StringConstant.SLASH));
        sb.append(str);
        return m37971b(sb.toString(), context) != 0 ? -1 : 0;
    }

    /* renamed from: a */
    public String m37981a(Context context, C2309a c2309a, GrsBaseInfo grsBaseInfo, String str, String str2, boolean z) {
        Map<String, String> m37980a = m37980a(context, c2309a, grsBaseInfo, str, z);
        if (m37980a == null) {
            Logger.m38038w("AbstractLocalManager", "addresses not found by routeby in local config{%s}", str);
            return null;
        }
        return m37980a.get(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b6 A[Catch: JSONException -> 0x00ec, LOOP:1: B:27:0x00ac->B:29:0x00b6, LOOP_END, TRY_LEAVE, TryCatch #0 {JSONException -> 0x00ec, blocks: (B:6:0x000e, B:8:0x001a, B:10:0x0022, B:12:0x005a, B:14:0x0064, B:16:0x0070, B:18:0x007a, B:19:0x0086, B:20:0x008d, B:20:0x008d, B:21:0x0090, B:23:0x009e, B:27:0x00ac, B:29:0x00b6, B:30:0x00cc, B:31:0x00e0), top: B:40:0x000e }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.huawei.hms.framework.network.grs.local.model.C2341b> m37974a(org.json.JSONArray r8) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.p086f.AbstractC2312a.m37974a(org.json.JSONArray):java.util.List");
    }

    /* renamed from: a */
    public Map<String, String> m37980a(Context context, C2309a c2309a, GrsBaseInfo grsBaseInfo, String str, boolean z) {
        C2340a c2340a = this.f7399a;
        if (c2340a == null) {
            Logger.m38040w("AbstractLocalManager", "application data is null.");
            return null;
        }
        C2342c m37842a = c2340a.m37842a(str);
        if (m37842a == null) {
            Logger.m38038w("AbstractLocalManager", "service not found in local config{%s}", str);
            return null;
        }
        String m37952b = C2314e.m37952b(context, c2309a, m37842a.m37828b(), grsBaseInfo, z);
        if (m37952b == null) {
            Logger.m38038w("AbstractLocalManager", "country not found by routeby in local config{%s}", m37842a.m37828b());
            return null;
        }
        List<C2341b> m37832a = m37842a.m37832a();
        C2343d m37831a = m37842a.m37831a(((m37832a == null || m37832a.size() == 0) ? this.f7401c : m37975a(m37832a, grsBaseInfo, m37952b)).get(m37952b));
        if (m37831a != null) {
            return m37831a.m37825a();
        }
        return null;
    }

    /* renamed from: a */
    public void m37982a() {
        C2340a c2340a = this.f7399a;
        if (c2340a != null) {
            c2340a.m37844a();
            this.f7404f = true;
        }
    }

    /* renamed from: a */
    public void m37979a(Context context, List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (String str : list) {
            if (Pattern.matches("^grs_sdk_global_route_config_[a-zA-Z]+\\.json$", str)) {
                if (m37962g(C2334c.m37854a(GrsApp.getInstance().getBrand(StringConstant.SLASH) + str, context)) == 0) {
                    Logger.m38043i("AbstractLocalManager", "load SDK_CONFIG_FILE: %s, sucess.", str);
                } else {
                    Logger.m38043i("AbstractLocalManager", "load SDK_CONFIG_FILE: %s, failure.", str);
                }
            }
        }
    }

    /* renamed from: a */
    public void m37978a(GrsBaseInfo grsBaseInfo) {
        this.f7401c.put("no_route_country", "no-country");
        List<C2341b> list = this.f7400b;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (C2341b c2341b : this.f7400b) {
            if (c2341b.m37838a().contains(grsBaseInfo.getIssueCountry())) {
                this.f7401c.put(grsBaseInfo.getIssueCountry(), c2341b.m37835b());
            }
            if (c2341b.m37838a().contains(grsBaseInfo.getRegCountry())) {
                this.f7401c.put(grsBaseInfo.getRegCountry(), c2341b.m37835b());
            }
            if (c2341b.m37838a().contains(grsBaseInfo.getSerCountry())) {
                this.f7401c.put(grsBaseInfo.getSerCountry(), c2341b.m37835b());
            }
        }
        this.f7400b = null;
    }

    /* renamed from: b */
    public abstract int m37972b(String str);

    /* renamed from: b */
    public C2340a m37973b() {
        return this.f7399a;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00ff A[LOOP:2: B:23:0x00f5->B:25:0x00ff, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0187  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m37970b(org.json.JSONArray r8) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.p086f.AbstractC2312a.m37970b(org.json.JSONArray):void");
    }

    /* renamed from: c */
    public int m37968c(String str) {
        this.f7400b = new ArrayList(16);
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = null;
            if (jSONObject.has("countryOrAreaGroups")) {
                jSONArray = jSONObject.getJSONArray("countryOrAreaGroups");
            } else if (jSONObject.has("countryGroups")) {
                jSONArray = jSONObject.getJSONArray("countryGroups");
            } else {
                Logger.m38047e("AbstractLocalManager", "maybe local config json is wrong because the default countryOrAreaGroups isn't config.");
            }
            if (jSONArray == null) {
                return -1;
            }
            this.f7400b.addAll(m37974a(jSONArray));
            return 0;
        } catch (JSONException e) {
            Logger.m38038w("AbstractLocalManager", "parse countrygroup failed maybe json style is wrong. %s", StringUtils.anonymizeMessage(e.getMessage()));
            return -1;
        }
    }

    /* renamed from: c */
    public Set<String> m37969c() {
        return this.f7405g;
    }

    /* renamed from: d */
    public int m37966d(String str) {
        try {
            m37970b(new JSONObject(str).getJSONArray("services"));
            return 0;
        } catch (JSONException e) {
            Logger.m38038w("AbstractLocalManager", "parse 2.0 services failed maybe because of json style.please check! %s", StringUtils.anonymizeMessage(e.getMessage()));
            return -1;
        }
    }

    /* renamed from: d */
    public boolean m37967d() {
        return this.f7404f;
    }

    /* renamed from: e */
    public abstract int m37964e(String str);

    /* renamed from: e */
    public boolean m37965e() {
        return this.f7402d;
    }
}
