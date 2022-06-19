package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.AbstractC9118p;
import com.google.firebase.crashlytics.internal.settings.p304h.C9144e;
import org.json.JSONObject;
/* renamed from: com.google.firebase.crashlytics.internal.settings.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/e.class */
public class C9137e {

    /* renamed from: a */
    private final AbstractC9118p f39426a;

    public C9137e(AbstractC9118p abstractC9118p) {
        this.f39426a = abstractC9118p;
    }

    /* renamed from: a */
    private static AbstractC9138f m1734a(int i) {
        return i != 3 ? new C9133b() : new C9139g();
    }

    /* renamed from: b */
    public C9144e m1733b(JSONObject jSONObject) {
        return m1734a(jSONObject.getInt("settings_version")).mo1732a(this.f39426a, jSONObject);
    }
}
