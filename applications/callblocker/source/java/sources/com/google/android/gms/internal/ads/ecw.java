package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecw.class */
public final class ecw extends ect<Boolean> {
    public ecw(int i, String str, Boolean bool) {
        super(1, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Boolean mo7881a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(m7899a(), m7892b().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Boolean mo7880a(Bundle bundle) {
        Boolean m7892b;
        String valueOf = String.valueOf(m7899a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(m7899a());
            m7892b = Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            m7892b = m7892b();
        }
        return m7892b;
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Boolean mo7879a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(m7899a(), m7892b().booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ void mo7882a(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(m7899a(), bool.booleanValue());
    }
}
