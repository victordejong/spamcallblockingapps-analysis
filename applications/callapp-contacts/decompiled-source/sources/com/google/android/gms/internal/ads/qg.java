package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qg.class */
public final class qg {

    /* renamed from: a  reason: collision with root package name */
    final NativeCustomFormatAd.OnCustomFormatAdLoadedListener f28329a;

    /* renamed from: b  reason: collision with root package name */
    public final NativeCustomFormatAd.OnCustomClickListener f28330b;

    /* renamed from: c  reason: collision with root package name */
    private NativeCustomFormatAd f28331c;

    public qg(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.f28329a = onCustomFormatAdLoadedListener;
        this.f28330b = onCustomClickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final NativeCustomFormatAd a(eo eoVar) {
        synchronized (this) {
            NativeCustomFormatAd nativeCustomFormatAd = this.f28331c;
            if (nativeCustomFormatAd != null) {
                return nativeCustomFormatAd;
            }
            qk qkVar = new qk(eoVar);
            this.f28331c = qkVar;
            return qkVar;
        }
    }
}
