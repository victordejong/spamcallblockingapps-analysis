package io.bidmachine;

import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AuctionResultImpl.class */
public final class AuctionResultImpl implements AuctionResult {
    private final String[] adDomains;
    private final String cid;
    private final CreativeFormat creativeFormat;
    private final String creativeId;
    private final Map<String, String> customParams;
    private final String deal;
    private final String demandSource;
    private final String id;
    private final String networkKey;
    private final Map<String, String> networkParams;
    private final double price;
    private final String seat;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AuctionResultImpl(AdsType adsType, Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad, NetworkConfig networkConfig) {
        this.id = bid.getId();
        this.demandSource = seatbid.getSeat();
        this.seat = seatbid.getSeat();
        this.price = bid.getPrice();
        this.deal = bid.getDeal();
        this.creativeId = ad.getId();
        this.cid = bid.getCid();
        if (ad.getAdomainCount() > 0) {
            this.adDomains = (String[]) ad.getAdomainList().toArray(new String[0]);
        } else {
            this.adDomains = null;
        }
        this.customParams = createCustomParams(ad);
        this.networkKey = networkConfig.getKey();
        this.networkParams = createClientParams(adsType.obtainHeaderBiddingAd(ad));
        this.creativeFormat = identifyCreativeFormat(ad);
    }

    private Map<String, String> createCustomParams(Ad ad) {
        HashMap hashMap = new HashMap();
        for (Any any : ad.getExtProtoList()) {
            if (any.is(AdExtension.class)) {
                try {
                    hashMap.putAll(((AdExtension) any.unpack(AdExtension.class)).getCustomParamsMap());
                } catch (Exception e) {
                }
            }
        }
        return hashMap;
    }

    static CreativeFormat identifyCreativeFormat(Ad ad) {
        if (ad.hasDisplay()) {
            Ad.Display display = ad.getDisplay();
            if (display.hasBanner() || !TextUtils.isEmpty(display.getAdm())) {
                return CreativeFormat.Banner;
            }
            if (display.hasNative()) {
                return CreativeFormat.Native;
            }
            return null;
        } else if (ad.hasVideo()) {
            return CreativeFormat.Video;
        } else {
            return null;
        }
    }

    final Map<String, String> createClientParams(HeaderBiddingAd headerBiddingAd) {
        Map<String, String> clientParamsMap;
        HashMap hashMap = new HashMap();
        if (!(headerBiddingAd == null || (clientParamsMap = headerBiddingAd.getClientParamsMap()) == null)) {
            hashMap.putAll(clientParamsMap);
        }
        return hashMap;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String[] getAdDomains() {
        return this.adDomains;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getCid() {
        return this.cid;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final CreativeFormat getCreativeFormat() {
        return this.creativeFormat;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getCreativeId() {
        return this.creativeId;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final Map<String, String> getCustomParams() {
        return this.customParams;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getDeal() {
        return this.deal;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getDemandSource() {
        return this.demandSource;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getId() {
        return this.id;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getNetworkKey() {
        return this.networkKey;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final Map<String, String> getNetworkParams() {
        return this.networkParams;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final double getPrice() {
        return this.price;
    }

    @Override // io.bidmachine.models.AuctionResult
    public final String getSeat() {
        return this.seat;
    }

    public final String toString() {
        return getClass().getSimpleName() + "[@" + Integer.toHexString(hashCode()) + "]: id=" + this.id + ", demandSource=" + this.demandSource + ", price: " + this.price + ", creativeId: " + this.creativeId + ", cid: " + this.cid;
    }
}
