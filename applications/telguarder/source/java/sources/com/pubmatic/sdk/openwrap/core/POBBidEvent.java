package com.pubmatic.sdk.openwrap.core;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidEvent.class */
public interface POBBidEvent {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError.class */
    public enum BidEventError {
        CLIENT_SIDE_AUCTION_LOSS("BidEventErrorClientSideAuctionLoss"),
        BID_EXPIRED("BidEventErrorBidExpired"),
        OTHER("BidEventErrorOther");
        

        /* renamed from: a */
        private String f712a;

        BidEventError(String str) {
            this.f712a = str;
        }

        public String getErrorMessage() {
            return this.f712a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState.class */
    public enum POBBidProceedState {
        DEFAULT,
        WAITING
    }

    POBBid getBid();

    void proceedOnError(BidEventError bidEventError);

    boolean proceedToLoadAd();

    void setBidEventListener(POBBidEventListener pOBBidEventListener);
}
