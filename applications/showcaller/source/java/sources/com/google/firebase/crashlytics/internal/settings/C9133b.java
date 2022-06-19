package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.AbstractC9118p;
import com.google.firebase.crashlytics.internal.settings.p304h.AbstractC9143d;
import com.google.firebase.crashlytics.internal.settings.p304h.C9140a;
import com.google.firebase.crashlytics.internal.settings.p304h.C9141b;
import com.google.firebase.crashlytics.internal.settings.p304h.C9142c;
import com.google.firebase.crashlytics.internal.settings.p304h.C9144e;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.internal.settings.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/b.class */
class C9133b implements AbstractC9138f {
    /* renamed from: b */
    private static C9140a m1758b(JSONObject jSONObject) {
        return new C9140a(jSONObject.getString("status"), jSONObject.getString("url"), jSONObject.getString("reports_url"), jSONObject.getString("ndk_reports_url"), jSONObject.optBoolean("update_required", false));
    }

    /* renamed from: c */
    private static C9141b m1757c(JSONObject jSONObject) {
        return new C9141b(jSONObject.optBoolean("collect_reports", true));
    }

    /* renamed from: d */
    private static C9142c m1756d(JSONObject jSONObject) {
        return new C9142c(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    /* renamed from: e */
    public static AbstractC9143d m1755e(AbstractC9118p abstractC9118p) {
        JSONObject jSONObject = new JSONObject();
        return new C9144e(m1754f(abstractC9118p, 3600L, jSONObject), null, m1756d(jSONObject), m1757c(jSONObject), 0, 3600);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: f */
    private static long m1754f(AbstractC9118p abstractC9118p, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : abstractC9118p.mo1797a() + (j * 1000);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.AbstractC9138f
    /* renamed from: a */
    public C9144e mo1732a(AbstractC9118p abstractC9118p, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new C9144e(m1754f(abstractC9118p, optInt2, jSONObject), m1758b(jSONObject.getJSONObject("app")), m1756d(jSONObject.getJSONObject("session")), m1757c(jSONObject.getJSONObject("features")), optInt, optInt2);
    }
}
