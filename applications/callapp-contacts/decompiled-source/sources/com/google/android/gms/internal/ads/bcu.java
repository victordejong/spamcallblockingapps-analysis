package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcu.class */
public final class bcu extends bcv {

    /* renamed from: b  reason: collision with root package name */
    private final JSONObject f24186b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f24187c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f24188d;
    private final boolean e;
    private final boolean f;

    public bcu(cov covVar, JSONObject jSONObject) {
        super(covVar);
        this.f24186b = zzbh.zza(jSONObject, "tracking_urls_and_actions", "active_view");
        this.f24187c = zzbh.zza(false, jSONObject, "allow_pub_owned_ad_view");
        this.f24188d = zzbh.zza(false, jSONObject, "attribution", "allow_pub_rendering");
        this.e = zzbh.zza(false, jSONObject, "enable_omid");
        boolean z = false;
        if (jSONObject != null) {
            z = false;
            if (jSONObject.optJSONObject("overlay") != null) {
                z = true;
            }
        }
        this.f = z;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    public final JSONObject a() {
        JSONObject jSONObject = this.f24186b;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.f24189a.y);
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.bcv
    public final boolean b() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    public final boolean c() {
        return this.f24187c;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    public final boolean d() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.bcv
    public final boolean e() {
        return this.f24188d;
    }
}
