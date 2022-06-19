package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ag */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ag.class */
public final class C12174ag extends AbstractC12172af<Long> {
    public C12174ag(int i, String str, Long l) {
        super(1, str, l, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Long mo18646a(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(this.f40144b, ((Long) this.f40145c).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Long mo18645a(Bundle bundle) {
        String valueOf = String.valueOf(this.f40144b);
        if (bundle.containsKey(valueOf.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf) : new String("com.google.android.gms.ads.flag."))) {
            String valueOf2 = String.valueOf(this.f40144b);
            return Long.valueOf(bundle.getLong(valueOf2.length() != 0 ? "com.google.android.gms.ads.flag.".concat(valueOf2) : new String("com.google.android.gms.ads.flag.")));
        }
        return (Long) this.f40145c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ Long mo18644a(JSONObject jSONObject) {
        return Long.valueOf(jSONObject.optLong(this.f40144b, ((Long) this.f40145c).longValue()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12172af
    /* renamed from: a */
    public final /* synthetic */ void mo18647a(SharedPreferences.Editor editor, Long l) {
        editor.putLong(this.f40144b, l.longValue());
    }
}
