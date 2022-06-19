package com.monet.bidder;

import android.content.Context;
import android.util.AttributeSet;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.views.HyBidAdView;
/* loaded from: classes4-dex2jar.jar:com/monet/bidder/AppMonetView.class */
public class AppMonetView extends HyBidAdView {

    /* renamed from: a */
    private static final String f58634a = "AppMonetView";

    /* renamed from: b */
    private String f58635b;

    /* renamed from: c */
    private AbstractC16667a f58636c;

    /* renamed from: d */
    private C16670c f58637d;

    /* renamed from: e */
    private AdSize f58638e = AdSize.SIZE_300x250;

    /* renamed from: f */
    private final HyBidAdView.Listener f58639f = new HyBidAdView.Listener() { // from class: com.monet.bidder.AppMonetView.1
        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdClick() {
            if (AppMonetView.this.f58636c != null) {
                AbstractC16667a unused = AppMonetView.this.f58636c;
            }
        }

        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdImpression() {
        }

        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdLoadFailed(Throwable th) {
            if (AppMonetView.this.f58636c != null) {
                AbstractC16667a unused = AppMonetView.this.f58636c;
                EnumC16669b.parseHyBidException(th);
            }
        }

        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdLoaded() {
            if (AppMonetView.this.f58636c != null) {
                AbstractC16667a unused = AppMonetView.this.f58636c;
            }
        }
    };

    /* renamed from: com.monet.bidder.AppMonetView$a */
    /* loaded from: classes4-dex2jar.jar:com/monet/bidder/AppMonetView$a.class */
    public interface AbstractC16667a {
    }

    public AppMonetView(Context context) {
        super(context);
    }

    public AppMonetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppMonetView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public AppMonetView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void setAdSize(C16668a c16668a) {
        AdSize adSize = (c16668a.f58642b.intValue() == AdSize.SIZE_300x250.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_300x250.getHeight()) ? AdSize.SIZE_300x250 : (c16668a.f58642b.intValue() == AdSize.SIZE_480x320.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_480x320.getHeight()) ? AdSize.SIZE_480x320 : (c16668a.f58642b.intValue() == AdSize.SIZE_300x50.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_300x50.getHeight()) ? AdSize.SIZE_300x50 : (c16668a.f58642b.intValue() == AdSize.SIZE_320x480.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_320x480.getHeight()) ? AdSize.SIZE_320x480 : (c16668a.f58642b.intValue() == AdSize.SIZE_1024x768.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_1024x768.getHeight()) ? AdSize.SIZE_1024x768 : (c16668a.f58642b.intValue() == AdSize.SIZE_768x1024.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_768x1024.getHeight()) ? AdSize.SIZE_768x1024 : (c16668a.f58642b.intValue() == AdSize.SIZE_728x90.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_728x90.getHeight()) ? AdSize.SIZE_728x90 : (c16668a.f58642b.intValue() == AdSize.SIZE_160x600.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_160x600.getHeight()) ? AdSize.SIZE_160x600 : (c16668a.f58642b.intValue() == AdSize.SIZE_250x250.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_250x250.getHeight()) ? AdSize.SIZE_250x250 : (c16668a.f58642b.intValue() == AdSize.SIZE_300x600.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_300x600.getHeight()) ? AdSize.SIZE_300x600 : (c16668a.f58642b.intValue() == AdSize.SIZE_320x100.getWidth() && c16668a.f58641a.intValue() == AdSize.SIZE_320x100.getHeight()) ? AdSize.SIZE_320x100 : AdSize.SIZE_320x50;
        this.f58638e = adSize;
        super.setAdSize(adSize);
    }

    public void setAdUnitId(String str) {
        this.f58635b = str;
    }

    public void setBannerAdListener(AbstractC16667a abstractC16667a) {
        this.f58636c = abstractC16667a;
    }

    public void setMonetBid(C16670c c16670c) {
        this.f58637d = c16670c;
    }
}
