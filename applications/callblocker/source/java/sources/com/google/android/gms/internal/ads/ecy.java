package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecy.class */
public final class ecy extends ect<Long> {
    public ecy(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Long mo7881a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(m7899a(), m7892b().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Long mo7880a(Bundle bundle) {
        Long m7892b;
        String valueOf = String.valueOf(m7899a());
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(m7899a());
            m7892b = Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            m7892b = m7892b();
        }
        return m7892b;
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ Long mo7879a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(m7899a(), m7892b().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.ect
    /* renamed from: a */
    public final /* synthetic */ void mo7882a(SharedPreferences.Editor editor, Long l) {
        editor.putLong(m7899a(), l.longValue());
    }
}
