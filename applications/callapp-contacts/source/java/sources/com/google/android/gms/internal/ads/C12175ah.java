package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ah */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ah.class */
public final class C12175ah extends AbstractC12172af<Integer> {
    public C12175ah(int i, String str, Integer num) {
        super(1, str, num, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Integer mo18646a(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(this.f40144b, ((Integer) this.f40145c).intValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Integer mo18645a(Bundle bundle) {
        String valueOf = String.valueOf(this.f40144b);
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(this.f40144b);
            return Integer.valueOf(bundle.getInt(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return (Integer) this.f40145c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Integer mo18644a(JSONObject jSONObject) {
        return Integer.valueOf(jSONObject.optInt(this.f40144b, ((Integer) this.f40145c).intValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ void mo18647a(SharedPreferences.Editor editor, Integer num) {
        editor.putInt(this.f40144b, num.intValue());
    }
}
