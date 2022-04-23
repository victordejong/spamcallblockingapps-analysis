package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chs.class */
public final class chs implements cgy<JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    private final String f25857a;

    public chs(String str) {
        this.f25857a = str;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(JSONObject jSONObject) {
        try {
            jSONObject.put("ms", this.f25857a);
        } catch (JSONException e) {
            zzd.zza("Failed putting Ad ID.", e);
        }
    }
}
