package io.bidmachine.displays;

import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkConfig;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.unified.UnifiedAdRequestParams;
import java.util.Collection;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/PlacementBuilder.class */
public abstract class PlacementBuilder<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> {
    private AdContentType contentType;
    private C17853a<UnifiedAdRequestParamsType> headerBiddingPlacementBuilder;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/PlacementBuilder$PlacementCreateCallback.class */
    public interface PlacementCreateCallback {
        void onCreated(Message.Builder builder);
    }

    public PlacementBuilder(AdContentType adContentType, boolean z) {
        this.contentType = adContentType;
        if (z) {
            this.headerBiddingPlacementBuilder = new C17853a<>();
        }
    }

    public abstract AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad);

    public AdObjectParams createHeaderBiddingAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        C17853a<UnifiedAdRequestParamsType> c17853a = this.headerBiddingPlacementBuilder;
        if (c17853a != null) {
            return c17853a.createAdObjectParams(contextProvider, unifiedadrequestparamstype, seatbid, bid, c9813Ad);
        }
        return null;
    }

    public Message.Builder createHeaderBiddingPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection) {
        C17853a<UnifiedAdRequestParamsType> c17853a = this.headerBiddingPlacementBuilder;
        if (c17853a != null) {
            return c17853a.createPlacement(contextProvider, unifiedadrequestparamstype, adsType, getAdContentType(), collection);
        }
        return null;
    }

    public abstract void createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, PlacementCreateCallback placementCreateCallback) throws Exception;

    public AdContentType getAdContentType() {
        return this.contentType;
    }

    public HeaderBiddingAd obtainHeaderBiddingAd(C9813Ad c9813Ad) {
        C17853a<UnifiedAdRequestParamsType> c17853a = this.headerBiddingPlacementBuilder;
        if (c17853a != null) {
            return c17853a.obtainHeaderBiddingAd(c9813Ad);
        }
        return null;
    }
}
