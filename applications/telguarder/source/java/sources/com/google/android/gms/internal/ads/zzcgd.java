package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgd.class */
final class zzcgd implements zzaef {
    private final /* synthetic */ zzcge zzgis;

    public zzcgd(zzcge zzcgeVar) {
        this.zzgis = zzcgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zzc(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zztj() {
        zzcbu zzcbuVar;
        zzcbu zzcbuVar2;
        zzcbuVar = this.zzgis.zzgfm;
        if (zzcbuVar != null) {
            zzcbuVar2 = this.zzgis.zzgfm;
            zzcbuVar2.zzfw("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final JSONObject zztk() {
        return null;
    }
}
