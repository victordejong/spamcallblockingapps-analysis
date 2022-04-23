package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ah.class */
public final class ah extends af<Integer> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Integer a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(this.f23214b, ((Integer) this.f23215c).intValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Integer a(Bundle bundle) {
        String valueOf = String.valueOf(this.f23214b);
        if (!bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            return (Integer) this.f23215c;
        }
        String valueOf2 = String.valueOf(this.f23214b);
        return Integer.valueOf(bundle.getInt(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ Integer a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(this.f23214b, ((Integer) this.f23215c).intValue()));
    }

    @Override // com.google.android.gms.internal.ads.af
    public final /* synthetic */ void a(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(this.f23214b, num.intValue());
    }
}
