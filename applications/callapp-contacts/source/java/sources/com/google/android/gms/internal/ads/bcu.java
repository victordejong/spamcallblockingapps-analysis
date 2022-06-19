package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcu.class */
public final class bcu extends bcv {

    /* renamed from: b */
    private final JSONObject f43598b;

    /* renamed from: c */
    private final boolean f43599c;

    /* renamed from: d */
    private final boolean f43600d;

    /* renamed from: e */
    private final boolean f43601e;

    /* renamed from: f */
    private final boolean f43602f;

    public bcu(cov covVar, JSONObject jSONObject) {
        super(covVar);
        this.f43598b = zzbh.zza(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f43599c = zzbh.zza(false, jSONObject, "allow_pub_owned_ad_view");
        this.f43600d = zzbh.zza(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f43601e = zzbh.zza(false, jSONObject, "enable_omid");
        boolean z = false;
        if (jSONObject != null) {
            z = false;
            if (jSONObject.optJSONObject("overlay") != null) {
                z = true;
            }
        }
        this.f43602f = z;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    /* renamed from: a */
    public final JSONObject mo18142a() {
        JSONObject jSONObject = this.f43598b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f43603a.f46278y);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bcv
    /* renamed from: b */
    public final boolean mo18141b() {
        return this.f43602f;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    /* renamed from: c */
    public final boolean mo18140c() {
        return this.f43599c;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    /* renamed from: d */
    public final boolean mo18139d() {
        return this.f43601e;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    /* renamed from: e */
    public final boolean mo18138e() {
        return this.f43600d;
    }
}
