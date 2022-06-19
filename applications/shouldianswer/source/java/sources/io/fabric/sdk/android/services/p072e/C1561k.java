package io.fabric.sdk.android.services.p072e;

import com.crashlytics.android.beta.BuildConfig;
import com.google.android.gms.common.internal.ImagesContract;
import io.fabric.sdk.android.services.p068b.AbstractC1486k;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import org.json.JSONObject;
/* renamed from: io.fabric.sdk.android.services.e.k */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/k.class */
class C1561k implements AbstractC1574v {
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    private long m3322a(AbstractC1486k abstractC1486k, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.getLong("expires_at") : abstractC1486k.mo3399a() + (j * 1000);
    }

    /* renamed from: a */
    private C1555e m3321a(JSONObject jSONObject) {
        return new C1555e(jSONObject.getString("identifier"), jSONObject.getString("status"), jSONObject.getString(ImagesContract.URL), jSONObject.getString("reports_url"), jSONObject.getString("ndk_reports_url"), jSONObject.optBoolean("update_required", false), (!jSONObject.has("icon") || !jSONObject.getJSONObject("icon").has("hash")) ? null : m3320b(jSONObject.getJSONObject("icon")));
    }

    /* renamed from: b */
    private C1553c m3320b(JSONObject jSONObject) {
        return new C1553c(jSONObject.getString("hash"), jSONObject.getInt("width"), jSONObject.getInt("height"));
    }

    /* renamed from: c */
    private C1563m m3319c(JSONObject jSONObject) {
        return new C1563m(jSONObject.optBoolean("prompt_enabled", false), jSONObject.optBoolean("collect_logged_exceptions", true), jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_analytics", false), jSONObject.optBoolean("firebase_crashlytics_enabled", false));
    }

    /* renamed from: d */
    private C1552b m3318d(JSONObject jSONObject) {
        return new C1552b(jSONObject.optString(ImagesContract.URL, "https://e.crashlytics.com/spi/v2/events"), jSONObject.optInt("flush_interval_secs", 600), jSONObject.optInt("max_byte_size_per_file", AbstractC1507b.MAX_BYTE_SIZE_PER_FILE), jSONObject.optInt("max_file_count_per_send", 1), jSONObject.optInt("max_pending_send_file_count", 100), jSONObject.optBoolean("forward_to_google_analytics", false), jSONObject.optBoolean("include_purchase_events_in_forwarded_events", false), jSONObject.optBoolean("track_custom_events", true), jSONObject.optBoolean("track_predefined_events", true), jSONObject.optInt("sampling_rate", 1), jSONObject.optBoolean("flush_on_background", true));
    }

    /* renamed from: e */
    private C1566p m3317e(JSONObject jSONObject) {
        return new C1566p(jSONObject.optInt("log_buffer_size", 64000), jSONObject.optInt("max_chained_exception_depth", 8), jSONObject.optInt("max_custom_exception_events", 64), jSONObject.optInt("max_custom_key_value_pairs", 64), jSONObject.optInt("identifier_mask", 255), jSONObject.optBoolean("send_session_without_crash", false), jSONObject.optInt("max_complete_sessions_count", 4));
    }

    /* renamed from: f */
    private C1565o m3316f(JSONObject jSONObject) {
        return new C1565o(jSONObject.optString("title", "Send Crash Report?"), jSONObject.optString("message", "Looks like we crashed! Please help us fix the problem by sending a crash report."), jSONObject.optString("send_button_title", "Send"), jSONObject.optBoolean("show_cancel_button", true), jSONObject.optString("cancel_button_title", "Don't Send"), jSONObject.optBoolean("show_always_send_button", true), jSONObject.optString("always_send_button_title", "Always Send"));
    }

    /* renamed from: g */
    private C1556f m3315g(JSONObject jSONObject) {
        return new C1556f(jSONObject.optString("update_endpoint", C1573u.f4289a), jSONObject.optInt("update_suspend_duration", 3600));
    }

    @Override // io.fabric.sdk.android.services.p072e.AbstractC1574v
    /* renamed from: a */
    public C1572t mo3297a(AbstractC1486k abstractC1486k, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new C1572t(m3322a(abstractC1486k, optInt2, jSONObject), m3321a(jSONObject.getJSONObject("app")), m3317e(jSONObject.getJSONObject("session")), m3316f(jSONObject.getJSONObject("prompt")), m3319c(jSONObject.getJSONObject("features")), m3318d(jSONObject.getJSONObject("analytics")), m3315g(jSONObject.getJSONObject(BuildConfig.ARTIFACT_ID)), optInt, optInt2);
    }
}
