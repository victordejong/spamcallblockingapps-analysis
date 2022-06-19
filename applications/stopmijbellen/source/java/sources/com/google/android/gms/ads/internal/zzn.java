package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzalt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzn.class */
public final class zzn implements View.OnTouchListener {
    public final /* synthetic */ zzs zza;

    public zzn(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzalt zzaltVar;
        zzalt zzaltVar2;
        zzaltVar = this.zza.zzh;
        if (zzaltVar != null) {
            zzaltVar2 = this.zza.zzh;
            zzaltVar2.zzd(motionEvent);
            return false;
        }
        return false;
    }
}
