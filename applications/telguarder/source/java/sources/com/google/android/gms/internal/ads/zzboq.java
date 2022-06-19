package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboq.class */
public final class zzboq implements zzq {
    private final zzbsm zzfwu;
    private AtomicBoolean zzfwv = new AtomicBoolean(false);

    public zzboq(zzbsm zzbsmVar) {
        this.zzfwu = zzbsmVar;
    }

    public final boolean isClosed() {
        return this.zzfwv.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        this.zzfwv.set(true);
        this.zzfwu.onAdClosed();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        this.zzfwu.onAdOpened();
    }
}
