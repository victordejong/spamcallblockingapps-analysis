package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/civ.class */
public final class civ implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private Bundle f25915a;

    public civ(Bundle bundle) {
        this.f25915a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (this.f25915a != null) {
            try {
                zzbh.zzb(zzbh.zzb(jSONObject2, "device"), "play_store").put("parental_controls", zzr.zzkv().zzc(this.f25915a));
            } catch (JSONException e) {
                zzd.zzed("Failed putting parental controls bundle.");
            }
        }
    }
}
