package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/DisplayAdObjectParams.class */
final class DisplayAdObjectParams extends IabAdObjectParams {
    public DisplayAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        super(seatbid, bid, c9813Ad);
        prepareEvents(c9813Ad.getDisplay().getEventList());
    }
}
