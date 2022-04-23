package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.adcom.AdOrBuilder;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.protobuf.analytics.AuctionContext;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/BidEvent.class */
public final class BidEvent extends GeneratedMessageV3 implements BidEventOrBuilder {
    public static final int AD_FIELD_NUMBER = 6;
    public static final int AUCTION_CONTEXT_FIELD_NUMBER = 4;
    public static final int BIDID_FIELD_NUMBER = 2;
    public static final int BID_FIELD_NUMBER = 5;
    private static final BidEvent DEFAULT_INSTANCE = new BidEvent();
    private static final Parser<BidEvent> PARSER = new AbstractParser<BidEvent>() { // from class: io.bidmachine.protobuf.analytics.BidEvent.1
        @Override // com.explorestack.protobuf.Parser
        public final BidEvent parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new BidEvent(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int SEAT_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private Ad ad_;
    private AuctionContext auctionContext_;
    private Response.Seatbid.Bid bid_;
    private volatile Object bidid_;
    private byte memoizedIsInitialized;
    private volatile Object seat_;
    private volatile Object timestamp_;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/BidEvent$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BidEventOrBuilder {
        private SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> adBuilder_;
        private Ad ad_;
        private SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> auctionContextBuilder_;
        private AuctionContext auctionContext_;
        private SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> bidBuilder_;
        private Response.Seatbid.Bid bid_;
        private Object bidid_;
        private Object seat_;
        private Object timestamp_;

        private Builder() {
            this.timestamp_ = "";
            this.bidid_ = "";
            this.seat_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.timestamp_ = "";
            this.bidid_ = "";
            this.seat_ = "";
            maybeForceBuilderInitialization();
        }

        private SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> getAdFieldBuilder() {
            if (this.adBuilder_ == null) {
                this.adBuilder_ = new SingleFieldBuilderV3<>(getAd(), getParentForChildren(), isClean());
                this.ad_ = null;
            }
            return this.adBuilder_;
        }

        private SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> getAuctionContextFieldBuilder() {
            if (this.auctionContextBuilder_ == null) {
                this.auctionContextBuilder_ = new SingleFieldBuilderV3<>(getAuctionContext(), getParentForChildren(), isClean());
                this.auctionContext_ = null;
            }
            return this.auctionContextBuilder_;
        }

        private SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> getBidFieldBuilder() {
            if (this.bidBuilder_ == null) {
                this.bidBuilder_ = new SingleFieldBuilderV3<>(getBid(), getParentForChildren(), isClean());
                this.bid_ = null;
            }
            return this.bidBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = BidEvent.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final BidEvent build() {
            BidEvent buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final BidEvent buildPartial() {
            BidEvent bidEvent = new BidEvent(this);
            bidEvent.timestamp_ = this.timestamp_;
            bidEvent.bidid_ = this.bidid_;
            bidEvent.seat_ = this.seat_;
            SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> singleFieldBuilderV3 = this.auctionContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                bidEvent.auctionContext_ = this.auctionContext_;
            } else {
                bidEvent.auctionContext_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> singleFieldBuilderV32 = this.bidBuilder_;
            if (singleFieldBuilderV32 == null) {
                bidEvent.bid_ = this.bid_;
            } else {
                bidEvent.bid_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> singleFieldBuilderV33 = this.adBuilder_;
            if (singleFieldBuilderV33 == null) {
                bidEvent.ad_ = this.ad_;
            } else {
                bidEvent.ad_ = singleFieldBuilderV33.build();
            }
            onBuilt();
            return bidEvent;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.timestamp_ = "";
            this.bidid_ = "";
            this.seat_ = "";
            if (this.auctionContextBuilder_ == null) {
                this.auctionContext_ = null;
            } else {
                this.auctionContext_ = null;
                this.auctionContextBuilder_ = null;
            }
            if (this.bidBuilder_ == null) {
                this.bid_ = null;
            } else {
                this.bid_ = null;
                this.bidBuilder_ = null;
            }
            if (this.adBuilder_ == null) {
                this.ad_ = null;
            } else {
                this.ad_ = null;
                this.adBuilder_ = null;
            }
            return this;
        }

        public final Builder clearAd() {
            if (this.adBuilder_ == null) {
                this.ad_ = null;
                onChanged();
            } else {
                this.ad_ = null;
                this.adBuilder_ = null;
            }
            return this;
        }

        public final Builder clearAuctionContext() {
            if (this.auctionContextBuilder_ == null) {
                this.auctionContext_ = null;
                onChanged();
            } else {
                this.auctionContext_ = null;
                this.auctionContextBuilder_ = null;
            }
            return this;
        }

        public final Builder clearBid() {
            if (this.bidBuilder_ == null) {
                this.bid_ = null;
                onChanged();
            } else {
                this.bid_ = null;
                this.bidBuilder_ = null;
            }
            return this;
        }

        public final Builder clearBidid() {
            this.bidid_ = BidEvent.getDefaultInstance().getBidid();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearSeat() {
            this.seat_ = BidEvent.getDefaultInstance().getSeat();
            onChanged();
            return this;
        }

        public final Builder clearTimestamp() {
            this.timestamp_ = BidEvent.getDefaultInstance().getTimestamp();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final Ad getAd() {
            SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> singleFieldBuilderV3 = this.adBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Ad ad = this.ad_;
            Ad ad2 = ad;
            if (ad == null) {
                ad2 = Ad.getDefaultInstance();
            }
            return ad2;
        }

        public final Ad.Builder getAdBuilder() {
            onChanged();
            return getAdFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final AdOrBuilder getAdOrBuilder() {
            SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> singleFieldBuilderV3 = this.adBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Ad ad = this.ad_;
            Ad ad2 = ad;
            if (ad == null) {
                ad2 = Ad.getDefaultInstance();
            }
            return ad2;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final AuctionContext getAuctionContext() {
            SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> singleFieldBuilderV3 = this.auctionContextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            AuctionContext auctionContext = this.auctionContext_;
            AuctionContext auctionContext2 = auctionContext;
            if (auctionContext == null) {
                auctionContext2 = AuctionContext.getDefaultInstance();
            }
            return auctionContext2;
        }

        public final AuctionContext.Builder getAuctionContextBuilder() {
            onChanged();
            return getAuctionContextFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final AuctionContextOrBuilder getAuctionContextOrBuilder() {
            SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> singleFieldBuilderV3 = this.auctionContextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            AuctionContext auctionContext = this.auctionContext_;
            AuctionContext auctionContext2 = auctionContext;
            if (auctionContext == null) {
                auctionContext2 = AuctionContext.getDefaultInstance();
            }
            return auctionContext2;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final Response.Seatbid.Bid getBid() {
            SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> singleFieldBuilderV3 = this.bidBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Response.Seatbid.Bid bid = this.bid_;
            Response.Seatbid.Bid bid2 = bid;
            if (bid == null) {
                bid2 = Response.Seatbid.Bid.getDefaultInstance();
            }
            return bid2;
        }

        public final Response.Seatbid.Bid.Builder getBidBuilder() {
            onChanged();
            return getBidFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final Response.Seatbid.BidOrBuilder getBidOrBuilder() {
            SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> singleFieldBuilderV3 = this.bidBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Response.Seatbid.Bid bid = this.bid_;
            Response.Seatbid.Bid bid2 = bid;
            if (bid == null) {
                bid2 = Response.Seatbid.Bid.getDefaultInstance();
            }
            return bid2;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final String getBidid() {
            Object obj = this.bidid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bidid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final ByteString getBididBytes() {
            Object obj = this.bidid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bidid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final BidEvent getDefaultInstanceForType() {
            return BidEvent.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final String getSeat() {
            Object obj = this.seat_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.seat_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final ByteString getSeatBytes() {
            Object obj = this.seat_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.seat_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final String getTimestamp() {
            Object obj = this.timestamp_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.timestamp_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final ByteString getTimestampBytes() {
            Object obj = this.timestamp_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.timestamp_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final boolean hasAd() {
            return (this.adBuilder_ == null && this.ad_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final boolean hasAuctionContext() {
            return (this.auctionContextBuilder_ == null && this.auctionContext_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
        public final boolean hasBid() {
            return (this.bidBuilder_ == null && this.bid_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable.ensureFieldAccessorsInitialized(BidEvent.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeAd(Ad ad) {
            SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> singleFieldBuilderV3 = this.adBuilder_;
            if (singleFieldBuilderV3 == null) {
                Ad ad2 = this.ad_;
                if (ad2 != null) {
                    this.ad_ = Ad.newBuilder(ad2).mergeFrom(ad).buildPartial();
                } else {
                    this.ad_ = ad;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(ad);
            }
            return this;
        }

        public final Builder mergeAuctionContext(AuctionContext auctionContext) {
            SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> singleFieldBuilderV3 = this.auctionContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                AuctionContext auctionContext2 = this.auctionContext_;
                if (auctionContext2 != null) {
                    this.auctionContext_ = AuctionContext.newBuilder(auctionContext2).mergeFrom(auctionContext).buildPartial();
                } else {
                    this.auctionContext_ = auctionContext;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(auctionContext);
            }
            return this;
        }

        public final Builder mergeBid(Response.Seatbid.Bid bid) {
            SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> singleFieldBuilderV3 = this.bidBuilder_;
            if (singleFieldBuilderV3 == null) {
                Response.Seatbid.Bid bid2 = this.bid_;
                if (bid2 != null) {
                    this.bid_ = Response.Seatbid.Bid.newBuilder(bid2).mergeFrom(bid).buildPartial();
                } else {
                    this.bid_ = bid;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(bid);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.protobuf.analytics.BidEvent.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.analytics.BidEvent.access$1100()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                io.bidmachine.protobuf.analytics.BidEvent r0 = (io.bidmachine.protobuf.analytics.BidEvent) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.analytics.BidEvent$Builder r0 = r0.mergeFrom(r1)
            L_0x001a:
                r0 = r4
                return r0
            L_0x001c:
                r5 = move-exception
                r0 = r7
                r6 = r0
                goto L_0x0031
            L_0x0022:
                r5 = move-exception
                r0 = r5
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                io.bidmachine.protobuf.analytics.BidEvent r0 = (io.bidmachine.protobuf.analytics.BidEvent) r0     // Catch: all -> 0x001c
                r6 = r0
                r0 = r5
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                throw r0     // Catch: all -> 0x0030
            L_0x0030:
                r5 = move-exception
            L_0x0031:
                r0 = r6
                if (r0 == 0) goto L_0x003b
                r0 = r4
                r1 = r6
                io.bidmachine.protobuf.analytics.BidEvent$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.BidEvent.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.analytics.BidEvent$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof BidEvent) {
                return mergeFrom((BidEvent) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(BidEvent bidEvent) {
            if (bidEvent == BidEvent.getDefaultInstance()) {
                return this;
            }
            if (!bidEvent.getTimestamp().isEmpty()) {
                this.timestamp_ = bidEvent.timestamp_;
                onChanged();
            }
            if (!bidEvent.getBidid().isEmpty()) {
                this.bidid_ = bidEvent.bidid_;
                onChanged();
            }
            if (!bidEvent.getSeat().isEmpty()) {
                this.seat_ = bidEvent.seat_;
                onChanged();
            }
            if (bidEvent.hasAuctionContext()) {
                mergeAuctionContext(bidEvent.getAuctionContext());
            }
            if (bidEvent.hasBid()) {
                mergeBid(bidEvent.getBid());
            }
            if (bidEvent.hasAd()) {
                mergeAd(bidEvent.getAd());
            }
            mergeUnknownFields(bidEvent.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder setAd(Ad.Builder builder) {
            SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> singleFieldBuilderV3 = this.adBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.ad_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setAd(Ad ad) {
            SingleFieldBuilderV3<Ad, Ad.Builder, AdOrBuilder> singleFieldBuilderV3 = this.adBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(ad);
                this.ad_ = ad;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(ad);
            }
            return this;
        }

        public final Builder setAuctionContext(AuctionContext.Builder builder) {
            SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> singleFieldBuilderV3 = this.auctionContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.auctionContext_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setAuctionContext(AuctionContext auctionContext) {
            SingleFieldBuilderV3<AuctionContext, AuctionContext.Builder, AuctionContextOrBuilder> singleFieldBuilderV3 = this.auctionContextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(auctionContext);
                this.auctionContext_ = auctionContext;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(auctionContext);
            }
            return this;
        }

        public final Builder setBid(Response.Seatbid.Bid.Builder builder) {
            SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> singleFieldBuilderV3 = this.bidBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.bid_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setBid(Response.Seatbid.Bid bid) {
            SingleFieldBuilderV3<Response.Seatbid.Bid, Response.Seatbid.Bid.Builder, Response.Seatbid.BidOrBuilder> singleFieldBuilderV3 = this.bidBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(bid);
                this.bid_ = bid;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(bid);
            }
            return this;
        }

        public final Builder setBidid(String str) {
            Objects.requireNonNull(str);
            this.bidid_ = str;
            onChanged();
            return this;
        }

        public final Builder setBididBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            BidEvent.checkByteStringIsUtf8(byteString);
            this.bidid_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSeat(String str) {
            Objects.requireNonNull(str);
            this.seat_ = str;
            onChanged();
            return this;
        }

        public final Builder setSeatBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            BidEvent.checkByteStringIsUtf8(byteString);
            this.seat_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setTimestamp(String str) {
            Objects.requireNonNull(str);
            this.timestamp_ = str;
            onChanged();
            return this;
        }

        public final Builder setTimestampBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            BidEvent.checkByteStringIsUtf8(byteString);
            this.timestamp_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }
    }

    private BidEvent() {
        this.memoizedIsInitialized = (byte) (-1);
        this.timestamp_ = "";
        this.bidid_ = "";
        this.seat_ = "";
    }

    private BidEvent(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 10) {
                            this.timestamp_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            this.bidid_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag != 26) {
                            Response.Seatbid.Bid.Builder builder = null;
                            AuctionContext.Builder builder2 = null;
                            Ad.Builder builder3 = null;
                            if (readTag == 34) {
                                AuctionContext auctionContext = this.auctionContext_;
                                builder2 = auctionContext != null ? auctionContext.toBuilder() : builder2;
                                AuctionContext auctionContext2 = (AuctionContext) codedInputStream.readMessage(AuctionContext.parser(), extensionRegistryLite);
                                this.auctionContext_ = auctionContext2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(auctionContext2);
                                    this.auctionContext_ = builder2.buildPartial();
                                }
                            } else if (readTag == 42) {
                                Response.Seatbid.Bid bid = this.bid_;
                                builder = bid != null ? bid.toBuilder() : builder;
                                Response.Seatbid.Bid bid2 = (Response.Seatbid.Bid) codedInputStream.readMessage(Response.Seatbid.Bid.parser(), extensionRegistryLite);
                                this.bid_ = bid2;
                                if (builder != null) {
                                    builder.mergeFrom(bid2);
                                    this.bid_ = builder.buildPartial();
                                }
                            } else if (readTag == 50) {
                                Ad ad = this.ad_;
                                builder3 = ad != null ? ad.toBuilder() : builder3;
                                Ad ad2 = (Ad) codedInputStream.readMessage(Ad.parser(), extensionRegistryLite);
                                this.ad_ = ad2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(ad2);
                                    this.ad_ = builder3.buildPartial();
                                }
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        } else {
                            this.seat_ = codedInputStream.readStringRequireUtf8();
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } finally {
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private BidEvent(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static BidEvent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(BidEvent bidEvent) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(bidEvent);
    }

    public static BidEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static BidEvent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static BidEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static BidEvent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static BidEvent parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static BidEvent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static BidEvent parseFrom(InputStream inputStream) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static BidEvent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (BidEvent) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static BidEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static BidEvent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static BidEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static BidEvent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<BidEvent> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BidEvent)) {
            return super.equals(obj);
        }
        BidEvent bidEvent = (BidEvent) obj;
        if (!getTimestamp().equals(bidEvent.getTimestamp()) || !getBidid().equals(bidEvent.getBidid()) || !getSeat().equals(bidEvent.getSeat()) || hasAuctionContext() != bidEvent.hasAuctionContext()) {
            return false;
        }
        if ((hasAuctionContext() && !getAuctionContext().equals(bidEvent.getAuctionContext())) || hasBid() != bidEvent.hasBid()) {
            return false;
        }
        if ((!hasBid() || getBid().equals(bidEvent.getBid())) && hasAd() == bidEvent.hasAd()) {
            return (!hasAd() || getAd().equals(bidEvent.getAd())) && this.unknownFields.equals(bidEvent.unknownFields);
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final Ad getAd() {
        Ad ad = this.ad_;
        Ad ad2 = ad;
        if (ad == null) {
            ad2 = Ad.getDefaultInstance();
        }
        return ad2;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final AdOrBuilder getAdOrBuilder() {
        return getAd();
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final AuctionContext getAuctionContext() {
        AuctionContext auctionContext = this.auctionContext_;
        AuctionContext auctionContext2 = auctionContext;
        if (auctionContext == null) {
            auctionContext2 = AuctionContext.getDefaultInstance();
        }
        return auctionContext2;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final AuctionContextOrBuilder getAuctionContextOrBuilder() {
        return getAuctionContext();
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final Response.Seatbid.Bid getBid() {
        Response.Seatbid.Bid bid = this.bid_;
        Response.Seatbid.Bid bid2 = bid;
        if (bid == null) {
            bid2 = Response.Seatbid.Bid.getDefaultInstance();
        }
        return bid2;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final Response.Seatbid.BidOrBuilder getBidOrBuilder() {
        return getBid();
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final String getBidid() {
        Object obj = this.bidid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bidid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final ByteString getBididBytes() {
        Object obj = this.bidid_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.bidid_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final BidEvent getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<BidEvent> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final String getSeat() {
        Object obj = this.seat_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.seat_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final ByteString getSeatBytes() {
        Object obj = this.seat_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.seat_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (!getTimestampBytes().isEmpty()) {
            i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.timestamp_);
        }
        int i3 = i2;
        if (!getBididBytes().isEmpty()) {
            i3 = i2 + GeneratedMessageV3.computeStringSize(2, this.bidid_);
        }
        int i4 = i3;
        if (!getSeatBytes().isEmpty()) {
            i4 = i3 + GeneratedMessageV3.computeStringSize(3, this.seat_);
        }
        int i5 = i4;
        if (this.auctionContext_ != null) {
            i5 = i4 + CodedOutputStream.computeMessageSize(4, getAuctionContext());
        }
        int i6 = i5;
        if (this.bid_ != null) {
            i6 = i5 + CodedOutputStream.computeMessageSize(5, getBid());
        }
        int i7 = i6;
        if (this.ad_ != null) {
            i7 = i6 + CodedOutputStream.computeMessageSize(6, getAd());
        }
        int serializedSize = i7 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final String getTimestamp() {
        Object obj = this.timestamp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.timestamp_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final ByteString getTimestampBytes() {
        Object obj = this.timestamp_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.timestamp_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final boolean hasAd() {
        return this.ad_ != null;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final boolean hasAuctionContext() {
        return this.auctionContext_ != null;
    }

    @Override // io.bidmachine.protobuf.analytics.BidEventOrBuilder
    public final boolean hasBid() {
        return this.bid_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getTimestamp().hashCode()) * 37) + 2) * 53) + getBidid().hashCode()) * 37) + 3) * 53) + getSeat().hashCode();
        int i = hashCode;
        if (hasAuctionContext()) {
            i = (((hashCode * 37) + 4) * 53) + getAuctionContext().hashCode();
        }
        int i2 = i;
        if (hasBid()) {
            i2 = (((i * 37) + 5) * 53) + getBid().hashCode();
        }
        int i3 = i2;
        if (hasAd()) {
            i3 = (((i2 * 37) + 6) * 53) + getAd().hashCode();
        }
        int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_BidEvent_fieldAccessorTable.ensureFieldAccessorsInitialized(BidEvent.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder newBuilderForType() {
        return newBuilder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new BidEvent();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getTimestampBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.timestamp_);
        }
        if (!getBididBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.bidid_);
        }
        if (!getSeatBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.seat_);
        }
        if (this.auctionContext_ != null) {
            codedOutputStream.writeMessage(4, getAuctionContext());
        }
        if (this.bid_ != null) {
            codedOutputStream.writeMessage(5, getBid());
        }
        if (this.ad_ != null) {
            codedOutputStream.writeMessage(6, getAd());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
