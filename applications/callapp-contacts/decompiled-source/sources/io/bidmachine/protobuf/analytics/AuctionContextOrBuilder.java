package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.ContextOrBuilder;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementOrBuilder;
import com.explorestack.protobuf.openrtb.Request;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/AuctionContextOrBuilder.class */
public interface AuctionContextOrBuilder extends MessageOrBuilder {
    int getAt();

    Context getContext();

    ContextOrBuilder getContextOrBuilder();

    String getId();

    ByteString getIdBytes();

    Request.Item getItem();

    Request.ItemOrBuilder getItemOrBuilder();

    Placement getPlacement();

    PlacementOrBuilder getPlacementOrBuilder();

    PlacementTag getPlacementTag();

    int getPlacementTagValue();

    boolean getTest();

    String getTimestamp();

    ByteString getTimestampBytes();

    boolean hasContext();

    boolean hasItem();

    boolean hasPlacement();
}
