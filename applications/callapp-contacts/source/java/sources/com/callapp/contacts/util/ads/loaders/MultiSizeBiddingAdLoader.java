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

    /* renamed from: m */
    private AppBidder f28086m;

    public MultiSizeBiddingAdLoader(Context context, AdUtils.AdEvents adEvents, String str, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        super(context, adEvents, str, i, z, nativeAdParamGetter, f);
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    /* renamed from: a */
    protected final void mo27195a(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            m27209c();
            this.f28086m = new AppBidder(this.f28061g, str, this.f28064j, this.f28066l);
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    /* renamed from: b */
    public final void mo27194b() {
        super.mo27194b();
        AppBidder appBidder = this.f28086m;
        if (appBidder != null) {
            appBidder.m27258a();
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    protected Runnable getAdRunnable() {
        return new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeBiddingAdLoader.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!MultiSizeBiddingAdLoader.this.f28057c && MultiSizeBiddingAdLoader.this.f28086m != null) {
                        final AppBidderResult m27250a = MultiSizeBiddingAdLoader.this.f28086m.m27250a(MultiSizeBiddingAdLoader.this.f28060f, MultiSizeBiddingAdLoader.this.f28062h);
                        if (m27250a == null) {
                            MultiSizeBiddingAdLoader.this.f28058d++;
                            MultiSizeBiddingAdLoader.this.f28059e = false;
                            MultiSizeBiddingAdLoader.this.f28060f = true;
                            if (MultiSizeBiddingAdLoader.this.f28063i) {
                                CLog.m27606a(MultiSizeBiddingAdLoader.this.f28056b);
                                MultiSizeBiddingAdLoader.this.m27208d();
                            }
                            MultiSizeBiddingAdLoader.this.f28062h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                            return;
                        }
                        MultiSizeBiddingAdLoader.this.f28058d = 1;
                        MultiSizeBiddingAdLoader.this.f28059e = true;
                        MultiSizeBiddingAdLoader.this.f28060f = true;
                        if (!m27250a.disableRefresh) {
                            MultiSizeBiddingAdLoader.this.m27208d();
                        }
                        if (m27250a.moPubView != null) {
                            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeBiddingAdLoader.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    int m27699a = (int) Activities.m27699a(8.0f);
                                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                    layoutParams.setMargins(m27699a, m27699a, m27699a, m27699a);
                                    m27250a.moPubView.setLayoutParams(layoutParams);
                                    MultiSizeBiddingAdLoader.this.f28062h.onBannerAdLoaded(m27250a.moPubView, m27250a.disableRefresh);
                                }
                            });
                        } else {
                            MultiSizeBiddingAdLoader.this.f28062h.onNativeAdLoaded(m27250a.nativeAd, m27250a.disableRefresh);
                        }
                    }
                } catch (Exception e) {
                    if (MultiSizeBiddingAdLoader.this.f28062h != null) {
                        MultiSizeBiddingAdLoader.this.f28062h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    }
                    CrashlyticsUtils.m27547a(e);
                    CLog.m27602a(MultiSizeBiddingAdLoader.this.f28056b, e);
                }
            }
        };
    }
}
