package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecx.class */
public final class ecx extends ect<Float> {
    public ecx(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Float mo7881a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(m7899a(), m7892b().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Float mo7880a(Bundle bundle) {
        Float m7892b;
        String valueOf = String.valueOf(m7899a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(m7899a());
            m7892b = Float.valueOf(bundle.getFloat(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            m7892b = m7892b();
        }
        return m7892b;
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Float mo7879a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(m7899a(), m7892b().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ void mo7882a(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(m7899a(), f.floatValue());
    }
}
