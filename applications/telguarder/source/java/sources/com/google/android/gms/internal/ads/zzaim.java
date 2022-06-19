package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaim.class */
public final class zzaim implements zzaip {
    private final /* synthetic */ zzbaa zzdik;

    public zzaim(zzain zzainVar, zzbaa zzbaaVar) {
        this.zzdik = zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void onFailure(String str) {
        this.zzdik.setException(new zzaly(str));
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zzc(JSONObject jSONObject) {
        this.zzdik.set(jSONObject);
    }
}
