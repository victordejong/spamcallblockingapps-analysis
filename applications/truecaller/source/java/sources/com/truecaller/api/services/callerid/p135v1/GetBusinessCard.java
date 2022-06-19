package com.truecaller.api.services.callerid.p135v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.truecaller.api.services.callerid.v1.GetBusinessCard */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetBusinessCard.class */
public final class GetBusinessCard extends GeneratedMessageLite<GetBusinessCard, C2913b> implements Object {
    private static final GetBusinessCard DEFAULT_INSTANCE;
    private static volatile Parser<GetBusinessCard> PARSER;

    /* renamed from: com.truecaller.api.services.callerid.v1.GetBusinessCard$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetBusinessCard$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2910a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int VIDEOIDS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<String> videoIds_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.callerid.v1.GetBusinessCard$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetBusinessCard$Request$a.class */
        public static final class C2910a extends GeneratedMessageLite.Builder<Request, C2910a> implements Object {
            public C2910a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2910a(C2912a c2912a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void addAllVideoIds(Iterable<String> iterable) {
            ensureVideoIdsIsMutable();
            AbstractMessageLite.addAll(iterable, this.videoIds_);
        }

        public void addVideoIds(String str) {
            str.getClass();
            ensureVideoIdsIsMutable();
            this.videoIds_.add(str);
        }

        public void addVideoIdsBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            ensureVideoIdsIsMutable();
            this.videoIds_.add(byteString.toStringUtf8());
        }

        public void clearVideoIds() {
            this.videoIds_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureVideoIdsIsMutable() {
            Internal.ProtobufList<String> protobufList = this.videoIds_;
            if (!protobufList.isModifiable()) {
                this.videoIds_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2910a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2910a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setVideoIds(int i, String str) {
            str.getClass();
            ensureVideoIdsIsMutable();
            this.videoIds_.set(i, str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001Ț", new Object[]{"videoIds_"});
                case 3:
                    return new Request();
                case 4:
                    return new C2910a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
                            try {
                                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                                defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                                if (defaultInstanceBasedParser3 == null) {
                                    defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                    PARSER = defaultInstanceBasedParser2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return defaultInstanceBasedParser2;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public String getVideoIds(int i) {
            return this.videoIds_.get(i);
        }

        public ByteString getVideoIdsBytes(int i) {
            return ByteString.copyFromUtf8(this.videoIds_.get(i));
        }

        public int getVideoIdsCount() {
            return this.videoIds_.size();
        }

        public List<String> getVideoIdsList() {
            return this.videoIds_;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.GetBusinessCard$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetBusinessCard$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C2911a> implements Object {
        public static final int BUSINESSCARD_FIELD_NUMBER = 1;
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;
        private SignedBusinessCard businessCard_;

        /* renamed from: com.truecaller.api.services.callerid.v1.GetBusinessCard$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetBusinessCard$Response$a.class */
        public static final class C2911a extends GeneratedMessageLite.Builder<Response, C2911a> implements Object {
            public C2911a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C2911a(C2912a c2912a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public void clearBusinessCard() {
            this.businessCard_ = null;
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeBusinessCard(SignedBusinessCard signedBusinessCard) {
            signedBusinessCard.getClass();
            SignedBusinessCard signedBusinessCard2 = this.businessCard_;
            if (signedBusinessCard2 == null || signedBusinessCard2 == SignedBusinessCard.getDefaultInstance()) {
                this.businessCard_ = signedBusinessCard;
            } else {
                this.businessCard_ = SignedBusinessCard.newBuilder(this.businessCard_).mergeFrom(signedBusinessCard).buildPartial();
            }
        }

        public static C2911a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2911a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setBusinessCard(SignedBusinessCard signedBusinessCard) {
            signedBusinessCard.getClass();
            this.businessCard_ = signedBusinessCard;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"businessCard_"});
                case 3:
                    return new Response();
                case 4:
                    return new C2911a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
                            try {
                                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                                defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                                if (defaultInstanceBasedParser3 == null) {
                                    defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                    PARSER = defaultInstanceBasedParser2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return defaultInstanceBasedParser2;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public SignedBusinessCard getBusinessCard() {
            SignedBusinessCard signedBusinessCard = this.businessCard_;
            SignedBusinessCard signedBusinessCard2 = signedBusinessCard;
            if (signedBusinessCard == null) {
                signedBusinessCard2 = SignedBusinessCard.getDefaultInstance();
            }
            return signedBusinessCard2;
        }

        public boolean hasBusinessCard() {
            return this.businessCard_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.GetBusinessCard$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetBusinessCard$b.class */
    public static final class C2913b extends GeneratedMessageLite.Builder<GetBusinessCard, C2913b> implements Object {
        public C2913b() {
            super(GetBusinessCard.DEFAULT_INSTANCE);
        }

        public C2913b(C2912a c2912a) {
            super(GetBusinessCard.DEFAULT_INSTANCE);
        }
    }

    static {
        GetBusinessCard getBusinessCard = new GetBusinessCard();
        DEFAULT_INSTANCE = getBusinessCard;
        GeneratedMessageLite.registerDefaultInstance(GetBusinessCard.class, getBusinessCard);
    }

    private GetBusinessCard() {
    }

    public static GetBusinessCard getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2913b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2913b newBuilder(GetBusinessCard getBusinessCard) {
        return DEFAULT_INSTANCE.createBuilder(getBusinessCard);
    }

    public static GetBusinessCard parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetBusinessCard parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetBusinessCard parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetBusinessCard parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetBusinessCard parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetBusinessCard parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetBusinessCard parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetBusinessCard parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetBusinessCard parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetBusinessCard parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetBusinessCard parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetBusinessCard parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetBusinessCard> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new GetBusinessCard();
            case 4:
                return new C2913b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetBusinessCard.class) {
                        try {
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                            defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                            if (defaultInstanceBasedParser3 == null) {
                                defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return defaultInstanceBasedParser2;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
