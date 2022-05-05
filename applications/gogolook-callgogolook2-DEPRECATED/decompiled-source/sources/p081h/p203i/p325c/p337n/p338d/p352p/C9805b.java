package p081h.p203i.p325c.p337n.p338d.p352p;

import androidx.core.util.TimeUtils;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9612s;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.AbstractC9817e;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9815c;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9816d;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9818f;
/* renamed from: h.i.c.n.d.p.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/p/b.class */
public class C9805b implements AbstractC9811g {
    /* renamed from: a */
    public static long m14168a(AbstractC9612s sVar, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : sVar.mo14711a() + (j * 1000);
    }

    /* renamed from: a */
    public static C9814b m14167a(JSONObject jSONObject) throws JSONException {
        return new C9814b(jSONObject.getString("status"), jSONObject.getString("url"), jSONObject.getString("reports_url"), jSONObject.getString("ndk_reports_url"), jSONObject.optBoolean("update_required", false));
    }

    /* renamed from: a */
    public static AbstractC9817e m14169a(AbstractC9612s sVar) {
        JSONObject jSONObject = new JSONObject();
        return new C9818f(m14168a(sVar, 3600L, jSONObject), null, m14165c(jSONObject), m14166b(jSONObject), 0, TimeUtils.SECONDS_PER_HOUR);
    }

    /* renamed from: b */
    public static C9815c m14166b(JSONObject jSONObject) {
        return new C9815c(jSONObject.optBoolean("collect_reports", true));
    }

    /* renamed from: c */
    public static C9816d m14165c(JSONObject jSONObject) {
        return new C9816d(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9811g
    /* renamed from: a */
    public C9818f mo14141a(AbstractC9612s sVar, JSONObject jSONObject) throws JSONException {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", TimeUtils.SECONDS_PER_HOUR);
        return new C9818f(m14168a(sVar, optInt2, jSONObject), m14167a(jSONObject.getJSONObject("app")), m14165c(jSONObject.getJSONObject("session")), m14166b(jSONObject.getJSONObject(IapPlanRealmObject.FEATURES)), optInt, optInt2);
    }
}
