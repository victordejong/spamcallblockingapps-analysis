package com.huawei.hms.framework.network.grs;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.local.model.CountryCodeBean;
import com.huawei.hms.framework.network.grs.p085e.C2309a;
import com.huawei.hms.framework.network.grs.p085e.C2310b;
import com.huawei.hms.framework.network.grs.p085e.C2311c;
import com.huawei.hms.framework.network.grs.p086f.C2313b;
import com.huawei.hms.framework.network.grs.p087g.C2321d;
import com.huawei.hms.framework.network.grs.p087g.C2324h;
import com.huawei.hms.framework.network.grs.p087g.p089k.C2330c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.framework.network.grs.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/a.class */
public class C2304a {

    /* renamed from: e */
    private static final String f7368e = "a";

    /* renamed from: a */
    private final GrsBaseInfo f7369a;

    /* renamed from: b */
    private C2309a f7370b;

    /* renamed from: c */
    private C2324h f7371c;

    /* renamed from: d */
    private C2311c f7372d;

    public C2304a(GrsBaseInfo grsBaseInfo, C2309a c2309a, C2324h c2324h, C2311c c2311c) {
        this.f7369a = grsBaseInfo;
        this.f7370b = c2309a;
        this.f7371c = c2324h;
        this.f7372d = c2311c;
    }

    /* renamed from: a */
    public static CountryCodeBean m38035a(Context context, boolean z) {
        return new CountryCodeBean(context, z);
    }

