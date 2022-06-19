package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzro.class */
final class zzro implements Runnable {
    private final /* synthetic */ View zzbtg;
    private final /* synthetic */ zzrp zzbth;

    public zzro(zzrp zzrpVar, View view) {
        this.zzbth = zzrpVar;
        this.zzbtg = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzbth.zzj(this.zzbtg);
    }
}
