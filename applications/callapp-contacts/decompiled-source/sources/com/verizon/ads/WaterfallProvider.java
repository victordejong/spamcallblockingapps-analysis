package com.verizon.ads;

import android.content.Context;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallProvider.class */
public abstract class WaterfallProvider implements Component {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f35352a;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallProvider$WaterfallListener.class */
    public interface WaterfallListener {
        void onAdSessionsReceived(List<AdSession> list, ErrorInfo errorInfo);
    }

    public WaterfallProvider(Context context) {
        this.f35352a = context;
    }

    public String getBiddingToken(RequestMetadata requestMetadata) {
        return null;
    }

    public abstract boolean isSuperAuctionSupported();

    public abstract void load(Bid bid, int i, WaterfallListener waterfallListener);

    public abstract void load(RequestMetadata requestMetadata, int i, WaterfallListener waterfallListener);

    public abstract void requestBid(RequestMetadata requestMetadata, int i, BidRequestListener bidRequestListener);
}
