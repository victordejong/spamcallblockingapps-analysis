package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrq.class */
public final class zzrq implements ValueCallback<String> {
    private final /* synthetic */ zzrr zzbtu;

    public zzrq(zzrr zzrrVar) {
        this.zzbtu = zzrrVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        this.zzbtu.zzbth.zza(this.zzbtu.zzbtw, this.zzbtu.zzbtx, str, this.zzbtu.zzbty);
    }
}
