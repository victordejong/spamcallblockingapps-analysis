package com.huawei.hms.framework.network.grs.p087g.p089k;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.p086f.C2313b;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.huawei.hms.framework.network.grs.g.k.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/k/c.class */
public class C2330c {

    /* renamed from: a */
    private final GrsBaseInfo f7480a;

    /* renamed from: b */
    private final Context f7481b;

    /* renamed from: c */
    private final Set<String> f7482c = new HashSet();

    public C2330c(GrsBaseInfo grsBaseInfo, Context context) {
        this.f7480a = grsBaseInfo;
        this.f7481b = context;
    }

    /* renamed from: e */
    private String m37872e() {
        Set<String> m37954b = C2313b.m37955a(this.f7481b.getPackageName(), this.f7480a).m37954b();
        if (m37954b.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : m37954b) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("services", jSONArray);
            Logger.m38043i("GrsRequestInfo", "post service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    /* renamed from: f */
    private String m37871f() {
        Logger.m38042v("GrsRequestInfo", "getGeoipService enter");
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (String str : this.f7482c) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put("services", jSONArray);
            Logger.m38041v("GrsRequestInfo", "post query service list is:%s", jSONObject.toString());
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    /* renamed from: a */
    public Context m37877a() {
        return this.f7481b;
    }

    /* renamed from: a */
    public void m37876a(String str) {
        this.f7482c.add(str);
    }

    /* renamed from: b */
    public GrsBaseInfo m37875b() {
        return this.f7480a;
    }

    /* renamed from: c */
    public String m37874c() {
        return this.f7482c.size() == 0 ? m37872e() : m37871f();
    }

    /* renamed from: d */
    public Set<String> m37873d() {
        return this.f7482c;
    }
}
