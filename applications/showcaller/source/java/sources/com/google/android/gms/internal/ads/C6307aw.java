package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.aw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aw.class */
public final class C6307aw extends AbstractC6381cw<String> {
    public C6307aw(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ String mo8167a(Bundle bundle) {
        String str;
        String m15993e = m15993e();
        if (bundle.containsKey(m15993e.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e) : new String("com.google.android.gms.ads.flag."))) {
            String m15993e2 = m15993e();
            str = bundle.getString(m15993e2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e2) : new String("com.google.android.gms.ads.flag."));
        } else {
            str = m15992f();
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8166b(SharedPreferences.Editor editor, String str) {
        editor.putString(m15993e(), str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ String mo8165c(JSONObject jSONObject) {
        return jSONObject.optString(m15993e(), m15992f());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ String mo8164d(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(m15993e(), m15992f());
    }
}
