package com.amazon.device.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdInterstitial.class */
public class DTBAdInterstitial {

    /* renamed from: b  reason: collision with root package name */
    static DTBAdInterstitial f6377b;

    /* renamed from: a  reason: collision with root package name */
    DTBAdView f6378a;

    /* renamed from: c  reason: collision with root package name */
    private Context f6379c;

    public DTBAdInterstitial(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        this.f6379c = context;
        this.f6378a = new DTBAdView(context, dTBAdInterstitialListener);
        f6377b = this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBAdInterstitial a() {
        return f6377b;
    }
}
