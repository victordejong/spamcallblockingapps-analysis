package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamx.class */
public final class zzamx implements zzaip {
    private final zzbaa<O> zzdlg;
    private final /* synthetic */ zzamv zzdlm;

    public zzamx(zzamv zzamvVar, zzbaa<O> zzbaaVar) {
        this.zzdlm = zzamvVar;
        this.zzdlg = zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void onFailure(String str) {
        try {
            if (str == null) {
                this.zzdlg.setException(new zzaly());
            } else {
                this.zzdlg.setException(new zzaly(str));
            }
        } catch (IllegalStateException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzc(JSONObject jSONObject) {
        zzamd zzamdVar;
        try {
            zzbaa<O> zzbaaVar = this.zzdlg;
            zzamdVar = this.zzdlm.zzdky;
            zzbaaVar.set(zzamdVar.zzd(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.zzdlg.setException(e2);
        }
    }
}