    /* renamed from: a */
    public static Map<String, Map<String, String>> m38034a(String str) {
        HashMap hashMap = new HashMap(16);
        if (TextUtils.isEmpty(str)) {
            Logger.m38042v(f7368e, "isSpExpire jsonValue is null.");
            return hashMap;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, m38027a(jSONObject.getJSONObject(next)));
            }
            return hashMap;
        } catch (JSONException e) {
            Logger.m38038w(f7368e, "getServicesUrlsMap occur a JSONException: %s", StringUtils.anonymizeMessage(e.getMessage()));
            return hashMap;
        }
    }

    /* renamed from: a */
    private Map<String, String> m38031a(String str, C2310b c2310b, Context context) {
        Map<String, String> m37994a = this.f7370b.m37994a(this.f7369a, str, c2310b, context);
        if (m37994a != null && !m37994a.isEmpty()) {
            C2313b.m37960a(context, this.f7369a);
            return m37994a;
        }
        HashMap m37958a = C2313b.m37955a(context.getPackageName(), this.f7369a).m37958a(context, this.f7370b, this.f7369a, str, false);
        if (m37958a == null) {
            m37958a = new HashMap();
        }
        return m37958a;
    }

    /* renamed from: a */
    public static Map<String, String> m38030a(String str, String str2) {
        HashMap hashMap = new HashMap();
        if (TextUtils.isEmpty(str)) {
            Logger.m38040w(f7368e, "isSpExpire jsonValue from server is null.");
            return hashMap;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = jSONObject.has(str2) ? jSONObject.getJSONObject(str2) : null;
            if (jSONObject2 == null) {
                Logger.m38038w(f7368e, "getServiceNameUrls: paser null from server json data by {%s}.", str2);
                return hashMap;
            }
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject2.get(next).toString());
            }
            return hashMap;
        } catch (JSONException e) {
            Logger.m38038w(f7368e, "Method{getServiceNameUrls} query url from SP occur an JSONException: %s", StringUtils.anonymizeMessage(e.getMessage()));
            return hashMap;
        }
    }

    /* renamed from: a */
    public static Map<String, String> m38027a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap(16);
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.get(next).toString());
            }
            return hashMap;
        } catch (JSONException e) {
            Logger.m38038w(f7368e, "getServiceUrls occur a JSONException: %s", StringUtils.anonymizeMessage(e.getMessage()));
            return hashMap;
        }
    }

    /* renamed from: a */
    public String m38036a(Context context, String str) {
        C2321d m37885a = this.f7371c.m37885a(new C2330c(this.f7369a, context), str, this.f7372d);
        return m37885a == null ? "" : m37885a.m37900m() ? this.f7370b.m37999a().m37985a(this.f7369a.getGrsParasKey(true, true, context), "") : m37885a.m37903j();
    }

    /* renamed from: a */
    public String m38029a(String str, String str2, Context context) {
        String str3;
        C2310b c2310b = new C2310b();
        String str4 = m38031a(str, c2310b, context).get(str2);
        if (c2310b.m37990a() && !TextUtils.isEmpty(str4)) {
            Logger.m38043i(f7368e, "get unexpired cache localUrl: %s", StringUtils.anonymizeMessage(str4));
            C2313b.m37960a(context, this.f7369a);
            return str4;
        }
        String str5 = m38030a(m38036a(context, str), str).get(str2);
        if (!TextUtils.isEmpty(str5)) {
            Logger.m38044i(f7368e, "get url is from remote server");
            C2313b.m37960a(context, this.f7369a);
            return str5;
        }
        if (TextUtils.isEmpty(str4)) {
            Logger.m38044i(f7368e, "access local config for return a domain.");
            str3 = C2313b.m37955a(context.getPackageName(), this.f7369a).m37959a(context, this.f7370b, this.f7369a, str, str2, true);
        } else {
            Logger.m38044i(f7368e, "get expired cache localUrl");
            str3 = str4;
        }
        Logger.m38043i(f7368e, "synGetGrsUrl: %s", StringUtils.anonymizeMessage(str3));
        return str3;
    }

    /* renamed from: a */
    public Map<String, String> m38033a(String str, Context context) {
        Map<String, String> map;
        C2310b c2310b = new C2310b();
        Map<String, String> m38031a = m38031a(str, c2310b, context);
        if (c2310b.m37990a() && !m38031a.isEmpty()) {
            Logger.m38043i(f7368e, "get unexpired cache localUrls: %s", StringUtils.anonymizeMessage(new JSONObject(m38031a).toString()));
            C2313b.m37960a(context, this.f7369a);
            return m38031a;
        }
        Map<String, String> m38030a = m38030a(m38036a(context, str), str);
        if (!m38030a.isEmpty()) {
            Logger.m38044i(f7368e, "get url is from remote server");
            C2313b.m37960a(context, this.f7369a);
            return m38030a;
        }
        if (m38031a.isEmpty()) {
            Logger.m38044i(f7368e, "access local config for return a domain.");
            map = C2313b.m37955a(context.getPackageName(), this.f7369a).m37958a(context, this.f7370b, this.f7369a, str, true);
        } else {
            Logger.m38044i(f7368e, "get expired cache localUrls");
            map = m38031a;
        }
        Logger.m38043i(f7368e, "synGetGrsUrls: %s", StringUtils.anonymizeMessage(map != null ? new JSONObject(map).toString() : ""));
        return map;
    }

    /* renamed from: a */
    public void m38032a(String str, IQueryUrlsCallBack iQueryUrlsCallBack, Context context) {
        C2310b c2310b = new C2310b();
        Map<String, String> m38031a = m38031a(str, c2310b, context);
        if (!c2310b.m37990a()) {
            this.f7371c.m37886a(new C2330c(this.f7369a, context), new a(str, m38031a, iQueryUrlsCallBack, context, this.f7369a, this.f7370b), str, this.f7372d);
            return;
        }
        String str2 = f7368e;
        Logger.m38044i(str2, "get unexpired cache localUrls");
        if (m38031a.isEmpty()) {
            iQueryUrlsCallBack.onCallBackFail(-5);
            return;
        }
        C2313b.m37960a(context, this.f7369a);
        Logger.m38043i(str2, "ayncGetGrsUrls: %s", StringUtils.anonymizeMessage(new JSONObject(m38031a).toString()));
        iQueryUrlsCallBack.onCallBackSuccess(m38031a);
    }

    /* renamed from: a */
    public void m38028a(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack, Context context) {
        C2310b c2310b = new C2310b();
        String str3 = m38031a(str, c2310b, context).get(str2);
        if (!c2310b.m37990a()) {
            this.f7371c.m37886a(new C2330c(this.f7369a, context), new b(str, str2, iQueryUrlCallBack, str3, context, this.f7369a, this.f7370b), str, this.f7372d);
            return;
        }
        String str4 = f7368e;
        Logger.m38044i(str4, "get unexpired cache localUrl");
        if (TextUtils.isEmpty(str3)) {
            iQueryUrlCallBack.onCallBackFail(-5);
            return;
        }
        C2313b.m37960a(context, this.f7369a);
        Logger.m38043i(str4, "ayncGetGrsUrl: %s", StringUtils.anonymizeMessage(str3));
        iQueryUrlCallBack.onCallBackSuccess(str3);
    }
}
