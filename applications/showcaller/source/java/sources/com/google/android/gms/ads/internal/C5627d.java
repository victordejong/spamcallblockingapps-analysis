package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.k03;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.uz2;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/d.class */
public final /* synthetic */ class C5627d implements uz2 {

    /* renamed from: a */
    static final uz2 f18286a = new C5627d();

    private C5627d() {
    }

    @Override // com.google.android.gms.internal.ads.uz2
    /* renamed from: a */
    public final r03 mo8403a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            C5667s.m18156h().m12230p().mo17975N(jSONObject.getString("appSettingsJson"));
        }
        return k03.m14003a(null);
    }
}
