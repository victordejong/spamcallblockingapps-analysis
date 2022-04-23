package com.callapp.contacts.util.ads.bidder;

import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/AppBidderResult.class */
public class AppBidderResult {
    public Bidder bidder;
    public boolean disableRefresh;
    public MoPubInterstitial moPubInterstitial;
    public MoPubView moPubView;
    public NativeAd nativeAd;
    public double price;
    public Waterfall waterfall;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AppBidderResult appBidderResult = (AppBidderResult) obj;
        if (Double.compare(appBidderResult.price, this.price) == 0 && this.disableRefresh == appBidderResult.disableRefresh && Objects.equals(this.nativeAd, appBidderResult.nativeAd) && Objects.equals(this.moPubView, appBidderResult.moPubView) && Objects.equals(this.moPubInterstitial, appBidderResult.moPubInterstitial) && Objects.equals(this.bidder, appBidderResult.bidder)) {
            return Objects.equals(this.waterfall, appBidderResult.waterfall);
        }
        return false;
    }

    public int hashCode() {
        NativeAd nativeAd = this.nativeAd;
        int i = 0;
        int hashCode = nativeAd != null ? nativeAd.hashCode() : 0;
        MoPubView moPubView = this.moPubView;
        int hashCode2 = moPubView != null ? moPubView.hashCode() : 0;
        MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
        int hashCode3 = moPubInterstitial != null ? moPubInterstitial.hashCode() : 0;
        long doubleToLongBits = Double.doubleToLongBits(this.price);
        int i2 = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        boolean z = this.disableRefresh;
        Bidder bidder = this.bidder;
        int hashCode4 = bidder != null ? bidder.hashCode() : 0;
        Waterfall waterfall = this.waterfall;
        if (waterfall != null) {
            i = waterfall.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + (z ? 1 : 0)) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        String str;
        String str2 = "";
        if (this.bidder != null) {
            str = "bidder - " + this.bidder;
        } else {
            str = str2;
            if (this.waterfall != null) {
                if (this.moPubView != null) {
                    StringBuilder sb = new StringBuilder("waterfall banner - ");
                    sb.append(this.moPubView.getAdViewController() != null ? this.moPubView.getAdViewController().getBaseAdClassName() : "");
                    str = sb.toString();
                } else {
                    str = "";
                }
                if (this.nativeAd != null) {
                    str = "waterfall native - " + this.nativeAd.getBaseNativeAd().getClass().getSimpleName();
                }
                if (this.moPubInterstitial != null) {
                    StringBuilder sb2 = new StringBuilder("waterfall interstitial - ");
                    if (this.moPubInterstitial.getAdViewController() != null) {
                        str2 = this.moPubInterstitial.getAdViewController().getBaseAdClassName();
                    }
                    sb2.append(str2);
                    str = sb2.toString();
                }
            }
        }
        return "AppBidderResult{type=" + str + ", price=" + this.price + ", disableRefresh=" + this.disableRefresh + '}';
    }
}
