package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzn.class */
public final class zzn implements View.OnTouchListener {
    private final /* synthetic */ zzl zzbpv;

    public zzn(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (zzl.zzb(this.zzbpv) != null) {
            zzl.zzb(this.zzbpv).zza(motionEvent);
            return false;
        }
        return false;
    }
}
