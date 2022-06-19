package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.aj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aj.class */
public final class C12178aj extends AbstractC12172af<Float> {
    public C12178aj(int i, String str, Float f) {
        super(1, str, f, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Float mo18646a(SharedPreferences sharedPreferences) {
        return Float.valueOf(sharedPreferences.getFloat(this.f40144b, ((Float) this.f40145c).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Float mo18645a(Bundle bundle) {
        String valueOf = String.valueOf(this.f40144b);
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(this.f40144b);
            return Float.valueOf(bundle.getFloat(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return (Float) this.f40145c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Float mo18644a(JSONObject jSONObject) {
        return Float.valueOf((float) jSONObject.optDouble(this.f40144b, ((Float) this.f40145c).floatValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ void mo18647a(SharedPreferences.Editor editor, Float f) {
        editor.putFloat(this.f40144b, f.floatValue());
    }
}
