package p131c.p161d.p282e.p289l.p290d.p304p;

import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5279q;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5437c;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5438d;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5440f;
/* renamed from: c.d.e.l.d.p.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/p/g.class */
public class C5434g implements AbstractC5433f {
    /* renamed from: a */
    public static long m23779a(AbstractC5279q qVar, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : (j * 1000) + qVar.mo24076a();
    }

    /* renamed from: a */
    public static C5436b m23776a(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        String string = jSONObject2.getString("status");
        boolean equals = "new".equals(string);
        String string2 = jSONObject.getString("bundle_id");
        return new C5436b(string, equals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2), String.format(Locale.US, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(Locale.US, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, jSONObject.getString("org_id"), jSONObject2.optBoolean("update_required", false), jSONObject2.optInt("report_upload_variant", 0), jSONObject2.optInt("native_report_upload_variant", 0));
    }

    /* renamed from: a */
    public static C5437c m23777a(JSONObject jSONObject) {
        return new C5437c(jSONObject.optBoolean("collect_reports", true));
    }

    /* renamed from: a */
    public static C5438d m23780a() {
        return new C5438d(8, 4);
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5433f
    /* renamed from: a */
    public C5440f mo23778a(AbstractC5279q qVar, JSONObject jSONObject) throws JSONException {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new C5440f(m23779a(qVar, optInt2, jSONObject), m23776a(jSONObject.getJSONObject("fabric"), jSONObject.getJSONObject("app")), m23780a(), m23777a(jSONObject.getJSONObject("features")), optInt, optInt2);
    }
}
