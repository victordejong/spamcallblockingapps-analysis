package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.TrackEventType;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/NativeAdObjectParams.class */
public final class NativeAdObjectParams extends AdObjectParams implements UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider {
    private UnifiedMediationParams mediationParams = new UnifiedMediationParams.MappedUnifiedMediationParams(this);
    private HashMap<String, Object> params;

    public NativeAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        super(seatbid, bid, c9813Ad);
        prepareEvents(c9813Ad.getDisplay().getEventList());
        C9813Ad.Display.Native r0 = c9813Ad.getDisplay().getNative();
        C9813Ad.Display.Native.LinkAsset link = r0.getLink();
        if (link != null && link != C9813Ad.Display.Native.LinkAsset.getDefaultInstance()) {
            getData().put(IabUtils.KEY_CLICK_URL, link.getUrl());
            for (int i = 0; i < link.getTrkrCount(); i++) {
                addEvent(TrackEventType.Click, link.getTrkr(i));
            }
        }
        for (C9813Ad.Display.Native.Asset asset : r0.getAssetList()) {
            int id = asset.getId();
            if (id == 4) {
                if (!asset.getVideo().getCurl().equals(C9813Ad.Display.Native.Asset.VideoAsset.getDefaultInstance().getCurl())) {
                    getData().put(IabUtils.KEY_VIDEO_URL, asset.getVideo().getCurl());
                }
                if (!asset.getVideo().getAdm().equals(C9813Ad.Display.Native.Asset.VideoAsset.getDefaultInstance().getAdm())) {
                    getData().put(IabUtils.KEY_VIDEO_ADM, asset.getVideo().getAdm());
                }
            } else if (id == 7) {
                getData().put("rating", Float.valueOf(asset.getData().getValue()));
            } else if (id == 8) {
                getData().put("cta", asset.getData().getValue());
            } else if (id == 123) {
                getData().put("title", asset.getTitle().getText());
            } else if (id == 124) {
                getData().put(IabUtils.KEY_ICON_URL, asset.getImage().getUrl());
            } else if (id == 127) {
                getData().put("description", asset.getData().getValue());
            } else if (id == 128) {
                getData().put(IabUtils.KEY_IMAGE_URL, asset.getImage().getUrl());
            }
        }
    }

    @Override // io.bidmachine.unified.UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider
    public final Map<String, Object> getData() {
        if (this.params == null) {
            this.params = new HashMap<>();
        }
        return this.params;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public final boolean isValid() {
        return true;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public final UnifiedMediationParams toMediationParams() {
        return this.mediationParams;
    }
}
