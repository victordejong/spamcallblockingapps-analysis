package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcel.class */
public final class zzcel extends zzcem {

    /* renamed from: b */
    public final JSONObject f25867b;

    /* renamed from: c */
    public final boolean f25868c;

    /* renamed from: d */
    public final boolean f25869d;

    /* renamed from: e */
    public final boolean f25870e;

    /* renamed from: f */
    public final boolean f25871f;

    public zzcel(zzdnv zzdnvVar, JSONObject jSONObject) {
        super(zzdnvVar);
        this.f25867b = zzbao.m15954a(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f25868c = zzbao.m15953a(false, jSONObject, "allow_pub_owned_ad_view");
        this.f25869d = zzbao.m15953a(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f25870e = zzbao.m15953a(false, jSONObject, "enable_omid");
        boolean z = false;
        if (jSONObject != null) {
            z = false;
            if (jSONObject.optJSONObject("overlay") != null) {
                z = true;
            }
        }
        this.f25871f = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    /* renamed from: a */
    public final boolean mo14667a() {
        return this.f25870e;
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    /* renamed from: b */
    public final JSONObject mo14666b() {
        JSONObject jSONObject = this.f25867b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f25872a.f27609y);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    /* renamed from: c */
    public final boolean mo14665c() {
        return this.f25871f;
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    /* renamed from: d */
    public final boolean mo14664d() {
        return this.f25868c;
    }

    @Override // com.google.android.gms.internal.ads.zzcem
    /* renamed from: e */
    public final boolean mo14663e() {
        return this.f25869d;
    }
}
