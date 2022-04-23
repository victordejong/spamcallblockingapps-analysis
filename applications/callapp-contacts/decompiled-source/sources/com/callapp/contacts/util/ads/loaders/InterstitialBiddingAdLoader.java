package com.callapp.contacts.util.ads.loaders;

import android.app.Activity;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/InterstitialBiddingAdLoader.class */
public class InterstitialBiddingAdLoader extends BaseInterstitialAdLoader {

    /* renamed from: d  reason: collision with root package name */
    private AppBidder f16108d;

    public InterstitialBiddingAdLoader(Activity activity, String str, AdUtils.AdEvents adEvents, boolean z) {
        super(activity, adEvents, z);
        if (StringUtils.b((CharSequence) str)) {
            this.f16108d = new AppBidder(activity, str, null, BitmapDescriptorFactory.HUE_RED);
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader
    public final void a() {
        try {
            this.f16108d.a(this.f16101c, this.f16100b);
        } catch (Exception e) {
            if (this.f16100b != null) {
                this.f16100b.onInterstitialFailed(null, MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseInterstitialAdLoader
    public final void b() {
        super.b();
        AppBidder appBidder = this.f16108d;
        if (appBidder != null) {
            appBidder.a();
        }
    }
}
