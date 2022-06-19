package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.vv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vv.class */
public final class C7085vv extends AbstractC6381cw<Boolean> {
    public C7085vv(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Boolean mo8167a(Bundle bundle) {
        Boolean bool;
        String m15993e = m15993e();
        if (bundle.containsKey(m15993e.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e) : new String("com.google.android.gms.ads.flag."))) {
            String m15993e2 = m15993e();
            bool = Boolean.valueOf(bundle.getBoolean(m15993e2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            bool = m15992f();
        }
        return bool;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8166b(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(m15993e(), bool.booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Boolean mo8165c(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(m15993e(), m15992f().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Boolean mo8164d(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(m15993e(), m15992f().booleanValue()));
    }
}
