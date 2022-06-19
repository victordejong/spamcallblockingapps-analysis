package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpn.class */
final /* synthetic */ class bpn implements css {

    /* renamed from: a */
    static final css f44435a = new bpn();

    private bpn() {
    }

    @Override // com.google.android.gms.internal.ads.css
    /* renamed from: a */
    public final Object mo17263a(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzd.zzed("Ad request signals:");
        zzd.zzed(jSONObject.toString(2));
        return jSONObject;
    }
}
