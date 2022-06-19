package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeg.class */
final class zzeg implements Runnable {
    private final /* synthetic */ int zzxq;
    private final /* synthetic */ int zzxr;
    private final /* synthetic */ int zzxs;

    public zzeg(zzea zzeaVar, int i, int i2, int i3) {
        this.zzxq = i;
        this.zzxr = i2;
        this.zzxs = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdsy zzdsyVar;
        zzds zzdsVar;
        try {
            zzdsVar = zzea.zzxa;
            zzdsVar.zza(MotionEvent.obtain(0L, this.zzxq, 0, this.zzxr, this.zzxs, 0));
        } catch (Exception e) {
            zzdsyVar = zzea.zzxc;
            zzdsyVar.zza(2022, -1L, e);
        }
    }
}
