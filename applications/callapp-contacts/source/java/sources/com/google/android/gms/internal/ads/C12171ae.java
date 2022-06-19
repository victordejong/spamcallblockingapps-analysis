package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ae */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ae.class */
public final class C12171ae extends AbstractC12172af<Boolean> {
    public C12171ae(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Boolean mo18646a(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(this.f40144b, ((Boolean) this.f40145c).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Boolean mo18645a(Bundle bundle) {
        String valueOf = String.valueOf(this.f40144b);
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(this.f40144b);
            return Boolean.valueOf(bundle.getBoolean(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return (Boolean) this.f40145c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Boolean mo18644a(JSONObject jSONObject) {
        return Boolean.valueOf(jSONObject.optBoolean(this.f40144b, ((Boolean) this.f40145c).booleanValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ void mo18647a(SharedPreferences.Editor editor, Boolean bool) {
        editor.putBoolean(this.f40144b, bool.booleanValue());
    }
}
