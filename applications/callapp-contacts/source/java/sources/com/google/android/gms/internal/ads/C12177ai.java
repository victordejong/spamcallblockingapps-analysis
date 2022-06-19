package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ai */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ai.class */
public final class C12177ai extends AbstractC12172af<String> {
    public C12177ai(int i, String str, String str2) {
        super(1, str, str2, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ String mo18646a(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(this.f40144b, (String) this.f40145c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ String mo18645a(Bundle bundle) {
        String valueOf = String.valueOf(this.f40144b);
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(this.f40144b);
            return bundle.getString(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag."));
        }
        return (String) this.f40145c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ String mo18644a(JSONObject jSONObject) {
        return jSONObject.optString(this.f40144b, (String) this.f40145c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ void mo18647a(SharedPreferences.Editor editor, String str) {
        editor.putString(this.f40144b, str);
    }
}
