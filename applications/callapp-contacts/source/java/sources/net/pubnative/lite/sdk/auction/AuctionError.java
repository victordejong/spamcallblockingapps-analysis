package net.pubnative.lite.sdk.auction;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/auction/AuctionError.class */
public class AuctionError {
    private final String adSourceName;
    private final Throwable error;

    public AuctionError(String str, Throwable th) {
        this.adSourceName = str;
        this.error = th;
    }

    public String getAdSourceName() {
        return this.adSourceName;
    }

    public Throwable getError() {
        return this.error;
    }
}
