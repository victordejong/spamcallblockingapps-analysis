package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnk.class */
public final class zzdnk implements zzblt {
    public final /* synthetic */ zzdog zza;
    public final /* synthetic */ ViewGroup zzb;

    public zzdnk(zzdog zzdogVar, ViewGroup viewGroup) {
        this.zza = zzdogVar;
        this.zzb = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final void zza() {
        zzdog zzdogVar = this.zza;
        zzfoj<String> zzfojVar = zzdnh.zza;
        Map<String, WeakReference<View>> zzk = zzdogVar.zzk();
        if (zzk == null) {
            return;
        }
        int size = zzfojVar.size();
        for (int i = 0; i < size; i++) {
            if (zzk.get(zzfojVar.get(i)) != null) {
                this.zza.onClick(this.zzb);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final void zzb(MotionEvent motionEvent) {
        this.zza.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final JSONObject zzc() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final JSONObject zzd() {
        return this.zza.zzq();
    }
}
