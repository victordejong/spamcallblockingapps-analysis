package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aj.class */
public final class aj extends af<Float> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Float a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(this.f23214b, ((Float) this.f23215c).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Float a(Bundle bundle) {
        String valueOf = String.valueOf(this.f23214b);
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Float) this.f23215c;
        }
        String valueOf2 = String.valueOf(this.f23214b);
        return Float.valueOf(bundle.getFloat(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Float a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(this.f23214b, ((Float) this.f23215c).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(this.f23214b, f.floatValue());
    }
}
