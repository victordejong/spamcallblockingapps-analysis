package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ae.class */
public final class ae extends af<Boolean> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Boolean a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(this.f23214b, ((Boolean) this.f23215c).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Boolean a(Bundle bundle) {
        String valueOf = String.valueOf(this.f23214b);
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Boolean) this.f23215c;
        }
        String valueOf2 = String.valueOf(this.f23214b);
        return Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Boolean a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(this.f23214b, ((Boolean) this.f23215c).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(this.f23214b, bool.booleanValue());
    }
}
