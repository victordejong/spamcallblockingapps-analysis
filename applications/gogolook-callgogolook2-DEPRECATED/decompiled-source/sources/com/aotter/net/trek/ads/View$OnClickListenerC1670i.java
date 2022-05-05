package com.aotter.net.trek.ads;

import android.view.View;
import com.aotter.net.trek.model.NativeAd;
/* renamed from: com.aotter.net.trek.ads.i */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/i.class */
public class View$OnClickListenerC1670i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ TKAdN f1195a;

    public View$OnClickListenerC1670i(TKAdN tKAdN) {
        this.f1195a = tKAdN;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        NativeAd nativeAd;
        TKAdN tKAdN = this.f1195a;
        nativeAd = tKAdN.f1173p;
        tKAdN.clickRegNativeAd(nativeAd);
    }
}
