package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fz.class */
public final class fz {

    /* renamed from: a  reason: collision with root package name */
    final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener f28000a;

    /* renamed from: b  reason: collision with root package name */
    public final NativeCustomTemplateAd.OnCustomClickListener f28001b;

    /* renamed from: c  reason: collision with root package name */
    private NativeCustomTemplateAd f28002c;

    public fz(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.f28000a = onCustomTemplateAdLoadedListener;
        this.f28001b = onCustomClickListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final NativeCustomTemplateAd a(eo eoVar) {
        synchronized (this) {
            NativeCustomTemplateAd nativeCustomTemplateAd = this.f28002c;
            if (nativeCustomTemplateAd != null) {
                return nativeCustomTemplateAd;
            }
            et etVar = new et(eoVar);
            this.f28002c = etVar;
            return etVar;
        }
    }
}
