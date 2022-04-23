package p131c.p161d.p282e.p289l.p290d.p304p;

import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5279q;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.AbstractC5439e;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5437c;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5438d;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5440f;
/* renamed from: c.d.e.l.d.p.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/b.class */
public class C5428b implements AbstractC5433f {
    /* renamed from: a */
    public static long m23805a(AbstractC5279q qVar, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : (j * 1000) + qVar.mo24076a();
    }

    /* renamed from: a */
    public static C5436b m23804a(JSONObject jSONObject) throws JSONException {
        return new C5436b(jSONObject.getString("status"), jSONObject.getString("url"), jSONObject.getString("reports_url"), jSONObject.getString("ndk_reports_url"), jSONObject.optBoolean("update_required", false));
    }

    /* renamed from: a */
    public static AbstractC5439e m23806a(AbstractC5279q qVar) {
        JSONObject jSONObject = new JSONObject();
        return new C5440f(m23805a(qVar, 3600L, jSONObject), null, m23802c(jSONObject), m23803b(jSONObject), 0, 3600);
    }

    /* renamed from: b */
    public static C5437c m23803b(JSONObject jSONObject) {
        return new C5437c(jSONObject.optBoolean("collect_reports", true));
    }

    /* renamed from: c */
    public static C5438d m23802c(JSONObject jSONObject) {
        return new C5438d(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5433f
    /* renamed from: a */
    public C5440f mo23778a(AbstractC5279q qVar, JSONObject jSONObject) throws JSONException {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new C5440f(m23805a(qVar, optInt2, jSONObject), m23804a(jSONObject.getJSONObject("app")), m23802c(jSONObject.getJSONObject("session")), m23803b(jSONObject.getJSONObject("features")), optInt, optInt2);
    }
}
