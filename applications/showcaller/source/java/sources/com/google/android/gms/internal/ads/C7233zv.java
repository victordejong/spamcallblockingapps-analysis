package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.zv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zv.class */
public final class C7233zv extends AbstractC6381cw<Float> {
    public C7233zv(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Float mo8167a(Bundle bundle) {
        Float f;
        String m15993e = m15993e();
        if (bundle.containsKey(m15993e.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e) : new String("com.google.android.gms.ads.flag."))) {
            String m15993e2 = m15993e();
            f = Float.valueOf(bundle.getFloat(m15993e2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            f = m15992f();
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8166b(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(m15993e(), f.floatValue());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Float mo8165c(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(m15993e(), m15992f().floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Float mo8164d(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(m15993e(), m15992f().floatValue()));
    }
}
