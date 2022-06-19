package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.adcom.AdOrBuilder;
import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/BidEventOrBuilder.class */
public interface BidEventOrBuilder extends MessageOrBuilder {
    C9813Ad getAd();

    AdOrBuilder getAdOrBuilder();

    AuctionContext getAuctionContext();

    AuctionContextOrBuilder getAuctionContextOrBuilder();

    Response.Seatbid.Bid getBid();

    Response.Seatbid.BidOrBuilder getBidOrBuilder();

    String getBidid();

    ByteString getBididBytes();

    String getSeat();

    ByteString getSeatBytes();

    String getTimestamp();

    ByteString getTimestampBytes();

    boolean hasAd();

    boolean hasAuctionContext();

    boolean hasBid();
}
