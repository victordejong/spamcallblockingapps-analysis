package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eda.class */
public final class eda extends ect<String> {
    public eda(int i, String str, String str2) {
        super(i, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ String mo7881a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(m7899a(), m7892b());
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ String mo7880a(Bundle bundle) {
        String m7892b;
        String valueOf = String.valueOf(m7899a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(m7899a());
            m7892b = bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
        } else {
            m7892b = m7892b();
        }
        return m7892b;
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ String mo7879a(JSONObject jSONObject) {
        return jSONObject.optString(m7899a(), m7892b());
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ void mo7882a(SharedPreferences.Editor editor, String str) {
        editor.putString(m7899a(), str);
    }
}
