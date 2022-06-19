package com.truecaller.api.services.messenger.business;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMediaHandles.class */
public final class BusinessMediaHandles extends GeneratedMessageLite<BusinessMediaHandles, C2996b> implements Object {
    private static final BusinessMediaHandles DEFAULT_INSTANCE;
    private static volatile Parser<BusinessMediaHandles> PARSER;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMediaHandles$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2993a> implements Object {
        public static final int CONTENT_LENGTH_FIELD_NUMBER = 1;
        private static final Request DEFAULT_INSTANCE;
        public static final int MIME_TYPE_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        private long contentLength_;
        private String mimeType_ = "";

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessMediaHandles$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMediaHandles$Request$a.class */
        public static final class C2993a extends GeneratedMessageLite.Builder<Request, C2993a> implements Object {
            public C2993a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2993a(C2995a c2995a) {
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

        public void clearContentLength() {
            this.contentLength_ = 0L;
        }

        public void clearMimeType() {
            this.mimeType_ = getDefaultInstance().getMimeType();
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2993a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2993a newBuilder(Request request) {
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

        public void setContentLength(long j) {
            this.contentLength_ = j;
        }

        public void setMimeType(String str) {
            str.getClass();
            this.mimeType_ = str;
        }

        public void setMimeTypeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.mimeType_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0002\u0002Ȉ", new Object[]{"contentLength_", "mimeType_"});
                case 3:
                    return new Request();
                case 4:
                    return new C2993a(null);
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

        public long getContentLength() {
            return this.contentLength_;
        }

        public String getMimeType() {
            return this.mimeType_;
        }

        public ByteString getMimeTypeBytes() {
            return ByteString.copyFromUtf8(this.mimeType_);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMediaHandles$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C2994a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int DOWNLOAD_URL_FIELD_NUMBER = 2;
        private static volatile Parser<Response> PARSER;
        public static final int UPLOAD_EXPIRATION_FIELD_NUMBER = 3;
        public static final int UPLOAD_URL_FIELD_NUMBER = 1;
        private long uploadExpiration_;
        private String uploadUrl_ = "";
        private String downloadUrl_ = "";

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessMediaHandles$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMediaHandles$Response$a.class */
        public static final class C2994a extends GeneratedMessageLite.Builder<Response, C2994a> implements Object {
            public C2994a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C2994a(C2995a c2995a) {
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

        public void clearDownloadUrl() {
            this.downloadUrl_ = getDefaultInstance().getDownloadUrl();
        }

        public void clearUploadExpiration() {
            this.uploadExpiration_ = 0L;
        }

        public void clearUploadUrl() {
            this.uploadUrl_ = getDefaultInstance().getUploadUrl();
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2994a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2994a newBuilder(Response response) {
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

        public void setDownloadUrl(String str) {
            str.getClass();
            this.downloadUrl_ = str;
        }

        public void setDownloadUrlBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.downloadUrl_ = byteString.toStringUtf8();
        }

        public void setUploadExpiration(long j) {
            this.uploadExpiration_ = j;
        }

        public void setUploadUrl(String str) {
            str.getClass();
            this.uploadUrl_ = str;
        }

        public void setUploadUrlBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uploadUrl_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002Ȉ\u0003\u0002", new Object[]{"uploadUrl_", "downloadUrl_", "uploadExpiration_"});
                case 3:
                    return new Response();
                case 4:
                    return new C2994a(null);
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

        public String getDownloadUrl() {
            return this.downloadUrl_;
        }

        public ByteString getDownloadUrlBytes() {
            return ByteString.copyFromUtf8(this.downloadUrl_);
        }

        public long getUploadExpiration() {
            return this.uploadExpiration_;
        }

        public String getUploadUrl() {
            return this.uploadUrl_;
        }

        public ByteString getUploadUrlBytes() {
            return ByteString.copyFromUtf8(this.uploadUrl_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.business.BusinessMediaHandles$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessMediaHandles$b.class */
    public static final class C2996b extends GeneratedMessageLite.Builder<BusinessMediaHandles, C2996b> implements Object {
        public C2996b() {
            super(BusinessMediaHandles.DEFAULT_INSTANCE);
        }

        public C2996b(C2995a c2995a) {
            super(BusinessMediaHandles.DEFAULT_INSTANCE);
        }
    }

    static {
        BusinessMediaHandles businessMediaHandles = new BusinessMediaHandles();
        DEFAULT_INSTANCE = businessMediaHandles;
        GeneratedMessageLite.registerDefaultInstance(BusinessMediaHandles.class, businessMediaHandles);
    }

    private BusinessMediaHandles() {
    }

    public static BusinessMediaHandles getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2996b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2996b newBuilder(BusinessMediaHandles businessMediaHandles) {
        return DEFAULT_INSTANCE.createBuilder(businessMediaHandles);
    }

    public static BusinessMediaHandles parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessMediaHandles parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessMediaHandles parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BusinessMediaHandles parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BusinessMediaHandles parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BusinessMediaHandles parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static BusinessMediaHandles parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessMediaHandles parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessMediaHandles parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BusinessMediaHandles parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BusinessMediaHandles parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BusinessMediaHandles parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<BusinessMediaHandles> parser() {
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
                return new BusinessMediaHandles();
            case 4:
                return new C2996b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (BusinessMediaHandles.class) {
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
