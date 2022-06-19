package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdra.class */
final class zzdra implements zzbnv {
    public final /* synthetic */ zzdrw zza;
    public final /* synthetic */ ViewGroup zzb;

    public zzdra(zzdrw zzdrwVar, ViewGroup viewGroup) {
        this.zza = zzdrwVar;
        this.zzb = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final JSONObject zza() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final JSONObject zzb() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzc() {
        zzdrw zzdrwVar = this.zza;
        zzfss<String> zzfssVar = zzdqx.zza;
        Map<String, WeakReference<View>> zzm = zzdrwVar.zzm();
        if (zzm == null) {
            return;
        }
        int size = zzfssVar.size();
        for (int i = 0; i < size; i++) {
            if (zzm.get(zzfssVar.get(i)) != null) {
                this.zza.onClick(this.zzb);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zzd(MotionEvent motionEvent) {
        this.zza.onTouch(null, motionEvent);
    }
}
