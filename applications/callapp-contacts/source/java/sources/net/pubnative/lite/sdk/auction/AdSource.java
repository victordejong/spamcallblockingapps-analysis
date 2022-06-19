package net.pubnative.lite.sdk.auction;

import net.pubnative.lite.sdk.models.AdSize;
import net.pubnative.lite.sdk.models.C20576Ad;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/AdSource.class */
public interface AdSource {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/AdSource$Listener.class */
    public interface Listener {
        void onAdFetched(C20576Ad c20576Ad);

        void onError(AuctionError auctionError);
    }

    void fetchAd(Listener listener);

    AdSize getAdSize();

    double getECPM();

    String getName();
}
