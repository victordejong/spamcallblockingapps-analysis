package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azc.class */
public final class azc extends azd {

    /* renamed from: b */
    private final JSONObject f10679b;

    /* renamed from: c */
    private final boolean f10680c;

    /* renamed from: d */
    private final boolean f10681d;

    /* renamed from: e */
    private final boolean f10682e;

    /* renamed from: f */
    private final boolean f10683f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public azc(cgr cgrVar, JSONObject jSONObject) {
        super(cgrVar);
        boolean z = true;
        this.f10679b = C3614wy.m6851a(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f10680c = C3614wy.m6850a(false, jSONObject, "allow_pub_owned_ad_view");
        this.f10681d = C3614wy.m6850a(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f10682e = C3614wy.m6850a(false, jSONObject, "enable_omid");
        this.f10683f = (jSONObject == null || jSONObject.optJSONObject("overlay") == null) ? false : z;
    }

    @Override // com.google.android.gms.internal.ads.azd
    /* renamed from: a */
    public final JSONObject mo12223a() {
        JSONObject jSONObject;
        if (this.f10679b != null) {
            jSONObject = this.f10679b;
        } else {
            try {
                jSONObject = new JSONObject(this.f10684a.f13001w);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.azd
    /* renamed from: b */
    public final boolean mo12222b() {
        return this.f10683f;
    }

    @Override // com.google.android.gms.internal.ads.azd
    /* renamed from: c */
    public final boolean mo12221c() {
        return this.f10680c;
    }

    @Override // com.google.android.gms.internal.ads.azd
    /* renamed from: d */
    public final boolean mo12220d() {
        return this.f10682e;
    }

    @Override // com.google.android.gms.internal.ads.azd
    /* renamed from: e */
    public final boolean mo12219e() {
        return this.f10681d;
    }
}
