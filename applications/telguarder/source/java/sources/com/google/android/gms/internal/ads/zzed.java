package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzed.class */
final class zzed implements Runnable {
    private final /* synthetic */ MotionEvent zzxo;

    public zzed(zzea zzeaVar, MotionEvent motionEvent) {
        this.zzxo = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdsy zzdsyVar;
        zzds zzdsVar;
        try {
            zzdsVar = zzea.zzxa;
            zzdsVar.zza(this.zzxo);
        } catch (Exception e) {
            zzdsyVar = zzea.zzxc;
            zzdsyVar.zza(2022, -1L, e);
        }
    }
}
