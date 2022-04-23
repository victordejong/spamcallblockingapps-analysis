package net.pubnative.lite.sdk.auction;

import net.pubnative.lite.sdk.models.Ad;
import net.pubnative.lite.sdk.models.AdSize;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/AdSource.class */
public interface AdSource {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/AdSource$Listener.class */
    public interface Listener {
        void onAdFetched(Ad ad);

        void onError(AuctionError auctionError);
    }

    void fetchAd(Listener listener);

    AdSize getAdSize();

    double getECPM();

    String getName();
}
