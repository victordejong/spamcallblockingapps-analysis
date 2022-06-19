package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdue.class */
final class zzdue implements zzbnv {
    public final /* synthetic */ zzduf zza;

    public zzdue(zzduf zzdufVar) {
        this.zza = zzdufVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final JSONObject zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzc() {
        zzdpx zzdpxVar;
        zzdpx zzdpxVar2;
        zzdpxVar = this.zza.zzd;
        if (zzdpxVar != null) {
            zzdpxVar2 = this.zza.zzd;
            zzdpxVar2.zzy("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzd(MotionEvent motionEvent) {
    }
}
