package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamp.class */
public final class zzamp implements zzaip {
    private final /* synthetic */ zzamk zzdlc;
    private final zzalm zzdlf;
    private final zzbaa<O> zzdlg;

    public zzamp(zzamk zzamkVar, zzalm zzalmVar, zzbaa<O> zzbaaVar) {
        this.zzdlc = zzamkVar;
        this.zzdlf = zzalmVar;
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
        } finally {
            this.zzdlf.release();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzc(JSONObject jSONObject) {
        zzamd zzamdVar;
        try {
            zzbaa<O> zzbaaVar = this.zzdlg;
            zzamdVar = this.zzdlc.zzdky;
            zzbaaVar.set(zzamdVar.zzd(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.zzdlg.setException(e2);
        } finally {
            this.zzdlf.release();
        }
    }
}
