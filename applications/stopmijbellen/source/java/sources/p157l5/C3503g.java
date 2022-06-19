package p157l5;

import java.util.Locale;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import p015b0.C0713a;
import p168m5.C3641a;
import p168m5.C3642b;
import p168m5.C3643c;
import p168m5.C3645e;
/* renamed from: l5.g */
/* loaded from: classes-dex2jar.jar:l5/g.class */
public class C3503g implements AbstractC3502f {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // p157l5.AbstractC3502f
    /* renamed from: a */
    public C3645e mo2224a(C0713a c0713a, JSONObject jSONObject) throws JSONException {
        char c;
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("fabric");
        JSONObject jSONObject3 = jSONObject.getJSONObject("app");
        String string = jSONObject3.getString("status");
        boolean equals = "new".equals(string);
        String string2 = jSONObject2.getString("bundle_id");
        String string3 = jSONObject2.getString("org_id");
        String format = equals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2);
        Locale locale = Locale.US;
        C3641a c3641a = new C3641a(string, format, String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, string3, jSONObject3.optBoolean("update_required", false), jSONObject3.optInt("report_upload_variant", 0), jSONObject3.optInt("native_report_upload_variant", 0));
        C3643c c3643c = new C3643c(8, 4);
        C3642b c3642b = new C3642b(jSONObject.getJSONObject("features").optBoolean("collect_reports", true));
        long j = optInt2;
        if (jSONObject.has("expires_at")) {
            c = jSONObject.optLong("expires_at");
        } else {
            Objects.requireNonNull(c0713a);
            c = (j * 1000) + System.currentTimeMillis();
        }
        return new C3645e(c, c3641a, c3643c, c3642b, optInt, optInt2);
    }
}
