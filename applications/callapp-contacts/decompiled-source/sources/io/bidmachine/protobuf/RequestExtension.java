package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapEntry;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/RequestExtension.class */
public final class RequestExtension extends GeneratedMessageV3 implements RequestExtensionOrBuilder {
    public static final int BM_IFV_FIELD_NUMBER = 5;
    public static final int HEADER_BIDDING_TYPE_FIELD_NUMBER = 3;
    public static final int IFV_FIELD_NUMBER = 4;
    public static final int SELLER_DATA_FIELD_NUMBER = 2;
    public static final int SELLER_ID_FIELD_NUMBER = 1;
    public static final int SESSION_ID_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object bmIfv_;
    private int headerBiddingType_;
    private volatile Object ifv_;
    private byte memoizedIsInitialized;
    private MapField<String, String> sellerData_;
    private volatile Object sellerId_;
    private volatile Object sessionId_;
    private static final RequestExtension DEFAULT_INSTANCE = new RequestExtension();
    private static final Parser<RequestExtension> PARSER = new AbstractParser<RequestExtension>() { // from class: io.bidmachine.protobuf.RequestExtension.1
        @Override // com.explorestack.protobuf.Parser
        public final RequestExtension parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new RequestExtension(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/RequestExtension$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RequestExtensionOrBuilder {
        private int bitField0_;
        private Object bmIfv_;
        private int headerBiddingType_;
        private Object ifv_;
        private MapField<String, String> sellerData_;
        private Object sellerId_;
        private Object sessionId_;

        private Builder() {
            this.sellerId_ = "";
            this.headerBiddingType_ = 0;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.sessionId_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.sellerId_ = "";
            this.headerBiddingType_ = 0;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.sessionId_ = "";
            maybeForceBuilderInitialization();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_descriptor;
        }

        private MapField<String, String> internalGetMutableSellerData() {
            onChanged();
            if (this.sellerData_ == null) {
                this.sellerData_ = MapField.newMapField(SellerDataDefaultEntryHolder.defaultEntry);
            }
            if (!this.sellerData_.isMutable()) {
                this.sellerData_ = this.sellerData_.copy();
            }
            return this.sellerData_;
        }

        private MapField<String, String> internalGetSellerData() {
            MapField<String, String> mapField = this.sellerData_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(SellerDataDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = RequestExtension.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final RequestExtension build() {
            RequestExtension buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final RequestExtension buildPartial() {
            RequestExtension requestExtension = new RequestExtension(this);
            requestExtension.sellerId_ = this.sellerId_;
            requestExtension.sellerData_ = internalGetSellerData();
            requestExtension.sellerData_.makeImmutable();
            requestExtension.headerBiddingType_ = this.headerBiddingType_;
            requestExtension.ifv_ = this.ifv_;
            requestExtension.bmIfv_ = this.bmIfv_;
            requestExtension.sessionId_ = this.sessionId_;
            onBuilt();
            return requestExtension;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.sellerId_ = "";
            internalGetMutableSellerData().clear();
            this.headerBiddingType_ = 0;
            this.ifv_ = "";
            this.bmIfv_ = "";
            this.sessionId_ = "";
            return this;
        }

        public final Builder clearBmIfv() {
            this.bmIfv_ = RequestExtension.getDefaultInstance().getBmIfv();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public final Builder clearHeaderBiddingType() {
            this.headerBiddingType_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearIfv() {
            this.ifv_ = RequestExtension.getDefaultInstance().getIfv();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearSellerData() {
            internalGetMutableSellerData().getMutableMap().clear();
            return this;
        }

        public final Builder clearSellerId() {
            this.sellerId_ = RequestExtension.getDefaultInstance().getSellerId();
            onChanged();
            return this;
        }

        public final Builder clearSessionId() {
            this.sessionId_ = RequestExtension.getDefaultInstance().getSessionId();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final boolean containsSellerData(String str) {
            Objects.requireNonNull(str);
            return internalGetSellerData().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final String getBmIfv() {
            Object obj = this.bmIfv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bmIfv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final ByteString getBmIfvBytes() {
            Object obj = this.bmIfv_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bmIfv_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final RequestExtension getDefaultInstanceForType() {
            return RequestExtension.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_descriptor;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final HeaderBiddingType getHeaderBiddingType() {
            HeaderBiddingType valueOf = HeaderBiddingType.valueOf(this.headerBiddingType_);
            HeaderBiddingType headerBiddingType = valueOf;
            if (valueOf == null) {
                headerBiddingType = HeaderBiddingType.UNRECOGNIZED;
            }
            return headerBiddingType;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final int getHeaderBiddingTypeValue() {
            return this.headerBiddingType_;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final String getIfv() {
            Object obj = this.ifv_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ifv_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final ByteString getIfvBytes() {
            Object obj = this.ifv_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ifv_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Deprecated
        public final Map<String, String> getMutableSellerData() {
            return internalGetMutableSellerData().getMutableMap();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        @Deprecated
        public final Map<String, String> getSellerData() {
            return getSellerDataMap();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final int getSellerDataCount() {
            return internalGetSellerData().getMap().size();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final Map<String, String> getSellerDataMap() {
            return internalGetSellerData().getMap();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final String getSellerDataOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetSellerData().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final String getSellerDataOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetSellerData().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final String getSellerId() {
            Object obj = this.sellerId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sellerId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final ByteString getSellerIdBytes() {
            Object obj = this.sellerId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sellerId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final String getSessionId() {
            Object obj = this.sessionId_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sessionId_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
        public final ByteString getSessionIdBytes() {
            Object obj = this.sessionId_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sessionId_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestExtension.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMapField(int i) {
            if (i == 2) {
                return internalGetSellerData();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMutableMapField(int i) {
            if (i == 2) {
                return internalGetMutableSellerData();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.protobuf.RequestExtension.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.RequestExtension.access$1200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                io.bidmachine.protobuf.RequestExtension r0 = (io.bidmachine.protobuf.RequestExtension) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.RequestExtension$Builder r0 = r0.mergeFrom(r1)
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
                io.bidmachine.protobuf.RequestExtension r0 = (io.bidmachine.protobuf.RequestExtension) r0     // Catch: all -> 0x001c
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
                io.bidmachine.protobuf.RequestExtension$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r6
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.RequestExtension.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.RequestExtension$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof RequestExtension) {
                return mergeFrom((RequestExtension) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(RequestExtension requestExtension) {
            if (requestExtension == RequestExtension.getDefaultInstance()) {
                return this;
            }
            if (!requestExtension.getSellerId().isEmpty()) {
                this.sellerId_ = requestExtension.sellerId_;
                onChanged();
            }
            internalGetMutableSellerData().mergeFrom(requestExtension.internalGetSellerData());
            if (requestExtension.headerBiddingType_ != 0) {
                setHeaderBiddingTypeValue(requestExtension.getHeaderBiddingTypeValue());
            }
            if (!requestExtension.getIfv().isEmpty()) {
                this.ifv_ = requestExtension.ifv_;
                onChanged();
            }
            if (!requestExtension.getBmIfv().isEmpty()) {
                this.bmIfv_ = requestExtension.bmIfv_;
                onChanged();
            }
            if (!requestExtension.getSessionId().isEmpty()) {
                this.sessionId_ = requestExtension.sessionId_;
                onChanged();
            }
            mergeUnknownFields(requestExtension.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder putAllSellerData(Map<String, String> map) {
            internalGetMutableSellerData().getMutableMap().putAll(map);
            return this;
        }

        public final Builder putSellerData(String str, String str2) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            internalGetMutableSellerData().getMutableMap().put(str, str2);
            return this;
        }

        public final Builder removeSellerData(String str) {
            Objects.requireNonNull(str);
            internalGetMutableSellerData().getMutableMap().remove(str);
            return this;
        }

        public final Builder setBmIfv(String str) {
            Objects.requireNonNull(str);
            this.bmIfv_ = str;
            onChanged();
            return this;
        }

        public final Builder setBmIfvBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            RequestExtension.checkByteStringIsUtf8(byteString);
            this.bmIfv_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public final Builder setHeaderBiddingType(HeaderBiddingType headerBiddingType) {
            Objects.requireNonNull(headerBiddingType);
            this.headerBiddingType_ = headerBiddingType.getNumber();
            onChanged();
            return this;
        }

        public final Builder setHeaderBiddingTypeValue(int i) {
            this.headerBiddingType_ = i;
            onChanged();
            return this;
        }

        public final Builder setIfv(String str) {
            Objects.requireNonNull(str);
            this.ifv_ = str;
            onChanged();
            return this;
        }

        public final Builder setIfvBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            RequestExtension.checkByteStringIsUtf8(byteString);
            this.ifv_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSellerId(String str) {
            Objects.requireNonNull(str);
            this.sellerId_ = str;
            onChanged();
            return this;
        }

        public final Builder setSellerIdBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            RequestExtension.checkByteStringIsUtf8(byteString);
            this.sellerId_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setSessionId(String str) {
            Objects.requireNonNull(str);
            this.sessionId_ = str;
            onChanged();
            return this;
        }

        public final Builder setSessionIdBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            RequestExtension.checkByteStringIsUtf8(byteString);
            this.sessionId_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder.class */
    public static final class SellerDataDefaultEntryHolder {
        static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_SellerDataEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

        private SellerDataDefaultEntryHolder() {
        }
    }

    private RequestExtension() {
        this.memoizedIsInitialized = (byte) (-1);
        this.sellerId_ = "";
        this.headerBiddingType_ = 0;
        this.ifv_ = "";
        this.bmIfv_ = "";
        this.sessionId_ = "";
    }

    /* JADX WARN: Type inference failed for: r1v26, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    private RequestExtension(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 10) {
                            this.sellerId_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            z2 = z2;
                            if (!z2 || !true) {
                                this.sellerData_ = MapField.newMapField(SellerDataDefaultEntryHolder.defaultEntry);
                                z2 |= true;
                            }
                            MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(SellerDataDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                            this.sellerData_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                        } else if (readTag == 24) {
                            this.headerBiddingType_ = codedInputStream.readEnum();
                        } else if (readTag == 34) {
                            this.ifv_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 42) {
                            this.bmIfv_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 50) {
                            this.sessionId_ = codedInputStream.readStringRequireUtf8();
                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
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

    private RequestExtension(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static RequestExtension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetSellerData() {
        MapField<String, String> mapField = this.sellerData_;
        MapField<String, String> mapField2 = mapField;
        if (mapField == null) {
            mapField2 = MapField.emptyMapField(SellerDataDefaultEntryHolder.defaultEntry);
        }
        return mapField2;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(RequestExtension requestExtension) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(requestExtension);
    }

    public static RequestExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static RequestExtension parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RequestExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static RequestExtension parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static RequestExtension parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static RequestExtension parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static RequestExtension parseFrom(InputStream inputStream) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static RequestExtension parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (RequestExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static RequestExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static RequestExtension parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static RequestExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static RequestExtension parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<RequestExtension> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final boolean containsSellerData(String str) {
        Objects.requireNonNull(str);
        return internalGetSellerData().getMap().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RequestExtension)) {
            return super.equals(obj);
        }
        RequestExtension requestExtension = (RequestExtension) obj;
        return getSellerId().equals(requestExtension.getSellerId()) && internalGetSellerData().equals(requestExtension.internalGetSellerData()) && this.headerBiddingType_ == requestExtension.headerBiddingType_ && getIfv().equals(requestExtension.getIfv()) && getBmIfv().equals(requestExtension.getBmIfv()) && getSessionId().equals(requestExtension.getSessionId()) && this.unknownFields.equals(requestExtension.unknownFields);
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final String getBmIfv() {
        Object obj = this.bmIfv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bmIfv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final ByteString getBmIfvBytes() {
        Object obj = this.bmIfv_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.bmIfv_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final RequestExtension getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final HeaderBiddingType getHeaderBiddingType() {
        HeaderBiddingType valueOf = HeaderBiddingType.valueOf(this.headerBiddingType_);
        HeaderBiddingType headerBiddingType = valueOf;
        if (valueOf == null) {
            headerBiddingType = HeaderBiddingType.UNRECOGNIZED;
        }
        return headerBiddingType;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final int getHeaderBiddingTypeValue() {
        return this.headerBiddingType_;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final String getIfv() {
        Object obj = this.ifv_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ifv_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final ByteString getIfvBytes() {
        Object obj = this.ifv_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.ifv_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<RequestExtension> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    @Deprecated
    public final Map<String, String> getSellerData() {
        return getSellerDataMap();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final int getSellerDataCount() {
        return internalGetSellerData().getMap().size();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final Map<String, String> getSellerDataMap() {
        return internalGetSellerData().getMap();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final String getSellerDataOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetSellerData().getMap();
        return map.containsKey(str) ? map.get(str) : str2;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final String getSellerDataOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetSellerData().getMap();
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final String getSellerId() {
        Object obj = this.sellerId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sellerId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final ByteString getSellerIdBytes() {
        Object obj = this.sellerId_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.sellerId_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (!getSellerIdBytes().isEmpty()) {
            i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.sellerId_);
        }
        for (Map.Entry<String, String> entry : internalGetSellerData().getMap().entrySet()) {
            i2 += CodedOutputStream.computeMessageSize(2, SellerDataDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        int i3 = i2;
        if (this.headerBiddingType_ != HeaderBiddingType.HEADER_BIDDING_TYPE_INVALID.getNumber()) {
            i3 = i2 + CodedOutputStream.computeEnumSize(3, this.headerBiddingType_);
        }
        int i4 = i3;
        if (!getIfvBytes().isEmpty()) {
            i4 = i3 + GeneratedMessageV3.computeStringSize(4, this.ifv_);
        }
        int i5 = i4;
        if (!getBmIfvBytes().isEmpty()) {
            i5 = i4 + GeneratedMessageV3.computeStringSize(5, this.bmIfv_);
        }
        int i6 = i5;
        if (!getSessionIdBytes().isEmpty()) {
            i6 = i5 + GeneratedMessageV3.computeStringSize(6, this.sessionId_);
        }
        int serializedSize = i6 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final String getSessionId() {
        Object obj = this.sessionId_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sessionId_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.RequestExtensionOrBuilder
    public final ByteString getSessionIdBytes() {
        Object obj = this.sessionId_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.sessionId_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getSellerId().hashCode();
        int i = hashCode;
        if (!internalGetSellerData().getMap().isEmpty()) {
            i = (((hashCode * 37) + 2) * 53) + internalGetSellerData().hashCode();
        }
        int hashCode2 = (((((((((((((((((i * 37) + 3) * 53) + this.headerBiddingType_) * 37) + 4) * 53) + getIfv().hashCode()) * 37) + 5) * 53) + getBmIfv().hashCode()) * 37) + 6) * 53) + getSessionId().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(RequestExtension.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final MapField internalGetMapField(int i) {
        if (i == 2) {
            return internalGetSellerData();
        }
        throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
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
        return new RequestExtension();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getSellerIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.sellerId_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetSellerData(), SellerDataDefaultEntryHolder.defaultEntry, 2);
        if (this.headerBiddingType_ != HeaderBiddingType.HEADER_BIDDING_TYPE_INVALID.getNumber()) {
            codedOutputStream.writeEnum(3, this.headerBiddingType_);
        }
        if (!getIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.ifv_);
        }
        if (!getBmIfvBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.bmIfv_);
        }
        if (!getSessionIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.sessionId_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
