package com.monet.bidder;

import android.content.Context;
import android.util.AttributeSet;
import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.views.HyBidAdView;
/* loaded from: classes4-dex2jar.jar:com/monet/bidder/AppMonetView.class */
public class AppMonetView extends HyBidAdView {

    /* renamed from: a  reason: collision with root package name */
    private static final String f33765a = "AppMonetView";

    /* renamed from: b  reason: collision with root package name */
    private String f33766b;

    /* renamed from: c  reason: collision with root package name */
    private a f33767c;

    /* renamed from: d  reason: collision with root package name */
    private c f33768d;
    private AdSize e = AdSize.SIZE_300x250;
    private final HyBidAdView.Listener f = new HyBidAdView.Listener() { // from class: com.monet.bidder.AppMonetView.1
        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdClick() {
            if (AppMonetView.this.f33767c != null) {
                a unused = AppMonetView.this.f33767c;
            }
        }

        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdImpression() {
        }

        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdLoadFailed(Throwable th) {
            if (AppMonetView.this.f33767c != null) {
                a unused = AppMonetView.this.f33767c;
                b.parseHyBidException(th);
            }
        }

        @Override // net.pubnative.lite.sdk.views.HyBidAdView.Listener
        public final void onAdLoaded() {
            if (AppMonetView.this.f33767c != null) {
                a unused = AppMonetView.this.f33767c;
            }
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/monet/bidder/AppMonetView$a.class */
    public interface a {
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

    public void setAdSize(com.monet.bidder.a aVar) {
        AdSize adSize = (aVar.f33771b.intValue() == AdSize.SIZE_300x250.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_300x250.getHeight()) ? AdSize.SIZE_300x250 : (aVar.f33771b.intValue() == AdSize.SIZE_480x320.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_480x320.getHeight()) ? AdSize.SIZE_480x320 : (aVar.f33771b.intValue() == AdSize.SIZE_300x50.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_300x50.getHeight()) ? AdSize.SIZE_300x50 : (aVar.f33771b.intValue() == AdSize.SIZE_320x480.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_320x480.getHeight()) ? AdSize.SIZE_320x480 : (aVar.f33771b.intValue() == AdSize.SIZE_1024x768.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_1024x768.getHeight()) ? AdSize.SIZE_1024x768 : (aVar.f33771b.intValue() == AdSize.SIZE_768x1024.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_768x1024.getHeight()) ? AdSize.SIZE_768x1024 : (aVar.f33771b.intValue() == AdSize.SIZE_728x90.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_728x90.getHeight()) ? AdSize.SIZE_728x90 : (aVar.f33771b.intValue() == AdSize.SIZE_160x600.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_160x600.getHeight()) ? AdSize.SIZE_160x600 : (aVar.f33771b.intValue() == AdSize.SIZE_250x250.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_250x250.getHeight()) ? AdSize.SIZE_250x250 : (aVar.f33771b.intValue() == AdSize.SIZE_300x600.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_300x600.getHeight()) ? AdSize.SIZE_300x600 : (aVar.f33771b.intValue() == AdSize.SIZE_320x100.getWidth() && aVar.f33770a.intValue() == AdSize.SIZE_320x100.getHeight()) ? AdSize.SIZE_320x100 : AdSize.SIZE_320x50;
        this.e = adSize;
        super.setAdSize(adSize);
    }

    public void setAdUnitId(String str) {
        this.f33766b = str;
    }

    public void setBannerAdListener(a aVar) {
        this.f33767c = aVar;
    }

    public void setMonetBid(c cVar) {
        this.f33768d = cVar;
    }
}
