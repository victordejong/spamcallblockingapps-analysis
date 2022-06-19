package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcde.class */
public final class zzcde implements zzaef {
    private final /* synthetic */ zzcdx zzgfz;
    private final /* synthetic */ ViewGroup zzgga;
    private final /* synthetic */ zzccz zzggb;

    public zzcde(zzccz zzcczVar, zzcdx zzcdxVar, ViewGroup viewGroup) {
        this.zzggb = zzcczVar;
        this.zzgfz = zzcdxVar;
        this.zzgga = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zzc(MotionEvent motionEvent) {
        this.zzgfz.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final void zztj() {
        boolean zza;
        zzccz zzcczVar = this.zzggb;
        zza = zzccz.zza(this.zzgfz, zzccx.zzgfi);
        if (zza) {
            this.zzgfz.onClick(this.zzgga);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaef
    public final JSONObject zztk() {
        return this.zzgfz.zztk();
    }
}
