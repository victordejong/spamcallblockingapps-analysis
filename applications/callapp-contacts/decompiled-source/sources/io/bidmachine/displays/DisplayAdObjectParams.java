package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/DisplayAdObjectParams.class */
final class DisplayAdObjectParams extends IabAdObjectParams {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DisplayAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad) {
        super(seatbid, bid, ad);
        prepareEvents(ad.getDisplay().getEventList());
    }
}
