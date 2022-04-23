package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ciq.class */
public final class ciq implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private String f25904a;

    /* renamed from: b  reason: collision with root package name */
    private String f25905b;

    public ciq(String str, String str2) {
        this.f25904a = str;
        this.f25905b = str2;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            JSONObject zzb = zzbh.zzb(jSONObject, "pii");
            zzb.put("doritos", this.f25904a);
            zzb.put("doritos_v2", this.f25905b);
        } catch (JSONException e) {
            zzd.zzed("Failed putting doritos string.");
        }
    }
}
