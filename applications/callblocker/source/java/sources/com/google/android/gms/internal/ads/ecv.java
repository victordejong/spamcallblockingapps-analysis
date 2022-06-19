package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecv.class */
public final class ecv extends ect<Integer> {
    public ecv(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Integer mo7881a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(m7899a(), m7892b().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Integer mo7880a(Bundle bundle) {
        Integer m7892b;
        String valueOf = String.valueOf(m7899a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(m7899a());
            m7892b = Integer.valueOf(bundle.getInt(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            m7892b = m7892b();
        }
        return m7892b;
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Integer mo7879a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(m7899a(), m7892b().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ void mo7882a(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(m7899a(), num.intValue());
    }
}
