package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ai.class */
public final class ai extends af<String> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ String a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(this.f23214b, (String) this.f23215c);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ String a(Bundle bundle) {
        String valueOf = String.valueOf(this.f23214b);
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (String) this.f23215c;
        }
        String valueOf2 = String.valueOf(this.f23214b);
        return bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ String a(JSONObject jSONObject) {
        return jSONObject.optString(this.f23214b, (String) this.f23215c);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ void a(SharedPreferences.Editor editor, String str) {
        editor.putString(this.f23214b, str);
    }
}
