package p157l5;

import com.google.android.gms.common.internal.ImagesContract;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;
import p015b0.C0713a;
import p168m5.C3641a;
import p168m5.C3642b;
import p168m5.C3643c;
import p168m5.C3645e;
/* renamed from: l5.a */
/* loaded from: classes-dex2jar.jar:l5/a.class */
public class C3497a implements AbstractC3502f {
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: b */
    public static long m2228b(C0713a c0713a, long j, JSONObject jSONObject) {
        char c;
        if (jSONObject.has("expires_at")) {
            c = jSONObject.optLong("expires_at");
        } else {
            Objects.requireNonNull(c0713a);
            c = (j * 1000) + System.currentTimeMillis();
        }
        return c;
    }

    @Override // p157l5.AbstractC3502f
    /* renamed from: a */
    public C3645e mo2224a(C0713a c0713a, JSONObject jSONObject) throws JSONException {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        JSONObject jSONObject2 = jSONObject.getJSONObject("app");
        return new C3645e(m2228b(c0713a, optInt2, jSONObject), new C3641a(jSONObject2.getString("status"), jSONObject2.getString(ImagesContract.URL), jSONObject2.getString("reports_url"), jSONObject2.getString("ndk_reports_url"), jSONObject2.optBoolean("update_required", false)), new C3643c(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8), 4), new C3642b(jSONObject.getJSONObject("features").optBoolean("collect_reports", true)), optInt, optInt2);
    }
}
