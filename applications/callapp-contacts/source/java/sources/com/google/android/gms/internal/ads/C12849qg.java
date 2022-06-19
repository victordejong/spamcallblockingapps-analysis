package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* renamed from: com.google.android.gms.internal.ads.qg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qg.class */
public final class C12849qg {

    /* renamed from: a */
    final NativeCustomFormatAd.OnCustomFormatAdLoadedListener f49734a;

    /* renamed from: b */
    public final NativeCustomFormatAd.OnCustomClickListener f49735b;

    /* renamed from: c */
    private NativeCustomFormatAd f49736c;

    public C12849qg(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.f49734a = onCustomFormatAdLoadedListener;
        this.f49735b = onCustomClickListener;
    }

    /* renamed from: a */
    public final NativeCustomFormatAd m14240a(AbstractC12532eo abstractC12532eo) {
        synchronized (this) {
            NativeCustomFormatAd nativeCustomFormatAd = this.f49736c;
            if (nativeCustomFormatAd != null) {
                return nativeCustomFormatAd;
            }
            C12853qk c12853qk = new C12853qk(abstractC12532eo);
            this.f49736c = c12853qk;
            return c12853qk;
        }
    }
}
