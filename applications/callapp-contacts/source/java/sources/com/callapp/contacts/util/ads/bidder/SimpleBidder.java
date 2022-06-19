package com.callapp.contacts.util.ads.bidder;

import android.content.Context;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONBidder;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/SimpleBidder.class */
public interface SimpleBidder extends Bidder {
    void getBid(Context context, JSONBidder jSONBidder, AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, long j, String str);
}
