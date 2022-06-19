package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.wv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wv.class */
public final class C7122wv extends AbstractC6381cw<Integer> {
    public C7122wv(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Integer mo8167a(Bundle bundle) {
        Integer num;
        String m15993e = m15993e();
        if (bundle.containsKey(m15993e.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e) : new String("com.google.android.gms.ads.flag."))) {
            String m15993e2 = m15993e();
            num = Integer.valueOf(bundle.getInt(m15993e2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            num = m15992f();
        }
        return num;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8166b(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(m15993e(), num.intValue());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Integer mo8165c(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(m15993e(), m15992f().intValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Integer mo8164d(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(m15993e(), m15992f().intValue()));
    }
}
