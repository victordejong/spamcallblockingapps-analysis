package io.bidmachine.protobuf.analytics;

import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.ContextOrBuilder;
import com.explorestack.protobuf.adcom.Placement;
import com.explorestack.protobuf.adcom.PlacementOrBuilder;
import com.explorestack.protobuf.openrtb.Request;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/AuctionContext.class */
public final class AuctionContext extends GeneratedMessageV3 implements AuctionContextOrBuilder {
    public static final int AT_FIELD_NUMBER = 4;
    public static final int CONTEXT_FIELD_NUMBER = 8;
    public static final int ID_FIELD_NUMBER = 2;
    public static final int ITEM_FIELD_NUMBER = 6;
    public static final int PLACEMENT_FIELD_NUMBER = 7;
    public static final int PLACEMENT_TAG_FIELD_NUMBER = 5;
    public static final int TEST_FIELD_NUMBER = 3;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private int at_;
    private Context context_;
    private volatile Object id_;
    private Request.Item item_;
    private byte memoizedIsInitialized;
    private int placementTag_;
    private Placement placement_;
    private boolean test_;
    private volatile Object timestamp_;
    private static final AuctionContext DEFAULT_INSTANCE = new AuctionContext();
    private static final Parser<AuctionContext> PARSER = new AbstractParser<AuctionContext>() { // from class: io.bidmachine.protobuf.analytics.AuctionContext.1
        @Override // com.explorestack.protobuf.Parser
        public final AuctionContext parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new AuctionContext(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/analytics/AuctionContext$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AuctionContextOrBuilder {
        private int at_;
        private SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> contextBuilder_;
        private Context context_;
        private Object id_;
        private SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> itemBuilder_;
        private Request.Item item_;
        private SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> placementBuilder_;
        private int placementTag_;
        private Placement placement_;
        private boolean test_;
        private Object timestamp_;

        private Builder() {
            this.timestamp_ = "";
            this.id_ = "";
            this.placementTag_ = 0;
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.timestamp_ = "";
            this.id_ = "";
            this.placementTag_ = 0;
            maybeForceBuilderInitialization();
        }

        private SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new SingleFieldBuilderV3<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
        }

        private SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> getItemFieldBuilder() {
            if (this.itemBuilder_ == null) {
                this.itemBuilder_ = new SingleFieldBuilderV3<>(getItem(), getParentForChildren(), isClean());
                this.item_ = null;
            }
            return this.itemBuilder_;
        }

        private SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> getPlacementFieldBuilder() {
            if (this.placementBuilder_ == null) {
                this.placementBuilder_ = new SingleFieldBuilderV3<>(getPlacement(), getParentForChildren(), isClean());
                this.placement_ = null;
            }
            return this.placementBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = AuctionContext.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final AuctionContext build() {
            AuctionContext buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final AuctionContext buildPartial() {
            AuctionContext auctionContext = new AuctionContext(this);
            auctionContext.timestamp_ = this.timestamp_;
            auctionContext.id_ = this.id_;
            auctionContext.test_ = this.test_;
            auctionContext.at_ = this.at_;
            auctionContext.placementTag_ = this.placementTag_;
            SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> singleFieldBuilderV3 = this.itemBuilder_;
            if (singleFieldBuilderV3 == null) {
                auctionContext.item_ = this.item_;
            } else {
                auctionContext.item_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> singleFieldBuilderV32 = this.placementBuilder_;
            if (singleFieldBuilderV32 == null) {
                auctionContext.placement_ = this.placement_;
            } else {
                auctionContext.placement_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> singleFieldBuilderV33 = this.contextBuilder_;
            if (singleFieldBuilderV33 == null) {
                auctionContext.context_ = this.context_;
            } else {
                auctionContext.context_ = singleFieldBuilderV33.build();
            }
            onBuilt();
            return auctionContext;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.timestamp_ = "";
            this.id_ = "";
            this.test_ = false;
            this.at_ = 0;
            this.placementTag_ = 0;
            if (this.itemBuilder_ == null) {
                this.item_ = null;
            } else {
                this.item_ = null;
                this.itemBuilder_ = null;
            }
            if (this.placementBuilder_ == null) {
                this.placement_ = null;
            } else {
                this.placement_ = null;
                this.placementBuilder_ = null;
            }
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        public final Builder clearAt() {
            this.at_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearContext() {
            if (this.contextBuilder_ == null) {
                this.context_ = null;
                onChanged();
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public final Builder clearId() {
            this.id_ = AuctionContext.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public final Builder clearItem() {
            if (this.itemBuilder_ == null) {
                this.item_ = null;
                onChanged();
            } else {
                this.item_ = null;
                this.itemBuilder_ = null;
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearPlacement() {
            if (this.placementBuilder_ == null) {
                this.placement_ = null;
                onChanged();
            } else {
                this.placement_ = null;
                this.placementBuilder_ = null;
            }
            return this;
        }

        public final Builder clearPlacementTag() {
            this.placementTag_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearTest() {
            this.test_ = false;
            onChanged();
            return this;
        }

        public final Builder clearTimestamp() {
            this.timestamp_ = AuctionContext.getDefaultInstance().getTimestamp();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final int getAt() {
            return this.at_;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final Context getContext() {
            SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Context context = this.context_;
            Context context2 = context;
            if (context == null) {
                context2 = Context.getDefaultInstance();
            }
            return context2;
        }

        public final Context.Builder getContextBuilder() {
            onChanged();
            return getContextFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final ContextOrBuilder getContextOrBuilder() {
            SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Context context = this.context_;
            Context context2 = context;
            if (context == null) {
                context2 = Context.getDefaultInstance();
            }
            return context2;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final AuctionContext getDefaultInstanceForType() {
            return AuctionContext.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final Request.Item getItem() {
            SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> singleFieldBuilderV3 = this.itemBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Request.Item item = this.item_;
            Request.Item item2 = item;
            if (item == null) {
                item2 = Request.Item.getDefaultInstance();
            }
            return item2;
        }

        public final Request.Item.Builder getItemBuilder() {
            onChanged();
            return getItemFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final Request.ItemOrBuilder getItemOrBuilder() {
            SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> singleFieldBuilderV3 = this.itemBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Request.Item item = this.item_;
            Request.Item item2 = item;
            if (item == null) {
                item2 = Request.Item.getDefaultInstance();
            }
            return item2;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final Placement getPlacement() {
            SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> singleFieldBuilderV3 = this.placementBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Placement placement = this.placement_;
            Placement placement2 = placement;
            if (placement == null) {
                placement2 = Placement.getDefaultInstance();
            }
            return placement2;
        }

        public final Placement.Builder getPlacementBuilder() {
            onChanged();
            return getPlacementFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final PlacementOrBuilder getPlacementOrBuilder() {
            SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> singleFieldBuilderV3 = this.placementBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Placement placement = this.placement_;
            Placement placement2 = placement;
            if (placement == null) {
                placement2 = Placement.getDefaultInstance();
            }
            return placement2;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final PlacementTag getPlacementTag() {
            PlacementTag valueOf = PlacementTag.valueOf(this.placementTag_);
            PlacementTag placementTag = valueOf;
            if (valueOf == null) {
                placementTag = PlacementTag.UNRECOGNIZED;
            }
            return placementTag;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final int getPlacementTagValue() {
            return this.placementTag_;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final boolean getTest() {
            return this.test_;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final String getTimestamp() {
            Object obj = this.timestamp_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.timestamp_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final ByteString getTimestampBytes() {
            Object obj = this.timestamp_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.timestamp_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final boolean hasContext() {
            return (this.contextBuilder_ == null && this.context_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final boolean hasItem() {
            return (this.itemBuilder_ == null && this.item_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
        public final boolean hasPlacement() {
            return (this.placementBuilder_ == null && this.placement_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable.ensureFieldAccessorsInitialized(AuctionContext.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeContext(Context context) {
            SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Context context2 = this.context_;
                if (context2 != null) {
                    this.context_ = Context.newBuilder(context2).mergeFrom(context).buildPartial();
                } else {
                    this.context_ = context;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(context);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.protobuf.analytics.AuctionContext.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.analytics.AuctionContext.access$1300()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                io.bidmachine.protobuf.analytics.AuctionContext r0 = (io.bidmachine.protobuf.analytics.AuctionContext) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.analytics.AuctionContext$Builder r0 = r0.mergeFrom(r1)
            L_0x001a:
                r0 = r4
                return r0
            L_0x001c:
                r6 = move-exception
                r0 = r7
                r5 = r0
                goto L_0x0031
            L_0x0022:
                r6 = move-exception
                r0 = r6
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                io.bidmachine.protobuf.analytics.AuctionContext r0 = (io.bidmachine.protobuf.analytics.AuctionContext) r0     // Catch: all -> 0x001c
                r5 = r0
                r0 = r6
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                throw r0     // Catch: all -> 0x0030
            L_0x0030:
                r6 = move-exception
            L_0x0031:
                r0 = r5
                if (r0 == 0) goto L_0x003b
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.analytics.AuctionContext$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.analytics.AuctionContext.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.analytics.AuctionContext$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof AuctionContext) {
                return mergeFrom((AuctionContext) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(AuctionContext auctionContext) {
            if (auctionContext == AuctionContext.getDefaultInstance()) {
                return this;
            }
            if (!auctionContext.getTimestamp().isEmpty()) {
                this.timestamp_ = auctionContext.timestamp_;
                onChanged();
            }
            if (!auctionContext.getId().isEmpty()) {
                this.id_ = auctionContext.id_;
                onChanged();
            }
            if (auctionContext.getTest()) {
                setTest(auctionContext.getTest());
            }
            if (auctionContext.getAt() != 0) {
                setAt(auctionContext.getAt());
            }
            if (auctionContext.placementTag_ != 0) {
                setPlacementTagValue(auctionContext.getPlacementTagValue());
            }
            if (auctionContext.hasItem()) {
                mergeItem(auctionContext.getItem());
            }
            if (auctionContext.hasPlacement()) {
                mergePlacement(auctionContext.getPlacement());
            }
            if (auctionContext.hasContext()) {
                mergeContext(auctionContext.getContext());
            }
            mergeUnknownFields(auctionContext.unknownFields);
            onChanged();
            return this;
        }

        public final Builder mergeItem(Request.Item item) {
            SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> singleFieldBuilderV3 = this.itemBuilder_;
            if (singleFieldBuilderV3 == null) {
                Request.Item item2 = this.item_;
                if (item2 != null) {
                    this.item_ = Request.Item.newBuilder(item2).mergeFrom(item).buildPartial();
                } else {
                    this.item_ = item;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(item);
            }
            return this;
        }

        public final Builder mergePlacement(Placement placement) {
            SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> singleFieldBuilderV3 = this.placementBuilder_;
            if (singleFieldBuilderV3 == null) {
                Placement placement2 = this.placement_;
                if (placement2 != null) {
                    this.placement_ = Placement.newBuilder(placement2).mergeFrom(placement).buildPartial();
                } else {
                    this.placement_ = placement;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(placement);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder setAt(int i) {
            this.at_ = i;
            onChanged();
            return this;
        }

        public final Builder setContext(Context.Builder builder) {
            SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.context_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setContext(Context context) {
            SingleFieldBuilderV3<Context, Context.Builder, ContextOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(context);
                this.context_ = context;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(context);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public final Builder setId(String str) {
            Objects.requireNonNull(str);
            this.id_ = str;
            onChanged();
            return this;
        }

        public final Builder setIdBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AuctionContext.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setItem(Request.Item.Builder builder) {
            SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> singleFieldBuilderV3 = this.itemBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.item_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setItem(Request.Item item) {
            SingleFieldBuilderV3<Request.Item, Request.Item.Builder, Request.ItemOrBuilder> singleFieldBuilderV3 = this.itemBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(item);
                this.item_ = item;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(item);
            }
            return this;
        }

        public final Builder setPlacement(Placement.Builder builder) {
            SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> singleFieldBuilderV3 = this.placementBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.placement_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setPlacement(Placement placement) {
            SingleFieldBuilderV3<Placement, Placement.Builder, PlacementOrBuilder> singleFieldBuilderV3 = this.placementBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(placement);
                this.placement_ = placement;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(placement);
            }
            return this;
        }

        public final Builder setPlacementTag(PlacementTag placementTag) {
            Objects.requireNonNull(placementTag);
            this.placementTag_ = placementTag.getNumber();
            onChanged();
            return this;
        }

        public final Builder setPlacementTagValue(int i) {
            this.placementTag_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setTest(boolean z) {
            this.test_ = z;
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
            AuctionContext.checkByteStringIsUtf8(byteString);
            this.timestamp_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }
    }

    private AuctionContext() {
        this.memoizedIsInitialized = (byte) (-1);
        this.timestamp_ = "";
        this.id_ = "";
        this.placementTag_ = 0;
    }

    private AuctionContext(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.id_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 24) {
                            this.test_ = codedInputStream.readBool();
                        } else if (readTag == 32) {
                            this.at_ = codedInputStream.readUInt32();
                        } else if (readTag != 40) {
                            Placement.Builder builder = null;
                            Request.Item.Builder builder2 = null;
                            Context.Builder builder3 = null;
                            if (readTag == 50) {
                                Request.Item item = this.item_;
                                builder2 = item != null ? item.toBuilder() : builder2;
                                Request.Item item2 = (Request.Item) codedInputStream.readMessage(Request.Item.parser(), extensionRegistryLite);
                                this.item_ = item2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(item2);
                                    this.item_ = builder2.buildPartial();
                                }
                            } else if (readTag == 58) {
                                Placement placement = this.placement_;
                                builder = placement != null ? placement.toBuilder() : builder;
                                Placement placement2 = (Placement) codedInputStream.readMessage(Placement.parser(), extensionRegistryLite);
                                this.placement_ = placement2;
                                if (builder != null) {
                                    builder.mergeFrom(placement2);
                                    this.placement_ = builder.buildPartial();
                                }
                            } else if (readTag == 66) {
                                Context context = this.context_;
                                builder3 = context != null ? context.toBuilder() : builder3;
                                Context context2 = (Context) codedInputStream.readMessage(Context.parser(), extensionRegistryLite);
                                this.context_ = context2;
                                if (builder3 != null) {
                                    builder3.mergeFrom(context2);
                                    this.context_ = builder3.buildPartial();
                                }
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        } else {
                            this.placementTag_ = codedInputStream.readEnum();
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

    private AuctionContext(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static AuctionContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(AuctionContext auctionContext) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(auctionContext);
    }

    public static AuctionContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AuctionContext parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AuctionContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static AuctionContext parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static AuctionContext parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static AuctionContext parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static AuctionContext parseFrom(InputStream inputStream) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AuctionContext parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AuctionContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AuctionContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static AuctionContext parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static AuctionContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static AuctionContext parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<AuctionContext> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuctionContext)) {
            return super.equals(obj);
        }
        AuctionContext auctionContext = (AuctionContext) obj;
        if (!getTimestamp().equals(auctionContext.getTimestamp()) || !getId().equals(auctionContext.getId()) || getTest() != auctionContext.getTest() || getAt() != auctionContext.getAt() || this.placementTag_ != auctionContext.placementTag_ || hasItem() != auctionContext.hasItem()) {
            return false;
        }
        if ((hasItem() && !getItem().equals(auctionContext.getItem())) || hasPlacement() != auctionContext.hasPlacement()) {
            return false;
        }
        if ((!hasPlacement() || getPlacement().equals(auctionContext.getPlacement())) && hasContext() == auctionContext.hasContext()) {
            return (!hasContext() || getContext().equals(auctionContext.getContext())) && this.unknownFields.equals(auctionContext.unknownFields);
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final int getAt() {
        return this.at_;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final Context getContext() {
        Context context = this.context_;
        Context context2 = context;
        if (context == null) {
            context2 = Context.getDefaultInstance();
        }
        return context2;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final ContextOrBuilder getContextOrBuilder() {
        return getContext();
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final AuctionContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final ByteString getIdBytes() {
        Object obj = this.id_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.id_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final Request.Item getItem() {
        Request.Item item = this.item_;
        Request.Item item2 = item;
        if (item == null) {
            item2 = Request.Item.getDefaultInstance();
        }
        return item2;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final Request.ItemOrBuilder getItemOrBuilder() {
        return getItem();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<AuctionContext> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final Placement getPlacement() {
        Placement placement = this.placement_;
        Placement placement2 = placement;
        if (placement == null) {
            placement2 = Placement.getDefaultInstance();
        }
        return placement2;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final PlacementOrBuilder getPlacementOrBuilder() {
        return getPlacement();
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final PlacementTag getPlacementTag() {
        PlacementTag valueOf = PlacementTag.valueOf(this.placementTag_);
        PlacementTag placementTag = valueOf;
        if (valueOf == null) {
            placementTag = PlacementTag.UNRECOGNIZED;
        }
        return placementTag;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final int getPlacementTagValue() {
        return this.placementTag_;
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
        if (!getIdBytes().isEmpty()) {
            i3 = i2 + GeneratedMessageV3.computeStringSize(2, this.id_);
        }
        boolean z = this.test_;
        int i4 = i3;
        if (z) {
            i4 = i3 + CodedOutputStream.computeBoolSize(3, z);
        }
        int i5 = this.at_;
        int i6 = i4;
        if (i5 != 0) {
            i6 = i4 + CodedOutputStream.computeUInt32Size(4, i5);
        }
        int i7 = i6;
        if (this.placementTag_ != PlacementTag.PLACEMENT_TAG_INVALID.getNumber()) {
            i7 = i6 + CodedOutputStream.computeEnumSize(5, this.placementTag_);
        }
        int i8 = i7;
        if (this.item_ != null) {
            i8 = i7 + CodedOutputStream.computeMessageSize(6, getItem());
        }
        int i9 = i8;
        if (this.placement_ != null) {
            i9 = i8 + CodedOutputStream.computeMessageSize(7, getPlacement());
        }
        int i10 = i9;
        if (this.context_ != null) {
            i10 = i9 + CodedOutputStream.computeMessageSize(8, getContext());
        }
        int serializedSize = i10 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final boolean getTest() {
        return this.test_;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final String getTimestamp() {
        Object obj = this.timestamp_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.timestamp_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
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

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final boolean hasContext() {
        return this.context_ != null;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final boolean hasItem() {
        return this.item_ != null;
    }

    @Override // io.bidmachine.protobuf.analytics.AuctionContextOrBuilder
    public final boolean hasPlacement() {
        return this.placement_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getTimestamp().hashCode()) * 37) + 2) * 53) + getId().hashCode()) * 37) + 3) * 53) + Internal.hashBoolean(getTest())) * 37) + 4) * 53) + getAt()) * 37) + 5) * 53) + this.placementTag_;
        int i = hashCode;
        if (hasItem()) {
            i = (((hashCode * 37) + 6) * 53) + getItem().hashCode();
        }
        int i2 = i;
        if (hasPlacement()) {
            i2 = (((i * 37) + 7) * 53) + getPlacement().hashCode();
        }
        int i3 = i2;
        if (hasContext()) {
            i3 = (((i2 * 37) + 8) * 53) + getContext().hashCode();
        }
        int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return AnalyticsProto.internal_static_bidmachine_protobuf_analytics_AuctionContext_fieldAccessorTable.ensureFieldAccessorsInitialized(AuctionContext.class, Builder.class);
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
        return new AuctionContext();
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
        if (!getIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.id_);
        }
        boolean z = this.test_;
        if (z) {
            codedOutputStream.writeBool(3, z);
        }
        int i = this.at_;
        if (i != 0) {
            codedOutputStream.writeUInt32(4, i);
        }
        if (this.placementTag_ != PlacementTag.PLACEMENT_TAG_INVALID.getNumber()) {
            codedOutputStream.writeEnum(5, this.placementTag_);
        }
        if (this.item_ != null) {
            codedOutputStream.writeMessage(6, getItem());
        }
        if (this.placement_ != null) {
            codedOutputStream.writeMessage(7, getPlacement());
        }
        if (this.context_ != null) {
            codedOutputStream.writeMessage(8, getContext());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
