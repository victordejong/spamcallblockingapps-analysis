package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.xv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xv.class */
public final class C7159xv extends AbstractC6381cw<Long> {
    public C7159xv(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Long mo8167a(Bundle bundle) {
        Long l;
        String m15993e = m15993e();
        if (bundle.containsKey(m15993e.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e) : new String("com.google.android.gms.ads.flag."))) {
            String m15993e2 = m15993e();
            l = Long.valueOf(bundle.getLong(m15993e2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(m15993e2) : new String("com.google.android.gms.ads.flag.")));
        } else {
            l = m15992f();
        }
        return l;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8166b(SharedPreferences.Editor editor, Long l) {
        editor.putLong(m15993e(), l.longValue());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ Long mo8165c(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(m15993e(), m15992f().longValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6381cw
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ Long mo8164d(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(m15993e(), m15992f().longValue()));
    }
}
