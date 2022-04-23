package com.callapp.contacts.util.ads.loaders;

import android.content.Context;
import android.widget.FrameLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.AppBidderResult;
import com.callapp.framework.util.StringUtils;
import com.mopub.nativeads.NativeErrorCode;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader.class */
public class MultiSizeBiddingAdLoader extends BaseMultiSizeAdLoader {
    private AppBidder m;

    public MultiSizeBiddingAdLoader(Context context, AdUtils.AdEvents adEvents, String str, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        super(context, adEvents, str, i, z, nativeAdParamGetter, f);
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    protected final void a(String str) {
        if (StringUtils.b((CharSequence) str)) {
            c();
            this.m = new AppBidder(this.g, str, this.j, this.l);
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    public final void b() {
        super.b();
        AppBidder appBidder = this.m;
        if (appBidder != null) {
            appBidder.a();
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    protected Runnable getAdRunnable() {
        return new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeBiddingAdLoader.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!MultiSizeBiddingAdLoader.this.f16104c && MultiSizeBiddingAdLoader.this.m != null) {
                        final AppBidderResult a2 = MultiSizeBiddingAdLoader.this.m.a(MultiSizeBiddingAdLoader.this.f, MultiSizeBiddingAdLoader.this.h);
                        if (a2 != null) {
                            MultiSizeBiddingAdLoader.this.f16105d = 1;
                            MultiSizeBiddingAdLoader.this.e = true;
                            MultiSizeBiddingAdLoader.this.f = true;
                            if (!a2.disableRefresh) {
                                MultiSizeBiddingAdLoader.this.d();
                            }
                            if (a2.moPubView != null) {
                                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeBiddingAdLoader.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        int a3 = (int) Activities.a(8.0f);
                                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                        layoutParams.setMargins(a3, a3, a3, a3);
                                        a2.moPubView.setLayoutParams(layoutParams);
                                        MultiSizeBiddingAdLoader.this.h.onBannerAdLoaded(a2.moPubView, a2.disableRefresh);
                                    }
                                });
                            } else {
                                MultiSizeBiddingAdLoader.this.h.onNativeAdLoaded(a2.nativeAd, a2.disableRefresh);
                            }
                        } else {
                            MultiSizeBiddingAdLoader.this.f16105d++;
                            MultiSizeBiddingAdLoader.this.e = false;
                            MultiSizeBiddingAdLoader.this.f = true;
                            if (MultiSizeBiddingAdLoader.this.i) {
                                CLog.a(MultiSizeBiddingAdLoader.this.f16103b);
                                MultiSizeBiddingAdLoader.this.d();
                            }
                            MultiSizeBiddingAdLoader.this.h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                        }
                    }
                } catch (Exception e) {
                    if (MultiSizeBiddingAdLoader.this.h != null) {
                        MultiSizeBiddingAdLoader.this.h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    }
                    CrashlyticsUtils.a(e);
                    CLog.a(MultiSizeBiddingAdLoader.this.f16103b, e);
                }
            }
        };
    }
}
