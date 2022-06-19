package com.explorestack.protobuf.openrtb;

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
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.openrtb.Request;
import com.explorestack.protobuf.openrtb.Response;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Openrtb.class */
public final class Openrtb extends GeneratedMessageV3 implements OpenrtbOrBuilder {
    public static final int DOMAINSPEC_FIELD_NUMBER = 2;
    public static final int DOMAINVER_FIELD_NUMBER = 3;
    public static final int REQUEST_FIELD_NUMBER = 4;
    public static final int RESPONSE_FIELD_NUMBER = 5;
    public static final int VER_FIELD_NUMBER = 1;
    private static final long serialVersionUID = 0;
    private volatile Object domainspec_;
    private volatile Object domainver_;
    private byte memoizedIsInitialized;
    private int payloadCase_;
    private Object payload_;
    private volatile Object ver_;
    private static final Openrtb DEFAULT_INSTANCE = new Openrtb();
    private static final Parser<Openrtb> PARSER = new AbstractParser<Openrtb>() { // from class: com.explorestack.protobuf.openrtb.Openrtb.1
        @Override // com.explorestack.protobuf.Parser
        public final Openrtb parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Openrtb(codedInputStream, extensionRegistryLite);
        }
    };

    /* renamed from: com.explorestack.protobuf.openrtb.Openrtb$2 */
    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Openrtb$2.class */
    public static /* synthetic */ class C99062 {
        static final /* synthetic */ int[] $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PayloadCase.values().length];
            $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase = iArr;
            try {
                iArr[PayloadCase.REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase[PayloadCase.RESPONSE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase[PayloadCase.PAYLOAD_NOT_SET.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Openrtb$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements OpenrtbOrBuilder {
        private Object domainspec_;
        private Object domainver_;
        private int payloadCase_;
        private Object payload_;
        private SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> requestBuilder_;
        private SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> responseBuilder_;
        private Object ver_;

        private Builder() {
            this.payloadCase_ = 0;
            this.ver_ = "";
            this.domainspec_ = "";
            this.domainver_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.payloadCase_ = 0;
            this.ver_ = "";
            this.domainspec_ = "";
            this.domainver_ = "";
            maybeForceBuilderInitialization();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor;
        }

        private SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> getRequestFieldBuilder() {
            if (this.requestBuilder_ == null) {
                if (this.payloadCase_ != 4) {
                    this.payload_ = Request.getDefaultInstance();
                }
                this.requestBuilder_ = new SingleFieldBuilderV3<>((Request) this.payload_, getParentForChildren(), isClean());
                this.payload_ = null;
            }
            this.payloadCase_ = 4;
            onChanged();
            return this.requestBuilder_;
        }

        private SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> getResponseFieldBuilder() {
            if (this.responseBuilder_ == null) {
                if (this.payloadCase_ != 5) {
                    this.payload_ = Response.getDefaultInstance();
                }
                this.responseBuilder_ = new SingleFieldBuilderV3<>((Response) this.payload_, getParentForChildren(), isClean());
                this.payload_ = null;
            }
            this.payloadCase_ = 5;
            onChanged();
            return this.responseBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            boolean unused = Openrtb.alwaysUseFieldBuilders;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Openrtb build() {
            Openrtb buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Openrtb buildPartial() {
            Openrtb openrtb = new Openrtb(this);
            openrtb.ver_ = this.ver_;
            openrtb.domainspec_ = this.domainspec_;
            openrtb.domainver_ = this.domainver_;
            if (this.payloadCase_ == 4) {
                SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
                if (singleFieldBuilderV3 == null) {
                    openrtb.payload_ = this.payload_;
                } else {
                    openrtb.payload_ = singleFieldBuilderV3.build();
                }
            }
            if (this.payloadCase_ == 5) {
                SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV32 = this.responseBuilder_;
                if (singleFieldBuilderV32 == null) {
                    openrtb.payload_ = this.payload_;
                } else {
                    openrtb.payload_ = singleFieldBuilderV32.build();
                }
            }
            openrtb.payloadCase_ = this.payloadCase_;
            onBuilt();
            return openrtb;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.ver_ = "";
            this.domainspec_ = "";
            this.domainver_ = "";
            this.payloadCase_ = 0;
            this.payload_ = null;
            return this;
        }

        public final Builder clearDomainspec() {
            this.domainspec_ = Openrtb.getDefaultInstance().getDomainspec();
            onChanged();
            return this;
        }

        public final Builder clearDomainver() {
            this.domainver_ = Openrtb.getDefaultInstance().getDomainver();
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

        public final Builder clearPayload() {
            this.payloadCase_ = 0;
            this.payload_ = null;
            onChanged();
            return this;
        }

        public final Builder clearRequest() {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 != null) {
                if (this.payloadCase_ == 4) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                }
                singleFieldBuilderV3.clear();
            } else if (this.payloadCase_ == 4) {
                this.payloadCase_ = 0;
                this.payload_ = null;
                onChanged();
            }
            return this;
        }

        public final Builder clearResponse() {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 != null) {
                if (this.payloadCase_ == 5) {
                    this.payloadCase_ = 0;
                    this.payload_ = null;
                }
                singleFieldBuilderV3.clear();
            } else if (this.payloadCase_ == 5) {
                this.payloadCase_ = 0;
                this.payload_ = null;
                onChanged();
            }
            return this;
        }

        public final Builder clearVer() {
            this.ver_ = Openrtb.getDefaultInstance().getVer();
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Openrtb getDefaultInstanceForType() {
            return Openrtb.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final String getDomainspec() {
            Object obj = this.domainspec_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domainspec_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final ByteString getDomainspecBytes() {
            Object obj = this.domainspec_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.domainspec_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final String getDomainver() {
            Object obj = this.domainver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.domainver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final ByteString getDomainverBytes() {
            Object obj = this.domainver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.domainver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final PayloadCase getPayloadCase() {
            return PayloadCase.forNumber(this.payloadCase_);
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final Request getRequest() {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            return singleFieldBuilderV3 == null ? this.payloadCase_ == 4 ? (Request) this.payload_ : Request.getDefaultInstance() : this.payloadCase_ == 4 ? singleFieldBuilderV3.getMessage() : Request.getDefaultInstance();
        }

        public final Request.Builder getRequestBuilder() {
            return getRequestFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final RequestOrBuilder getRequestOrBuilder() {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3;
            int i = this.payloadCase_;
            return (i != 4 || (singleFieldBuilderV3 = this.requestBuilder_) == null) ? i == 4 ? (Request) this.payload_ : Request.getDefaultInstance() : singleFieldBuilderV3.getMessageOrBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final Response getResponse() {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            return singleFieldBuilderV3 == null ? this.payloadCase_ == 5 ? (Response) this.payload_ : Response.getDefaultInstance() : this.payloadCase_ == 5 ? singleFieldBuilderV3.getMessage() : Response.getDefaultInstance();
        }

        public final Response.Builder getResponseBuilder() {
            return getResponseFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final ResponseOrBuilder getResponseOrBuilder() {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3;
            int i = this.payloadCase_;
            return (i != 5 || (singleFieldBuilderV3 = this.responseBuilder_) == null) ? i == 5 ? (Response) this.payload_ : Response.getDefaultInstance() : singleFieldBuilderV3.getMessageOrBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final String getVer() {
            Object obj = this.ver_;
            if (!(obj instanceof String)) {
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ver_ = stringUtf8;
                return stringUtf8;
            }
            return (String) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final ByteString getVerBytes() {
            Object obj = this.ver_;
            if (obj instanceof String) {
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ver_ = copyFromUtf8;
                return copyFromUtf8;
            }
            return (ByteString) obj;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final boolean hasRequest() {
            return this.payloadCase_ == 4;
        }

        @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
        public final boolean hasResponse() {
            return this.payloadCase_ == 5;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return OpenrtbProto.f33016x8296282d.ensureFieldAccessorsInitialized(Openrtb.class, Builder.class);
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
        public final com.explorestack.protobuf.openrtb.Openrtb.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Openrtb.access$1000()     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                com.explorestack.protobuf.openrtb.Openrtb r0 = (com.explorestack.protobuf.openrtb.Openrtb) r0     // Catch: java.lang.Throwable -> L1c com.explorestack.protobuf.InvalidProtocolBufferException -> L24
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L1a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.openrtb.Openrtb$Builder r0 = r0.mergeFrom(r1)
            L1a:
                r0 = r4
                return r0
            L1c:
                r5 = move-exception
                r0 = r7
                r6 = r0
                r0 = r5
                r7 = r0
                goto L37
            L24:
                r6 = move-exception
                r0 = r6
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: java.lang.Throwable -> L1c
                com.explorestack.protobuf.openrtb.Openrtb r0 = (com.explorestack.protobuf.openrtb.Openrtb) r0     // Catch: java.lang.Throwable -> L1c
                r5 = r0
                r0 = r6
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: java.lang.Throwable -> L32
                throw r0     // Catch: java.lang.Throwable -> L32
            L32:
                r6 = move-exception
                r0 = r6
                r7 = r0
                r0 = r5
                r6 = r0
            L37:
                r0 = r6
                if (r0 == 0) goto L41
                r0 = r4
                r1 = r6
                com.explorestack.protobuf.openrtb.Openrtb$Builder r0 = r0.mergeFrom(r1)
            L41:
                r0 = r7
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Openrtb.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Openrtb$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Openrtb) {
                return mergeFrom((Openrtb) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Openrtb openrtb) {
            if (openrtb == Openrtb.getDefaultInstance()) {
                return this;
            }
            if (!openrtb.getVer().isEmpty()) {
                this.ver_ = openrtb.ver_;
                onChanged();
            }
            if (!openrtb.getDomainspec().isEmpty()) {
                this.domainspec_ = openrtb.domainspec_;
                onChanged();
            }
            if (!openrtb.getDomainver().isEmpty()) {
                this.domainver_ = openrtb.domainver_;
                onChanged();
            }
            int i = C99062.$SwitchMap$com$explorestack$protobuf$openrtb$Openrtb$PayloadCase[openrtb.getPayloadCase().ordinal()];
            if (i == 1) {
                mergeRequest(openrtb.getRequest());
            } else if (i == 2) {
                mergeResponse(openrtb.getResponse());
            }
            mergeUnknownFields(openrtb.unknownFields);
            onChanged();
            return this;
        }

        public final Builder mergeRequest(Request request) {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadCase_ != 4 || this.payload_ == Request.getDefaultInstance()) {
                    this.payload_ = request;
                } else {
                    this.payload_ = Request.newBuilder((Request) this.payload_).mergeFrom(request).buildPartial();
                }
                onChanged();
            } else {
                if (this.payloadCase_ == 4) {
                    singleFieldBuilderV3.mergeFrom(request);
                }
                this.requestBuilder_.setMessage(request);
            }
            this.payloadCase_ = 4;
            return this;
        }

        public final Builder mergeResponse(Response response) {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                if (this.payloadCase_ != 5 || this.payload_ == Response.getDefaultInstance()) {
                    this.payload_ = response;
                } else {
                    this.payload_ = Response.newBuilder((Response) this.payload_).mergeFrom(response).buildPartial();
                }
                onChanged();
            } else {
                if (this.payloadCase_ == 5) {
                    singleFieldBuilderV3.mergeFrom(response);
                }
                this.responseBuilder_.setMessage(response);
            }
            this.payloadCase_ = 5;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder setDomainspec(String str) {
            Objects.requireNonNull(str);
            this.domainspec_ = str;
            onChanged();
            return this;
        }

        public final Builder setDomainspecBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Openrtb.checkByteStringIsUtf8(byteString);
            this.domainspec_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setDomainver(String str) {
            Objects.requireNonNull(str);
            this.domainver_ = str;
            onChanged();
            return this;
        }

        public final Builder setDomainverBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Openrtb.checkByteStringIsUtf8(byteString);
            this.domainver_ = byteString;
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

        public final Builder setRequest(Request.Builder builder) {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.payload_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            this.payloadCase_ = 4;
            return this;
        }

        public final Builder setRequest(Request request) {
            SingleFieldBuilderV3<Request, Request.Builder, RequestOrBuilder> singleFieldBuilderV3 = this.requestBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(request);
                this.payload_ = request;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(request);
            }
            this.payloadCase_ = 4;
            return this;
        }

        public final Builder setResponse(Response.Builder builder) {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.payload_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            this.payloadCase_ = 5;
            return this;
        }

        public final Builder setResponse(Response response) {
            SingleFieldBuilderV3<Response, Response.Builder, ResponseOrBuilder> singleFieldBuilderV3 = this.responseBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(response);
                this.payload_ = response;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(response);
            }
            this.payloadCase_ = 5;
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setVer(String str) {
            Objects.requireNonNull(str);
            this.ver_ = str;
            onChanged();
            return this;
        }

        public final Builder setVerBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Openrtb.checkByteStringIsUtf8(byteString);
            this.ver_ = byteString;
            onChanged();
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Openrtb$PayloadCase.class */
    public enum PayloadCase implements Internal.EnumLite {
        REQUEST(4),
        RESPONSE(5),
        PAYLOAD_NOT_SET(0);
        
        private final int value;

        PayloadCase(int i) {
            this.value = i;
        }

        public static PayloadCase forNumber(int i) {
            if (i != 0) {
                if (i == 4) {
                    return REQUEST;
                }
                if (i == 5) {
                    return RESPONSE;
                }
                return null;
            }
            return PAYLOAD_NOT_SET;
        }

        @Deprecated
        public static PayloadCase valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.value;
        }
    }

    private Openrtb() {
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) (-1);
        this.ver_ = "";
        this.domainspec_ = "";
        this.domainver_ = "";
    }

    private Openrtb(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.ver_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            this.domainspec_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag != 26) {
                            Response.Builder builder = null;
                            if (readTag == 34) {
                                Request.Builder builder2 = this.payloadCase_ == 4 ? ((Request) this.payload_).toBuilder() : null;
                                MessageLite readMessage = codedInputStream.readMessage(Request.parser(), extensionRegistryLite);
                                this.payload_ = readMessage;
                                if (builder2 != null) {
                                    builder2.mergeFrom((Request) readMessage);
                                    this.payload_ = builder2.buildPartial();
                                }
                                this.payloadCase_ = 4;
                            } else if (readTag == 42) {
                                builder = this.payloadCase_ == 5 ? ((Response) this.payload_).toBuilder() : builder;
                                MessageLite readMessage2 = codedInputStream.readMessage(Response.parser(), extensionRegistryLite);
                                this.payload_ = readMessage2;
                                if (builder != null) {
                                    builder.mergeFrom((Response) readMessage2);
                                    this.payload_ = builder.buildPartial();
                                }
                                this.payloadCase_ = 5;
                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                            }
                        } else {
                            this.domainver_ = codedInputStream.readStringRequireUtf8();
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

    private Openrtb(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.payloadCase_ = 0;
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Openrtb getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Openrtb openrtb) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(openrtb);
    }

    public static Openrtb parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Openrtb parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Openrtb parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Openrtb parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Openrtb parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Openrtb parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Openrtb parseFrom(InputStream inputStream) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Openrtb parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Openrtb) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Openrtb parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Openrtb parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Openrtb parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Openrtb parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Openrtb> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Openrtb)) {
            return super.equals(obj);
        }
        Openrtb openrtb = (Openrtb) obj;
        if (!getVer().equals(openrtb.getVer()) || !getDomainspec().equals(openrtb.getDomainspec()) || !getDomainver().equals(openrtb.getDomainver()) || !getPayloadCase().equals(openrtb.getPayloadCase())) {
            return false;
        }
        int i = this.payloadCase_;
        if (i != 4) {
            if (i == 5 && !getResponse().equals(openrtb.getResponse())) {
                return false;
            }
        } else if (!getRequest().equals(openrtb.getRequest())) {
            return false;
        }
        return this.unknownFields.equals(openrtb.unknownFields);
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Openrtb getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final String getDomainspec() {
        Object obj = this.domainspec_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.domainspec_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final ByteString getDomainspecBytes() {
        Object obj = this.domainspec_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.domainspec_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final String getDomainver() {
        Object obj = this.domainver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.domainver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final ByteString getDomainverBytes() {
        Object obj = this.domainver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.domainver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Openrtb> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final PayloadCase getPayloadCase() {
        return PayloadCase.forNumber(this.payloadCase_);
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final Request getRequest() {
        return this.payloadCase_ == 4 ? (Request) this.payload_ : Request.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final RequestOrBuilder getRequestOrBuilder() {
        return this.payloadCase_ == 4 ? (Request) this.payload_ : Request.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final Response getResponse() {
        return this.payloadCase_ == 5 ? (Response) this.payload_ : Response.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final ResponseOrBuilder getResponseOrBuilder() {
        return this.payloadCase_ == 5 ? (Response) this.payload_ : Response.getDefaultInstance();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (!getVerBytes().isEmpty()) {
            i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.ver_);
        }
        int i3 = i2;
        if (!getDomainspecBytes().isEmpty()) {
            i3 = i2 + GeneratedMessageV3.computeStringSize(2, this.domainspec_);
        }
        int i4 = i3;
        if (!getDomainverBytes().isEmpty()) {
            i4 = i3 + GeneratedMessageV3.computeStringSize(3, this.domainver_);
        }
        int i5 = i4;
        if (this.payloadCase_ == 4) {
            i5 = i4 + CodedOutputStream.computeMessageSize(4, (Request) this.payload_);
        }
        int i6 = i5;
        if (this.payloadCase_ == 5) {
            i6 = i5 + CodedOutputStream.computeMessageSize(5, (Response) this.payload_);
        }
        int serializedSize = i6 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final String getVer() {
        Object obj = this.ver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.ver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final ByteString getVerBytes() {
        Object obj = this.ver_;
        if (obj instanceof String) {
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ver_ = copyFromUtf8;
            return copyFromUtf8;
        }
        return (ByteString) obj;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final boolean hasRequest() {
        return this.payloadCase_ == 4;
    }

    @Override // com.explorestack.protobuf.openrtb.OpenrtbOrBuilder
    public final boolean hasResponse() {
        return this.payloadCase_ == 5;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        int i;
        int i2;
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getVer().hashCode()) * 37) + 2) * 53) + getDomainspec().hashCode()) * 37) + 3) * 53) + getDomainver().hashCode();
        int i3 = this.payloadCase_;
        if (i3 != 4) {
            if (i3 == 5) {
                i = ((hashCode * 37) + 5) * 53;
                i2 = getResponse().hashCode();
            }
            int hashCode2 = (hashCode * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }
        i = ((hashCode * 37) + 4) * 53;
        i2 = getRequest().hashCode();
        hashCode = i + i2;
        int hashCode22 = (hashCode * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode22;
        return hashCode22;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return OpenrtbProto.f33016x8296282d.ensureFieldAccessorsInitialized(Openrtb.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b = this.memoizedIsInitialized;
        if (b == 1) {
            return true;
        }
        if (b == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder newBuilderForType() {
        return newBuilder();
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new Openrtb();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getVerBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.ver_);
        }
        if (!getDomainspecBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.domainspec_);
        }
        if (!getDomainverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.domainver_);
        }
        if (this.payloadCase_ == 4) {
            codedOutputStream.writeMessage(4, (Request) this.payload_);
        }
        if (this.payloadCase_ == 5) {
            codedOutputStream.writeMessage(5, (Response) this.payload_);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
