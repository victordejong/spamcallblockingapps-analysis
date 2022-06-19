package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcos.class */
final /* synthetic */ class zzcos implements zzdqu {
    static final zzdqu zzgnx = new zzcos();

    private zzcos() {
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzd.zzeb("Ad request signals:");
        zzd.zzeb(jSONObject.toString(2));
        return jSONObject;
    }
}
