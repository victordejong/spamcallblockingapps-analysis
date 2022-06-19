package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzaas;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzn.class */
public final class zzn implements View.OnTouchListener {
    public final /* synthetic */ zzs zza;

    public zzn(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzaas zzaasVar;
        zzaas zzaasVar2;
        zzaasVar = this.zza.zzh;
        if (zzaasVar != null) {
            zzaasVar2 = this.zza.zzh;
            zzaasVar2.zzd(motionEvent);
            return false;
        }
        return false;
    }
}
