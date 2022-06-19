package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader.class */
public class InterstitialBiddingAdLoader extends BaseInterstitialAdLoader {

    /* renamed from: d */
    private AppBidder f28076d;

    public InterstitialBiddingAdLoader(Activity activity, String str, AdUtils.AdEvents adEvents, boolean z) {
        super(activity, adEvents, z);
        if (StringUtils.m26045b((CharSequence) str)) {
            this.f28076d = new AppBidder(activity, str, null, BitmapDescriptorFactory.HUE_RED);
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader
    /* renamed from: a */
    public final void mo27206a() {
        try {
            this.f28076d.m27250a(this.f28054c, this.f28053b);
        } catch (Exception e) {
            if (this.f28053b == null) {
                return;
            }
            this.f28053b.onInterstitialFailed(null, MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader
    /* renamed from: b */
    public final void mo27205b() {
        super.mo27205b();
        AppBidder appBidder = this.f28076d;
        if (appBidder != null) {
            appBidder.m27258a();
        }
    }
}
