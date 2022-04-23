package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ag.class */
public final class ag extends af<Long> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Long a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(this.f23214b, ((Long) this.f23215c).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Long a(Bundle bundle) {
        String valueOf = String.valueOf(this.f23214b);
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Long) this.f23215c;
        }
        String valueOf2 = String.valueOf(this.f23214b);
        return Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Long a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(this.f23214b, ((Long) this.f23215c).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Long l) {
        editor.putLong(this.f23214b, l.longValue());
    }
}
