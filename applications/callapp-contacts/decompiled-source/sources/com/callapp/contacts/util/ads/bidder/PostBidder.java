package com.callapp.contacts.util.ads.bidder;

import android.content.Context;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONPostBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/PostBidder.class */
public interface PostBidder extends Bidder {
    void getBid(Context context, JSONPostBidder jSONPostBidder, AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, double d2, String str, float f);

    void setPriceToBeat(double d2);
}
