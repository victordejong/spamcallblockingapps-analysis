package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* renamed from: com.google.android.gms.internal.ads.fz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fz.class */
public final class C12570fz {

    /* renamed from: a */
    final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener f49290a;

    /* renamed from: b */
    public final NativeCustomTemplateAd.OnCustomClickListener f49291b;

    /* renamed from: c */
    private NativeCustomTemplateAd f49292c;

    public C12570fz(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.f49290a = onCustomTemplateAdLoadedListener;
        this.f49291b = onCustomClickListener;
    }

    /* renamed from: a */
    public final NativeCustomTemplateAd m14644a(AbstractC12532eo abstractC12532eo) {
        synchronized (this) {
            NativeCustomTemplateAd nativeCustomTemplateAd = this.f49292c;
            if (nativeCustomTemplateAd != null) {
                return nativeCustomTemplateAd;
            }
            C12537et c12537et = new C12537et(abstractC12532eo);
            this.f49292c = c12537et;
            return c12537et;
        }
    }
}
