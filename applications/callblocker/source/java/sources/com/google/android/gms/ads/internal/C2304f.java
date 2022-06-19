package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.cqt;
import com.google.android.gms.internal.ads.crg;
import com.google.android.gms.internal.ads.crt;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/f.class */
public final /* synthetic */ class C2304f implements cqt {

    /* renamed from: a */
    static final cqt f6639a = new C2304f();

    private C2304f() {
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final crt mo7012a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            C2341q.m14740g().m7084h().mo7026c(jSONObject.getString("appSettingsJson"));
        }
        return crg.m10778a((Object) null);
    }
}
