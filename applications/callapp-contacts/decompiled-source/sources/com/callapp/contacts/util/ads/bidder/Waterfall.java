package com.callapp.contacts.util.ads.bidder;

import com.callapp.contacts.CallAppApplication;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/Waterfall.class */
public class Waterfall {
    protected boolean isDestroyed;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;

    public void destroy() {
        this.isDestroyed = true;
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.Waterfall.1
            @Override // java.lang.Runnable
            public void run() {
                if (Waterfall.this.moPubView != null) {
                    Waterfall.this.moPubView.destroy();
                    Waterfall.this.moPubView = null;
                }
                if (Waterfall.this.nativeAd != null) {
                    Waterfall.this.nativeAd.destroy();
                    Waterfall.this.nativeAd = null;
                }
                if (Waterfall.this.moPubInterstitial != null) {
                    Waterfall.this.moPubInterstitial.destroy();
                    Waterfall.this.moPubInterstitial = null;
                }
            }
        });
    }

    public boolean isDestroyed() {
        return this.isDestroyed;
    }

    public void setInterstitial(MoPubInterstitial moPubInterstitial) {
        this.moPubInterstitial = moPubInterstitial;
    }

    public void setMoPubView(MoPubView moPubView) {
        this.moPubView = moPubView;
    }

    public void setNativeAd(NativeAd nativeAd) {
        this.nativeAd = nativeAd;
    }

    public String toString() {
        String str;
        String str2 = "";
        if (this.moPubView != null) {
            StringBuilder sb = new StringBuilder("banner - ");
            sb.append(this.moPubView.getAdViewController() != null ? this.moPubView.getAdViewController().getBaseAdClassName() : "");
            str = sb.toString();
        } else {
            str = "";
        }
        if (this.nativeAd != null) {
            str = "native - " + this.nativeAd.getBaseNativeAd().getClass().getSimpleName();
        }
        if (this.moPubInterstitial != null) {
            StringBuilder sb2 = new StringBuilder("interstitial - ");
            if (this.moPubInterstitial.getAdViewController() != null) {
                str2 = this.moPubInterstitial.getAdViewController().getBaseAdClassName();
            }
            sb2.append(str2);
            str = sb2.toString();
        }
        return "Waterfall{type=" + str + ", isDestroyed=" + this.isDestroyed + '}';
    }
}
