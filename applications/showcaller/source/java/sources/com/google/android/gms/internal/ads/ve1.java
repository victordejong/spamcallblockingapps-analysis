package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5748x0;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ve1.class */
public final class ve1 extends we1 {

    /* renamed from: b */
    private final JSONObject f31157b;

    /* renamed from: c */
    private final boolean f31158c;

    /* renamed from: d */
    private final boolean f31159d;

    /* renamed from: e */
    private final boolean f31160e;

    /* renamed from: f */
    private final boolean f31161f;

    /* renamed from: g */
    private final String f31162g;

    public ve1(ej2 ej2Var, JSONObject jSONObject) {
        super(ej2Var);
        this.f31157b = C5748x0.m17917h(jSONObject, "tracking_urls_and_actions", "active_view");
        boolean z = false;
        this.f31158c = C5748x0.m17916i(false, jSONObject, "allow_pub_owned_ad_view");
        this.f31159d = C5748x0.m17916i(false, jSONObject, "attribution", "allow_pub_rendering");
        this.f31160e = C5748x0.m17916i(false, jSONObject, "enable_omid");
        this.f31162g = C5748x0.m17915j("", jSONObject, "watermark_overlay_png_base64");
        this.f31161f = jSONObject.optJSONObject("overlay") != null ? true : z;
    }

    @Override // com.google.android.gms.internal.ads.we1
    /* renamed from: a */
    public final JSONObject mo9601a() {
        JSONObject jSONObject = this.f31157b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f31555a.f22254z);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.we1
    /* renamed from: b */
    public final boolean mo9600b() {
        return this.f31161f;
    }

    @Override // com.google.android.gms.internal.ads.we1
    /* renamed from: c */
    public final boolean mo9599c() {
        return this.f31158c;
    }

    @Override // com.google.android.gms.internal.ads.we1
    /* renamed from: d */
    public final boolean mo9598d() {
        return this.f31160e;
    }

    @Override // com.google.android.gms.internal.ads.we1
    /* renamed from: e */
    public final boolean mo9597e() {
        return this.f31159d;
    }

    @Override // com.google.android.gms.internal.ads.we1
    /* renamed from: f */
    public final String mo9596f() {
        return this.f31162g;
    }
}
