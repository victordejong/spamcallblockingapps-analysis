package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgv.class */
public final class zzdgv implements zzdfi<zzdfj<JSONObject>> {
    private final JSONObject zzhem;

    public zzdgv(Context context) {
        this.zzhem = zzauc.zzw(context);
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<JSONObject>> zzasy() {
        return zzdzk.zzag(new zzdfj(this) { // from class: com.google.android.gms.internal.ads.zzdgu
            private final zzdgv zzhel;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhel = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdfj
            public final void zzr(Object obj) {
                this.zzhel.zzq((JSONObject) obj);
            }
        });
    }

    public final /* synthetic */ void zzq(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zzhem);
        } catch (JSONException e) {
            zzd.zzeb("Failed putting version constants.");
        }
    }
}
