package com.amazon.device.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdInterstitial.class */
public class DTBAdInterstitial {

    /* renamed from: b */
    static DTBAdInterstitial f11690b;

    /* renamed from: a */
    DTBAdView f11691a;

    /* renamed from: c */
    private Context f11692c;

    public DTBAdInterstitial(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        this.f11692c = context;
        this.f11691a = new DTBAdView(context, dTBAdInterstitialListener);
        f11690b = this;
    }

    /* renamed from: a */
    public static DTBAdInterstitial m39058a() {
        return f11690b;
    }
}
