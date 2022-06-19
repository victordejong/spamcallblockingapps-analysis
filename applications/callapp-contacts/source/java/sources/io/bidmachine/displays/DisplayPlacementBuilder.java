package io.bidmachine.displays;

import android.graphics.Point;
import android.text.TextUtils;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.adcom.ApiFramework;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementPosition;
import com.explorestack.protobuf.adcom.SizeUnit;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.AdContentType;
import io.bidmachine.AdsType;
import io.bidmachine.Constants;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkConfig;
import io.bidmachine.core.Utils;
import io.bidmachine.displays.PlacementBuilder;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedAdRequestParams;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/DisplayPlacementBuilder.class */
public class DisplayPlacementBuilder<UnifiedAdRequestParamsType extends UnifiedAdRequestParams> extends PlacementBuilder<UnifiedAdRequestParamsType> {
    private boolean isFullscreen;

    public DisplayPlacementBuilder(boolean z, boolean z2) {
        super(AdContentType.Static, z2);
        this.isFullscreen = z;
    }

    @Override // io.bidmachine.displays.PlacementBuilder
    public AdObjectParams createAdObjectParams(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        if (!c9813Ad.hasDisplay()) {
            return null;
        }
        AdObjectParams createHeaderBiddingAdObjectParams = createHeaderBiddingAdObjectParams(contextProvider, unifiedadrequestparamstype, seatbid, bid, c9813Ad);
        DisplayAdObjectParams displayAdObjectParams = createHeaderBiddingAdObjectParams;
        if (createHeaderBiddingAdObjectParams == null) {
            C9813Ad.Display display = c9813Ad.getDisplay();
            if (TextUtils.isEmpty(display.getAdm())) {
                return null;
            }
            DisplayAdObjectParams displayAdObjectParams2 = new DisplayAdObjectParams(seatbid, bid, c9813Ad);
            displayAdObjectParams2.setCreativeAdm(display.getAdm());
            displayAdObjectParams2.setWidth(display.getW());
            displayAdObjectParams2.setHeight(display.getH());
            displayAdObjectParams = displayAdObjectParams2;
        }
        return displayAdObjectParams;
    }

    @Override // io.bidmachine.displays.PlacementBuilder
    public void createPlacement(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, AdsType adsType, Collection<NetworkConfig> collection, PlacementBuilder.PlacementCreateCallback placementCreateCallback) throws Exception {
        Placement.DisplayPlacement.Builder newBuilder = Placement.DisplayPlacement.newBuilder();
        newBuilder.addApi(ApiFramework.API_FRAMEWORK_MRAID_2_0);
        newBuilder.setUnit(SizeUnit.SIZE_UNIT_DIPS);
        newBuilder.addAllMime(Arrays.asList(Constants.IMAGE_MIME_TYPES));
        if (this.isFullscreen) {
            newBuilder.setInstl(true);
            newBuilder.setPos(PlacementPosition.PLACEMENT_POSITION_FULLSCREEN);
        }
        Point size = getSize(contextProvider, unifiedadrequestparamstype);
        newBuilder.setW(size.x);
        newBuilder.setH(size.y);
        Message.Builder createHeaderBiddingPlacement = createHeaderBiddingPlacement(contextProvider, unifiedadrequestparamstype, adsType, collection);
        if (createHeaderBiddingPlacement != null) {
            newBuilder.addExtProto(Any.pack(createHeaderBiddingPlacement.build()));
        }
        placementCreateCallback.onCreated(newBuilder);
    }

    public Point getSize(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype) {
        return Utils.getScreenSize(contextProvider.getContext());
    }
}
