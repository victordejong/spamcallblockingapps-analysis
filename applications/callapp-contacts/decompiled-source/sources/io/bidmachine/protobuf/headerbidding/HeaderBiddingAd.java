package io.bidmachine.protobuf.headerbidding;

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
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/headerbidding/HeaderBiddingAd.class */
public final class HeaderBiddingAd extends GeneratedMessageV3 implements HeaderBiddingAdOrBuilder {
    public static final int BIDDER_FIELD_NUMBER = 1;
    public static final int CLIENT_PARAMS_FIELD_NUMBER = 2;
    private static final HeaderBiddingAd DEFAULT_INSTANCE = new HeaderBiddingAd();
    private static final Parser<HeaderBiddingAd> PARSER = new AbstractParser<HeaderBiddingAd>() { // from class: io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.1
        @Override // com.explorestack.protobuf.Parser
        public final HeaderBiddingAd parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new HeaderBiddingAd(codedInputStream, extensionRegistryLite);
        }
    };
    public static final int SERVER_PARAMS_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private volatile Object bidder_;
    private MapField<String, String> clientParams_;
    private byte memoizedIsInitialized;
    private MapField<String, String> serverParams_;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements HeaderBiddingAdOrBuilder {
        private Object bidder_;
        private int bitField0_;
        private MapField<String, String> clientParams_;
        private MapField<String, String> serverParams_;

        private Builder() {
            this.bidder_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.bidder_ = "";
            maybeForceBuilderInitialization();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor;
        }

        private MapField<String, String> internalGetClientParams() {
            MapField<String, String> mapField = this.clientParams_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(ClientParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        private MapField<String, String> internalGetMutableClientParams() {
            onChanged();
            if (this.clientParams_ == null) {
                this.clientParams_ = MapField.newMapField(ClientParamsDefaultEntryHolder.defaultEntry);
            }
            if (!this.clientParams_.isMutable()) {
                this.clientParams_ = this.clientParams_.copy();
            }
            return this.clientParams_;
        }

        private MapField<String, String> internalGetMutableServerParams() {
            onChanged();
            if (this.serverParams_ == null) {
                this.serverParams_ = MapField.newMapField(ServerParamsDefaultEntryHolder.defaultEntry);
            }
            if (!this.serverParams_.isMutable()) {
                this.serverParams_ = this.serverParams_.copy();
            }
            return this.serverParams_;
        }

        private MapField<String, String> internalGetServerParams() {
            MapField<String, String> mapField = this.serverParams_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(ServerParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = HeaderBiddingAd.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final HeaderBiddingAd build() {
            HeaderBiddingAd buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final HeaderBiddingAd buildPartial() {
            HeaderBiddingAd headerBiddingAd = new HeaderBiddingAd(this);
            headerBiddingAd.bidder_ = this.bidder_;
            headerBiddingAd.clientParams_ = internalGetClientParams();
            headerBiddingAd.clientParams_.makeImmutable();
            headerBiddingAd.serverParams_ = internalGetServerParams();
            headerBiddingAd.serverParams_.makeImmutable();
            onBuilt();
            return headerBiddingAd;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.bidder_ = "";
            internalGetMutableClientParams().clear();
            internalGetMutableServerParams().clear();
            return this;
        }

        public final Builder clearBidder() {
            this.bidder_ = HeaderBiddingAd.getDefaultInstance().getBidder();
            onChanged();
            return this;
        }

        public final Builder clearClientParams() {
            internalGetMutableClientParams().getMutableMap().clear();
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

        public final Builder clearServerParams() {
            internalGetMutableServerParams().getMutableMap().clear();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final boolean containsClientParams(String str) {
            Objects.requireNonNull(str);
            return internalGetClientParams().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final boolean containsServerParams(String str) {
            Objects.requireNonNull(str);
            return internalGetServerParams().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final String getBidder() {
            Object obj = this.bidder_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bidder_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final ByteString getBidderBytes() {
            Object obj = this.bidder_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bidder_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        @Deprecated
        public final Map<String, String> getClientParams() {
            return getClientParamsMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final int getClientParamsCount() {
            return internalGetClientParams().getMap().size();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final Map<String, String> getClientParamsMap() {
            return internalGetClientParams().getMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final String getClientParamsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetClientParams().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final String getClientParamsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetClientParams().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final HeaderBiddingAd getDefaultInstanceForType() {
            return HeaderBiddingAd.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor;
        }

        @Deprecated
        public final Map<String, String> getMutableClientParams() {
            return internalGetMutableClientParams().getMutableMap();
        }

        @Deprecated
        public final Map<String, String> getMutableServerParams() {
            return internalGetMutableServerParams().getMutableMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        @Deprecated
        public final Map<String, String> getServerParams() {
            return getServerParamsMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final int getServerParamsCount() {
            return internalGetServerParams().getMap().size();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final Map<String, String> getServerParamsMap() {
            return internalGetServerParams().getMap();
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final String getServerParamsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetServerParams().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
        public final String getServerParamsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetServerParams().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable.ensureFieldAccessorsInitialized(HeaderBiddingAd.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMapField(int i) {
            if (i == 2) {
                return internalGetClientParams();
            }
            if (i == 3) {
                return internalGetServerParams();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMutableMapField(int i) {
            if (i == 2) {
                return internalGetMutableClientParams();
            }
            if (i == 3) {
                return internalGetMutableServerParams();
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
        public final io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.access$1000()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                io.bidmachine.protobuf.headerbidding.HeaderBiddingAd r0 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$Builder r0 = r0.mergeFrom(r1)
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
                io.bidmachine.protobuf.headerbidding.HeaderBiddingAd r0 = (io.bidmachine.protobuf.headerbidding.HeaderBiddingAd) r0     // Catch: all -> 0x001c
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
                io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.headerbidding.HeaderBiddingAd.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.headerbidding.HeaderBiddingAd$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof HeaderBiddingAd) {
                return mergeFrom((HeaderBiddingAd) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(HeaderBiddingAd headerBiddingAd) {
            if (headerBiddingAd == HeaderBiddingAd.getDefaultInstance()) {
                return this;
            }
            if (!headerBiddingAd.getBidder().isEmpty()) {
                this.bidder_ = headerBiddingAd.bidder_;
                onChanged();
            }
            internalGetMutableClientParams().mergeFrom(headerBiddingAd.internalGetClientParams());
            internalGetMutableServerParams().mergeFrom(headerBiddingAd.internalGetServerParams());
            mergeUnknownFields(headerBiddingAd.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder putAllClientParams(Map<String, String> map) {
            internalGetMutableClientParams().getMutableMap().putAll(map);
            return this;
        }

        public final Builder putAllServerParams(Map<String, String> map) {
            internalGetMutableServerParams().getMutableMap().putAll(map);
            return this;
        }

        public final Builder putClientParams(String str, String str2) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            internalGetMutableClientParams().getMutableMap().put(str, str2);
            return this;
        }

        public final Builder putServerParams(String str, String str2) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            internalGetMutableServerParams().getMutableMap().put(str, str2);
            return this;
        }

        public final Builder removeClientParams(String str) {
            Objects.requireNonNull(str);
            internalGetMutableClientParams().getMutableMap().remove(str);
            return this;
        }

        public final Builder removeServerParams(String str) {
            Objects.requireNonNull(str);
            internalGetMutableServerParams().getMutableMap().remove(str);
            return this;
        }

        public final Builder setBidder(String str) {
            Objects.requireNonNull(str);
            this.bidder_ = str;
            onChanged();
            return this;
        }

        public final Builder setBidderBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            HeaderBiddingAd.checkByteStringIsUtf8(byteString);
            this.bidder_ = byteString;
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

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder.class */
    public static final class ClientParamsDefaultEntryHolder {
        static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

        private ClientParamsDefaultEntryHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder.class */
    public static final class ServerParamsDefaultEntryHolder {
        static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

        private ServerParamsDefaultEntryHolder() {
        }
    }

    private HeaderBiddingAd() {
        this.memoizedIsInitialized = (byte) (-1);
        this.bidder_ = "";
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v23, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    private HeaderBiddingAd(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.bidder_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            z2 = z2;
                            if (!z2 || !true) {
                                this.clientParams_ = MapField.newMapField(ClientParamsDefaultEntryHolder.defaultEntry);
                                z2 |= true;
                            }
                            MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(ClientParamsDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                            this.clientParams_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                        } else if (readTag == 26) {
                            z2 = z2;
                            if (!z2 || !true) {
                                this.serverParams_ = MapField.newMapField(ServerParamsDefaultEntryHolder.defaultEntry);
                                z2 |= true;
                            }
                            MapEntry mapEntry2 = (MapEntry) codedInputStream.readMessage(ServerParamsDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                            this.serverParams_.getMutableMap().put(mapEntry2.getKey(), mapEntry2.getValue());
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

    private HeaderBiddingAd(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static HeaderBiddingAd getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetClientParams() {
        MapField<String, String> mapField = this.clientParams_;
        MapField<String, String> mapField2 = mapField;
        if (mapField == null) {
            mapField2 = MapField.emptyMapField(ClientParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetServerParams() {
        MapField<String, String> mapField = this.serverParams_;
        MapField<String, String> mapField2 = mapField;
        if (mapField == null) {
            mapField2 = MapField.emptyMapField(ServerParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField2;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(HeaderBiddingAd headerBiddingAd) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(headerBiddingAd);
    }

    public static HeaderBiddingAd parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static HeaderBiddingAd parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static HeaderBiddingAd parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static HeaderBiddingAd parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static HeaderBiddingAd parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static HeaderBiddingAd parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static HeaderBiddingAd parseFrom(InputStream inputStream) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static HeaderBiddingAd parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (HeaderBiddingAd) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static HeaderBiddingAd parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static HeaderBiddingAd parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static HeaderBiddingAd parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static HeaderBiddingAd parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<HeaderBiddingAd> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final boolean containsClientParams(String str) {
        Objects.requireNonNull(str);
        return internalGetClientParams().getMap().containsKey(str);
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final boolean containsServerParams(String str) {
        Objects.requireNonNull(str);
        return internalGetServerParams().getMap().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof HeaderBiddingAd)) {
            return super.equals(obj);
        }
        HeaderBiddingAd headerBiddingAd = (HeaderBiddingAd) obj;
        return getBidder().equals(headerBiddingAd.getBidder()) && internalGetClientParams().equals(headerBiddingAd.internalGetClientParams()) && internalGetServerParams().equals(headerBiddingAd.internalGetServerParams()) && this.unknownFields.equals(headerBiddingAd.unknownFields);
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final String getBidder() {
        Object obj = this.bidder_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bidder_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final ByteString getBidderBytes() {
        Object obj = this.bidder_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.bidder_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    @Deprecated
    public final Map<String, String> getClientParams() {
        return getClientParamsMap();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final int getClientParamsCount() {
        return internalGetClientParams().getMap().size();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final Map<String, String> getClientParamsMap() {
        return internalGetClientParams().getMap();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final String getClientParamsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetClientParams().getMap();
        return map.containsKey(str) ? map.get(str) : str2;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final String getClientParamsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetClientParams().getMap();
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final HeaderBiddingAd getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<HeaderBiddingAd> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (!getBidderBytes().isEmpty()) {
            i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.bidder_);
        }
        for (Map.Entry<String, String> entry : internalGetClientParams().getMap().entrySet()) {
            i2 += CodedOutputStream.computeMessageSize(2, ClientParamsDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        for (Map.Entry<String, String> entry2 : internalGetServerParams().getMap().entrySet()) {
            i2 += CodedOutputStream.computeMessageSize(3, ServerParamsDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry2.getKey()).setValue(entry2.getValue()).build());
        }
        int serializedSize = i2 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    @Deprecated
    public final Map<String, String> getServerParams() {
        return getServerParamsMap();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final int getServerParamsCount() {
        return internalGetServerParams().getMap().size();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final Map<String, String> getServerParamsMap() {
        return internalGetServerParams().getMap();
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final String getServerParamsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetServerParams().getMap();
        return map.containsKey(str) ? map.get(str) : str2;
    }

    @Override // io.bidmachine.protobuf.headerbidding.HeaderBiddingAdOrBuilder
    public final String getServerParamsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetServerParams().getMap();
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new IllegalArgumentException();
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
        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getBidder().hashCode();
        int i = hashCode;
        if (!internalGetClientParams().getMap().isEmpty()) {
            i = (((hashCode * 37) + 2) * 53) + internalGetClientParams().hashCode();
        }
        int i2 = i;
        if (!internalGetServerParams().getMap().isEmpty()) {
            i2 = (((i * 37) + 3) * 53) + internalGetServerParams().hashCode();
        }
        int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return HeaderBiddingProto.internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable.ensureFieldAccessorsInitialized(HeaderBiddingAd.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final MapField internalGetMapField(int i) {
        if (i == 2) {
            return internalGetClientParams();
        }
        if (i == 3) {
            return internalGetServerParams();
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
        return new HeaderBiddingAd();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getBidderBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.bidder_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetClientParams(), ClientParamsDefaultEntryHolder.defaultEntry, 2);
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetServerParams(), ServerParamsDefaultEntryHolder.defaultEntry, 3);
        this.unknownFields.writeTo(codedOutputStream);
    }
}
