package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.AbstractC9118p;
import com.google.firebase.crashlytics.internal.settings.p304h.C9140a;
import com.google.firebase.crashlytics.internal.settings.p304h.C9141b;
import com.google.firebase.crashlytics.internal.settings.p304h.C9142c;
import com.google.firebase.crashlytics.internal.settings.p304h.C9144e;
import java.util.Locale;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.internal.settings.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/g.class */
class C9139g implements AbstractC9138f {
    /* renamed from: b */
    private static C9140a m1731b(JSONObject jSONObject, JSONObject jSONObject2) {
        String string = jSONObject2.getString("status");
        boolean equals = "new".equals(string);
        String string2 = jSONObject.getString("bundle_id");
        String string3 = jSONObject.getString("org_id");
        String format = equals ? "https://update.crashlytics.com/spi/v1/platforms/android/apps" : String.format(Locale.US, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s", string2);
        Locale locale = Locale.US;
        return new C9140a(string, format, String.format(locale, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports", string2), String.format(locale, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps", string2), string2, string3, jSONObject2.optBoolean("update_required", false), jSONObject2.optInt("report_upload_variant", 0), jSONObject2.optInt("native_report_upload_variant", 0));
    }

    /* renamed from: c */
    private static C9141b m1730c(JSONObject jSONObject) {
        return new C9141b(jSONObject.optBoolean("collect_reports", true));
    }

    /* renamed from: d */
    private static C9142c m1729d() {
        return new C9142c(8, 4);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: e */
    private static long m1728e(AbstractC9118p abstractC9118p, long j, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : abstractC9118p.mo1797a() + (j * 1000);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.AbstractC9138f
    /* renamed from: a */
    public C9144e mo1732a(AbstractC9118p abstractC9118p, JSONObject jSONObject) {
        int optInt = jSONObject.optInt("settings_version", 0);
        int optInt2 = jSONObject.optInt("cache_duration", 3600);
        return new C9144e(m1728e(abstractC9118p, optInt2, jSONObject), m1731b(jSONObject.getJSONObject("fabric"), jSONObject.getJSONObject("app")), m1729d(), m1730c(jSONObject.getJSONObject("features")), optInt, optInt2);
    }
}
