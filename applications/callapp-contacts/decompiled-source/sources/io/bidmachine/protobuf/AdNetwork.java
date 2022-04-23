package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessageLite;
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
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork.class */
public final class AdNetwork extends GeneratedMessageV3 implements AdNetworkOrBuilder {
    public static final int AD_UNITS_FIELD_NUMBER = 4;
    public static final int CLASS_NAME_FIELD_NUMBER = 2;
    public static final int CUSTOM_PARAMS_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private List<AdUnit> adUnits_;
    private volatile Object className_;
    private MapField<String, String> customParams_;
    private byte memoizedIsInitialized;
    private volatile Object name_;
    private static final AdNetwork DEFAULT_INSTANCE = new AdNetwork();
    private static final Parser<AdNetwork> PARSER = new AbstractParser<AdNetwork>() { // from class: io.bidmachine.protobuf.AdNetwork.1
        @Override // com.explorestack.protobuf.Parser
        public final AdNetwork parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new AdNetwork(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork$AdUnit.class */
    public static final class AdUnit extends GeneratedMessageV3 implements AdUnitOrBuilder {
        public static final int AD_FORMAT_FIELD_NUMBER = 1;
        public static final int CUSTOM_PARAMS_FIELD_NUMBER = 2;
        private static final AdUnit DEFAULT_INSTANCE = new AdUnit();
        private static final Parser<AdUnit> PARSER = new AbstractParser<AdUnit>() { // from class: io.bidmachine.protobuf.AdNetwork.AdUnit.1
            @Override // com.explorestack.protobuf.Parser
            public final AdUnit parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new AdUnit(codedInputStream, extensionRegistryLite);
            }
        };
        private static final long serialVersionUID = 0;
        private volatile Object adFormat_;
        private MapField<String, String> customParams_;
        private byte memoizedIsInitialized;

        /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork$AdUnit$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdUnitOrBuilder {
            private Object adFormat_;
            private int bitField0_;
            private MapField<String, String> customParams_;

            private Builder() {
                this.adFormat_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.adFormat_ = "";
                maybeForceBuilderInitialization();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;
            }

            private MapField<String, String> internalGetCustomParams() {
                MapField<String, String> mapField = this.customParams_;
                MapField<String, String> mapField2 = mapField;
                if (mapField == null) {
                    mapField2 = MapField.emptyMapField(CustomParamsDefaultEntryHolder.defaultEntry);
                }
                return mapField2;
            }

            private MapField<String, String> internalGetMutableCustomParams() {
                onChanged();
                if (this.customParams_ == null) {
                    this.customParams_ = MapField.newMapField(CustomParamsDefaultEntryHolder.defaultEntry);
                }
                if (!this.customParams_.isMutable()) {
                    this.customParams_ = this.customParams_.copy();
                }
                return this.customParams_;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = AdUnit.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final AdUnit build() {
                AdUnit buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final AdUnit buildPartial() {
                AdUnit adUnit = new AdUnit(this);
                adUnit.adFormat_ = this.adFormat_;
                adUnit.customParams_ = internalGetCustomParams();
                adUnit.customParams_.makeImmutable();
                onBuilt();
                return adUnit;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.adFormat_ = "";
                internalGetMutableCustomParams().clear();
                return this;
            }

            public final Builder clearAdFormat() {
                this.adFormat_ = AdUnit.getDefaultInstance().getAdFormat();
                onChanged();
                return this;
            }

            public final Builder clearCustomParams() {
                internalGetMutableCustomParams().getMutableMap().clear();
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final boolean containsCustomParams(String str) {
                Objects.requireNonNull(str);
                return internalGetCustomParams().getMap().containsKey(str);
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final String getAdFormat() {
                Object obj = this.adFormat_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.adFormat_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final ByteString getAdFormatBytes() {
                Object obj = this.adFormat_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.adFormat_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            @Deprecated
            public final Map<String, String> getCustomParams() {
                return getCustomParamsMap();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final int getCustomParamsCount() {
                return internalGetCustomParams().getMap().size();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final Map<String, String> getCustomParamsMap() {
                return internalGetCustomParams().getMap();
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final String getCustomParamsOrDefault(String str, String str2) {
                Objects.requireNonNull(str);
                Map<String, String> map = internalGetCustomParams().getMap();
                return map.containsKey(str) ? map.get(str) : str2;
            }

            @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
            public final String getCustomParamsOrThrow(String str) {
                Objects.requireNonNull(str);
                Map<String, String> map = internalGetCustomParams().getMap();
                if (map.containsKey(str)) {
                    return map.get(str);
                }
                throw new IllegalArgumentException();
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final AdUnit getDefaultInstanceForType() {
                return AdUnit.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;
            }

            @Deprecated
            public final Map<String, String> getMutableCustomParams() {
                return internalGetMutableCustomParams().getMutableMap();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable.ensureFieldAccessorsInitialized(AdUnit.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final MapField internalGetMapField(int i) {
                if (i == 2) {
                    return internalGetCustomParams();
                }
                throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final MapField internalGetMutableMapField(int i) {
                if (i == 2) {
                    return internalGetMutableCustomParams();
                }
                throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final io.bidmachine.protobuf.AdNetwork.AdUnit.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.AdNetwork.AdUnit.access$800()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                    io.bidmachine.protobuf.AdNetwork$AdUnit r0 = (io.bidmachine.protobuf.AdNetwork.AdUnit) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    io.bidmachine.protobuf.AdNetwork$AdUnit$Builder r0 = r0.mergeFrom(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L_0x0037
                L_0x0024:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                    io.bidmachine.protobuf.AdNetwork$AdUnit r0 = (io.bidmachine.protobuf.AdNetwork.AdUnit) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                    throw r0     // Catch: all -> 0x0032
                L_0x0032:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L_0x0037:
                    r0 = r6
                    if (r0 == 0) goto L_0x0041
                    r0 = r4
                    r1 = r6
                    io.bidmachine.protobuf.AdNetwork$AdUnit$Builder r0 = r0.mergeFrom(r1)
                L_0x0041:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AdNetwork.AdUnit.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.AdNetwork$AdUnit$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof AdUnit) {
                    return mergeFrom((AdUnit) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(AdUnit adUnit) {
                if (adUnit == AdUnit.getDefaultInstance()) {
                    return this;
                }
                if (!adUnit.getAdFormat().isEmpty()) {
                    this.adFormat_ = adUnit.adFormat_;
                    onChanged();
                }
                internalGetMutableCustomParams().mergeFrom(adUnit.internalGetCustomParams());
                mergeUnknownFields(adUnit.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder putAllCustomParams(Map<String, String> map) {
                internalGetMutableCustomParams().getMutableMap().putAll(map);
                return this;
            }

            public final Builder putCustomParams(String str, String str2) {
                Objects.requireNonNull(str);
                Objects.requireNonNull(str2);
                internalGetMutableCustomParams().getMutableMap().put(str, str2);
                return this;
            }

            public final Builder removeCustomParams(String str) {
                Objects.requireNonNull(str);
                internalGetMutableCustomParams().getMutableMap().remove(str);
                return this;
            }

            public final Builder setAdFormat(String str) {
                Objects.requireNonNull(str);
                this.adFormat_ = str;
                onChanged();
                return this;
            }

            public final Builder setAdFormatBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                AdUnit.checkByteStringIsUtf8(byteString);
                this.adFormat_ = byteString;
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
        /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder.class */
        public static final class CustomParamsDefaultEntryHolder {
            static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_CustomParamsEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

            private CustomParamsDefaultEntryHolder() {
            }
        }

        private AdUnit() {
            this.memoizedIsInitialized = (byte) (-1);
            this.adFormat_ = "";
        }

        /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
        private AdUnit(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.adFormat_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 18) {
                                z2 = z2;
                                if (!z2 || !true) {
                                    this.customParams_ = MapField.newMapField(CustomParamsDefaultEntryHolder.defaultEntry);
                                    z2 |= true;
                                }
                                MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CustomParamsDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                this.customParams_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
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

        private AdUnit(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static AdUnit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, String> internalGetCustomParams() {
            MapField<String, String> mapField = this.customParams_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(AdUnit adUnit) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(adUnit);
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static AdUnit parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static AdUnit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static AdUnit parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static AdUnit parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static AdUnit parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static AdUnit parseFrom(InputStream inputStream) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static AdUnit parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (AdUnit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static AdUnit parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static AdUnit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static AdUnit parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<AdUnit> parser() {
            return PARSER;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final boolean containsCustomParams(String str) {
            Objects.requireNonNull(str);
            return internalGetCustomParams().getMap().containsKey(str);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AdUnit)) {
                return super.equals(obj);
            }
            AdUnit adUnit = (AdUnit) obj;
            return getAdFormat().equals(adUnit.getAdFormat()) && internalGetCustomParams().equals(adUnit.internalGetCustomParams()) && this.unknownFields.equals(adUnit.unknownFields);
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final String getAdFormat() {
            Object obj = this.adFormat_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.adFormat_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final ByteString getAdFormatBytes() {
            Object obj = this.adFormat_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.adFormat_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        @Deprecated
        public final Map<String, String> getCustomParams() {
            return getCustomParamsMap();
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final int getCustomParamsCount() {
            return internalGetCustomParams().getMap().size();
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final Map<String, String> getCustomParamsMap() {
            return internalGetCustomParams().getMap();
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final String getCustomParamsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCustomParams().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.AdNetwork.AdUnitOrBuilder
        public final String getCustomParamsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCustomParams().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final AdUnit getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<AdUnit> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if (!getAdFormatBytes().isEmpty()) {
                i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.adFormat_);
            }
            for (Map.Entry<String, String> entry : internalGetCustomParams().getMap().entrySet()) {
                i2 += CodedOutputStream.computeMessageSize(2, CustomParamsDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
            }
            int serializedSize = i2 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
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
            int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getAdFormat().hashCode();
            int i = hashCode;
            if (!internalGetCustomParams().getMap().isEmpty()) {
                i = (((hashCode * 37) + 2) * 53) + internalGetCustomParams().hashCode();
            }
            int hashCode2 = (i * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable.ensureFieldAccessorsInitialized(AdUnit.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final MapField internalGetMapField(int i) {
            if (i == 2) {
                return internalGetCustomParams();
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
            return new AdUnit();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getAdFormatBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.adFormat_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCustomParams(), CustomParamsDefaultEntryHolder.defaultEntry, 2);
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder.class */
    public interface AdUnitOrBuilder extends MessageOrBuilder {
        boolean containsCustomParams(String str);

        String getAdFormat();

        ByteString getAdFormatBytes();

        @Deprecated
        Map<String, String> getCustomParams();

        int getCustomParamsCount();

        Map<String, String> getCustomParamsMap();

        String getCustomParamsOrDefault(String str, String str2);

        String getCustomParamsOrThrow(String str);
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdNetworkOrBuilder {
        private RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> adUnitsBuilder_;
        private List<AdUnit> adUnits_;
        private int bitField0_;
        private Object className_;
        private MapField<String, String> customParams_;
        private Object name_;

        private Builder() {
            this.name_ = "";
            this.className_ = "";
            this.adUnits_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.name_ = "";
            this.className_ = "";
            this.adUnits_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureAdUnitsIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.adUnits_ = new ArrayList(this.adUnits_);
                this.bitField0_ |= 2;
            }
        }

        private RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> getAdUnitsFieldBuilder() {
            if (this.adUnitsBuilder_ == null) {
                this.adUnitsBuilder_ = new RepeatedFieldBuilderV3<>(this.adUnits_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.adUnits_ = null;
            }
            return this.adUnitsBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_descriptor;
        }

        private MapField<String, String> internalGetCustomParams() {
            MapField<String, String> mapField = this.customParams_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        private MapField<String, String> internalGetMutableCustomParams() {
            onChanged();
            if (this.customParams_ == null) {
                this.customParams_ = MapField.newMapField(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            if (!this.customParams_.isMutable()) {
                this.customParams_ = this.customParams_.copy();
            }
            return this.customParams_;
        }

        private void maybeForceBuilderInitialization() {
            if (AdNetwork.alwaysUseFieldBuilders) {
                getAdUnitsFieldBuilder();
            }
        }

        public final Builder addAdUnits(int i, AdUnit.Builder builder) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addAdUnits(int i, AdUnit adUnit) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(adUnit);
                ensureAdUnitsIsMutable();
                this.adUnits_.add(i, adUnit);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, adUnit);
            }
            return this;
        }

        public final Builder addAdUnits(AdUnit.Builder builder) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addAdUnits(AdUnit adUnit) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(adUnit);
                ensureAdUnitsIsMutable();
                this.adUnits_.add(adUnit);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(adUnit);
            }
            return this;
        }

        public final AdUnit.Builder addAdUnitsBuilder() {
            return getAdUnitsFieldBuilder().addBuilder(AdUnit.getDefaultInstance());
        }

        public final AdUnit.Builder addAdUnitsBuilder(int i) {
            return getAdUnitsFieldBuilder().addBuilder(i, AdUnit.getDefaultInstance());
        }

        public final Builder addAllAdUnits(Iterable<? extends AdUnit> iterable) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitsIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.adUnits_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final AdNetwork build() {
            AdNetwork buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final AdNetwork buildPartial() {
            AdNetwork adNetwork = new AdNetwork(this);
            adNetwork.name_ = this.name_;
            adNetwork.className_ = this.className_;
            adNetwork.customParams_ = internalGetCustomParams();
            adNetwork.customParams_.makeImmutable();
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 2) != 0) {
                    this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
                    this.bitField0_ &= -3;
                }
                adNetwork.adUnits_ = this.adUnits_;
            } else {
                adNetwork.adUnits_ = repeatedFieldBuilderV3.build();
            }
            onBuilt();
            return adNetwork;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.name_ = "";
            this.className_ = "";
            internalGetMutableCustomParams().clear();
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adUnits_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearAdUnits() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adUnits_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearClassName() {
            this.className_ = AdNetwork.getDefaultInstance().getClassName();
            onChanged();
            return this;
        }

        public final Builder clearCustomParams() {
            internalGetMutableCustomParams().getMutableMap().clear();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public final Builder clearName() {
            this.name_ = AdNetwork.getDefaultInstance().getName();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final boolean containsCustomParams(String str) {
            Objects.requireNonNull(str);
            return internalGetCustomParams().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final AdUnit getAdUnits(int i) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.adUnits_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final AdUnit.Builder getAdUnitsBuilder(int i) {
            return getAdUnitsFieldBuilder().getBuilder(i);
        }

        public final List<AdUnit.Builder> getAdUnitsBuilderList() {
            return getAdUnitsFieldBuilder().getBuilderList();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final int getAdUnitsCount() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.adUnits_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final List<AdUnit> getAdUnitsList() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.adUnits_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final AdUnitOrBuilder getAdUnitsOrBuilder(int i) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            return repeatedFieldBuilderV3 == null ? this.adUnits_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final List<? extends AdUnitOrBuilder> getAdUnitsOrBuilderList() {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.adUnits_);
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final String getClassName() {
            Object obj = this.className_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.className_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final ByteString getClassNameBytes() {
            Object obj = this.className_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.className_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        @Deprecated
        public final Map<String, String> getCustomParams() {
            return getCustomParamsMap();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final int getCustomParamsCount() {
            return internalGetCustomParams().getMap().size();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final Map<String, String> getCustomParamsMap() {
            return internalGetCustomParams().getMap();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final String getCustomParamsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCustomParams().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final String getCustomParamsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCustomParams().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final AdNetwork getDefaultInstanceForType() {
            return AdNetwork.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_descriptor;
        }

        @Deprecated
        public final Map<String, String> getMutableCustomParams() {
            return internalGetMutableCustomParams().getMutableMap();
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final String getName() {
            Object obj = this.name_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.name_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
        public final ByteString getNameBytes() {
            Object obj = this.name_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.name_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable.ensureFieldAccessorsInitialized(AdNetwork.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMapField(int i) {
            if (i == 3) {
                return internalGetCustomParams();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMutableMapField(int i) {
            if (i == 3) {
                return internalGetMutableCustomParams();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.protobuf.AdNetwork.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.AdNetwork.access$2200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                io.bidmachine.protobuf.AdNetwork r0 = (io.bidmachine.protobuf.AdNetwork) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.AdNetwork$Builder r0 = r0.mergeFrom(r1)
            L_0x001a:
                r0 = r4
                return r0
            L_0x001c:
                r6 = move-exception
                r0 = r7
                r5 = r0
                r0 = r6
                r7 = r0
                goto L_0x0037
            L_0x0024:
                r5 = move-exception
                r0 = r5
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                io.bidmachine.protobuf.AdNetwork r0 = (io.bidmachine.protobuf.AdNetwork) r0     // Catch: all -> 0x001c
                r6 = r0
                r0 = r5
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                throw r0     // Catch: all -> 0x0032
            L_0x0032:
                r5 = move-exception
                r0 = r5
                r7 = r0
                r0 = r6
                r5 = r0
            L_0x0037:
                r0 = r5
                if (r0 == 0) goto L_0x0041
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.AdNetwork$Builder r0 = r0.mergeFrom(r1)
            L_0x0041:
                r0 = r7
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AdNetwork.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.AdNetwork$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof AdNetwork) {
                return mergeFrom((AdNetwork) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(AdNetwork adNetwork) {
            if (adNetwork == AdNetwork.getDefaultInstance()) {
                return this;
            }
            if (!adNetwork.getName().isEmpty()) {
                this.name_ = adNetwork.name_;
                onChanged();
            }
            if (!adNetwork.getClassName().isEmpty()) {
                this.className_ = adNetwork.className_;
                onChanged();
            }
            internalGetMutableCustomParams().mergeFrom(adNetwork.internalGetCustomParams());
            if (this.adUnitsBuilder_ == null) {
                if (!adNetwork.adUnits_.isEmpty()) {
                    if (this.adUnits_.isEmpty()) {
                        this.adUnits_ = adNetwork.adUnits_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureAdUnitsIsMutable();
                        this.adUnits_.addAll(adNetwork.adUnits_);
                    }
                    onChanged();
                }
            } else if (!adNetwork.adUnits_.isEmpty()) {
                if (this.adUnitsBuilder_.isEmpty()) {
                    this.adUnitsBuilder_.dispose();
                    RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = null;
                    this.adUnitsBuilder_ = null;
                    this.adUnits_ = adNetwork.adUnits_;
                    this.bitField0_ &= -3;
                    if (AdNetwork.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getAdUnitsFieldBuilder();
                    }
                    this.adUnitsBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.adUnitsBuilder_.addAllMessages(adNetwork.adUnits_);
                }
            }
            mergeUnknownFields(adNetwork.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder putAllCustomParams(Map<String, String> map) {
            internalGetMutableCustomParams().getMutableMap().putAll(map);
            return this;
        }

        public final Builder putCustomParams(String str, String str2) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            internalGetMutableCustomParams().getMutableMap().put(str, str2);
            return this;
        }

        public final Builder removeAdUnits(int i) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder removeCustomParams(String str) {
            Objects.requireNonNull(str);
            internalGetMutableCustomParams().getMutableMap().remove(str);
            return this;
        }

        public final Builder setAdUnits(int i, AdUnit.Builder builder) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdUnitsIsMutable();
                this.adUnits_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setAdUnits(int i, AdUnit adUnit) {
            RepeatedFieldBuilderV3<AdUnit, AdUnit.Builder, AdUnitOrBuilder> repeatedFieldBuilderV3 = this.adUnitsBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(adUnit);
                ensureAdUnitsIsMutable();
                this.adUnits_.set(i, adUnit);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, adUnit);
            }
            return this;
        }

        public final Builder setClassName(String str) {
            Objects.requireNonNull(str);
            this.className_ = str;
            onChanged();
            return this;
        }

        public final Builder setClassNameBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AdNetwork.checkByteStringIsUtf8(byteString);
            this.className_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public final Builder setName(String str) {
            Objects.requireNonNull(str);
            this.name_ = str;
            onChanged();
            return this;
        }

        public final Builder setNameBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AdNetwork.checkByteStringIsUtf8(byteString);
            this.name_ = byteString;
            onChanged();
            return this;
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
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder.class */
    public static final class CustomParamsDefaultEntryHolder {
        static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(InitProto.internal_static_bidmachine_protobuf_AdNetwork_CustomParamsEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

        private CustomParamsDefaultEntryHolder() {
        }
    }

    private AdNetwork() {
        this.memoizedIsInitialized = (byte) (-1);
        this.name_ = "";
        this.className_ = "";
        this.adUnits_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v29, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    private AdNetwork(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        if (readTag != 0) {
                            if (readTag == 10) {
                                this.name_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 18) {
                                this.className_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 26) {
                                i = i;
                                if ((i & 1) == 0) {
                                    this.customParams_ = MapField.newMapField(CustomParamsDefaultEntryHolder.defaultEntry);
                                    i |= 1;
                                }
                                MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CustomParamsDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                this.customParams_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                            } else if (readTag == 34) {
                                i = i;
                                if ((i & 2) == 0) {
                                    this.adUnits_ = new ArrayList();
                                    i |= 2;
                                }
                                this.adUnits_.add(codedInputStream.readMessage(AdUnit.parser(), extensionRegistryLite));
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        }
                        z = true;
                    } catch (IOException e) {
                        throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                    }
                } catch (InvalidProtocolBufferException e2) {
                    throw e2.setUnfinishedMessage(this);
                }
            } finally {
                if ((i & 2) != 0) {
                    this.adUnits_ = Collections.unmodifiableList(this.adUnits_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private AdNetwork(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static AdNetwork getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_AdNetwork_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetCustomParams() {
        MapField<String, String> mapField = this.customParams_;
        MapField<String, String> mapField2 = mapField;
        if (mapField == null) {
            mapField2 = MapField.emptyMapField(CustomParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField2;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(AdNetwork adNetwork) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(adNetwork);
    }

    public static AdNetwork parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AdNetwork parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AdNetwork parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static AdNetwork parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static AdNetwork parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static AdNetwork parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static AdNetwork parseFrom(InputStream inputStream) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AdNetwork parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdNetwork) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AdNetwork parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static AdNetwork parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static AdNetwork parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static AdNetwork parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<AdNetwork> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final boolean containsCustomParams(String str) {
        Objects.requireNonNull(str);
        return internalGetCustomParams().getMap().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdNetwork)) {
            return super.equals(obj);
        }
        AdNetwork adNetwork = (AdNetwork) obj;
        return getName().equals(adNetwork.getName()) && getClassName().equals(adNetwork.getClassName()) && internalGetCustomParams().equals(adNetwork.internalGetCustomParams()) && getAdUnitsList().equals(adNetwork.getAdUnitsList()) && this.unknownFields.equals(adNetwork.unknownFields);
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final AdUnit getAdUnits(int i) {
        return this.adUnits_.get(i);
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final int getAdUnitsCount() {
        return this.adUnits_.size();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final List<AdUnit> getAdUnitsList() {
        return this.adUnits_;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final AdUnitOrBuilder getAdUnitsOrBuilder(int i) {
        return this.adUnits_.get(i);
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final List<? extends AdUnitOrBuilder> getAdUnitsOrBuilderList() {
        return this.adUnits_;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final String getClassName() {
        Object obj = this.className_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.className_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final ByteString getClassNameBytes() {
        Object obj = this.className_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.className_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    @Deprecated
    public final Map<String, String> getCustomParams() {
        return getCustomParamsMap();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final int getCustomParamsCount() {
        return internalGetCustomParams().getMap().size();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final Map<String, String> getCustomParamsMap() {
        return internalGetCustomParams().getMap();
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final String getCustomParamsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetCustomParams().getMap();
        return map.containsKey(str) ? map.get(str) : str2;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final String getCustomParamsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetCustomParams().getMap();
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final AdNetwork getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final String getName() {
        Object obj = this.name_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.name_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.AdNetworkOrBuilder
    public final ByteString getNameBytes() {
        Object obj = this.name_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.name_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<AdNetwork> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i;
        int i2 = this.memoizedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = !getNameBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.name_) + 0 : 0;
        int i3 = computeStringSize;
        if (!getClassNameBytes().isEmpty()) {
            i3 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.className_);
        }
        Iterator<Map.Entry<String, String>> it2 = internalGetCustomParams().getMap().entrySet().iterator();
        while (true) {
            i = i3;
            if (it2.hasNext()) {
                Map.Entry<String, String> next = it2.next();
                i3 += CodedOutputStream.computeMessageSize(3, CustomParamsDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(next.getKey()).setValue(next.getValue()).build());
            }
        }
        for (int i4 = 0; i4 < this.adUnits_.size(); i4++) {
            i += CodedOutputStream.computeMessageSize(4, this.adUnits_.get(i4));
        }
        int serializedSize = i + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
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
        int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getName().hashCode()) * 37) + 2) * 53) + getClassName().hashCode();
        int i = hashCode;
        if (!internalGetCustomParams().getMap().isEmpty()) {
            i = (((hashCode * 37) + 3) * 53) + internalGetCustomParams().hashCode();
        }
        int i2 = i;
        if (getAdUnitsCount() > 0) {
            i2 = (((i * 37) + 4) * 53) + getAdUnitsList().hashCode();
        }
        int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable.ensureFieldAccessorsInitialized(AdNetwork.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final MapField internalGetMapField(int i) {
        if (i == 3) {
            return internalGetCustomParams();
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
        return new AdNetwork();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.name_);
        }
        if (!getClassNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.className_);
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCustomParams(), CustomParamsDefaultEntryHolder.defaultEntry, 3);
        for (int i = 0; i < this.adUnits_.size(); i++) {
            codedOutputStream.writeMessage(4, this.adUnits_.get(i));
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
