package io.bidmachine.displays;

import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.Ad;
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
    private a<UnifiedAdRequestParamsType> headerBiddingPlacementBuilder;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/PlacementBuilder$PlacementCreateCallback.class */
    public interface PlacementCreateCallback {
        void onCreated(Message.Builder builder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlacementBuilder(AdContentType adContentType, boolean z) {
        this.contentType = adContentType;
        if (z) {
            this.headerBiddingPlacementBuilder = new a<>();
        }
    }

    public abstract AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad);

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdObjectParams createHeaderBiddingAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad) {
        a<UnifiedAdRequestParamsType> aVar = this.headerBiddingPlacementBuilder;
        if (aVar != null) {
            return aVar.createAdObjectParams(contextProvider, unifiedadrequestparamstype, seatbid, bid, ad);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Message.Builder createHeaderBiddingPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection) {
        a<UnifiedAdRequestParamsType> aVar = this.headerBiddingPlacementBuilder;
        if (aVar != null) {
            return aVar.createPlacement(contextProvider, unifiedadrequestparamstype, adsType, getAdContentType(), collection);
        }
        return null;
    }

    public abstract void createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, PlacementCreateCallback placementCreateCallback) throws Exception;

    public AdContentType getAdContentType() {
        return this.contentType;
    }

    public HeaderBiddingAd obtainHeaderBiddingAd(Ad ad) {
        a<UnifiedAdRequestParamsType> aVar = this.headerBiddingPlacementBuilder;
        if (aVar != null) {
            return aVar.obtainHeaderBiddingAd(ad);
        }
        return null;
    }
}
