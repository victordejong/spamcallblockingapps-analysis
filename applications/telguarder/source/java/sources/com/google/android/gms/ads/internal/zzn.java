package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzei;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzn.class */
public final class zzn implements View.OnTouchListener {
    private final /* synthetic */ zzl zzbpv;

    public zzn(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzei zzeiVar;
        zzei zzeiVar2;
        zzeiVar = this.zzbpv.zzbpt;
        if (zzeiVar != null) {
            zzeiVar2 = this.zzbpv.zzbpt;
            zzeiVar2.zza(motionEvent);
            return false;
        }
        return false;
    }
}
