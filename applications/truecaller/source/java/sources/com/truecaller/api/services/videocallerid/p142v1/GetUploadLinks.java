package com.truecaller.api.services.videocallerid.p142v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks.class */
public final class GetUploadLinks extends GeneratedMessageLite<GetUploadLinks, C3441b> implements Object {
    private static final GetUploadLinks DEFAULT_INSTANCE;
    private static volatile Parser<GetUploadLinks> PARSER;

    /* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3437a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int MIME_TYPE_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        public static final int SIZE_BYTES_FIELD_NUMBER = 1;
        private String mimeType_ = "";
        private long sizeBytes_;

        /* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request$a.class */
        public static final class C3437a extends GeneratedMessageLite.Builder<Request, C3437a> implements Object {
            public C3437a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3437a(C3440a c3440a) {
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

        public void clearMimeType() {
            this.mimeType_ = getDefaultInstance().getMimeType();
        }

        public void clearSizeBytes() {
            this.sizeBytes_ = 0L;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3437a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3437a newBuilder(Request request) {
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

        public void setMimeType(String str) {
            str.getClass();
            this.mimeType_ = str;
        }

        public void setMimeTypeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.mimeType_ = byteString.toStringUtf8();
        }

        public void setSizeBytes(long j) {
            this.sizeBytes_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0002\u0002Ȉ", new Object[]{"sizeBytes_", "mimeType_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3437a(null);
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

        public String getMimeType() {
            return this.mimeType_;
        }

        public ByteString getMimeTypeBytes() {
            return ByteString.copyFromUtf8(this.mimeType_);
        }

        public long getSizeBytes() {
            return this.sizeBytes_;
        }
    }

    /* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3438a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int DOWNLOAD_URL_FIELD_NUMBER = 2;
        public static final int FORM_FIELDS_FIELD_NUMBER = 4;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        public static final int UPLOAD_URL_FIELD_NUMBER = 3;
        private MapFieldLite<String, String> formFields_ = MapFieldLite.emptyMapField();
        private String id_ = "";
        private String downloadUrl_ = "";
        private String uploadUrl_ = "";

        /* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response$a.class */
        public static final class C3438a extends GeneratedMessageLite.Builder<Response, C3438a> implements Object {
            public C3438a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3438a(C3440a c3440a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks$Response$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response$b.class */
        public static final class C3439b {

            /* renamed from: a */
            public static final MapEntryLite<String, String> f10137a;

            static {
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f10137a = MapEntryLite.newDefaultInstance(fieldType, "", fieldType, "");
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

        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        public void clearUploadUrl() {
            this.uploadUrl_ = getDefaultInstance().getUploadUrl();
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<String, String> getMutableFormFieldsMap() {
            return internalGetMutableFormFields();
        }

        private MapFieldLite<String, String> internalGetFormFields() {
            return this.formFields_;
        }

        private MapFieldLite<String, String> internalGetMutableFormFields() {
            if (!this.formFields_.isMutable()) {
                this.formFields_ = this.formFields_.mutableCopy();
            }
            return this.formFields_;
        }

        public static C3438a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3438a newBuilder(Response response) {
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

        public void setId(String str) {
            str.getClass();
            this.id_ = str;
        }

        public void setIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.id_ = byteString.toStringUtf8();
        }

        public void setUploadUrl(String str) {
            str.getClass();
            this.uploadUrl_ = str;
        }

        public void setUploadUrlBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uploadUrl_ = byteString.toStringUtf8();
        }

        public boolean containsFormFields(String str) {
            str.getClass();
            return internalGetFormFields().containsKey(str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004\u0001����\u0001Ȉ\u0002Ȉ\u0003Ȉ\u00042", new Object[]{"id_", "downloadUrl_", "uploadUrl_", "formFields_", C3439b.f10137a});
                case 3:
                    return new Response();
                case 4:
                    return new C3438a(null);
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

        @Deprecated
        public Map<String, String> getFormFields() {
            return getFormFieldsMap();
        }

        public int getFormFieldsCount() {
            return internalGetFormFields().size();
        }

        public Map<String, String> getFormFieldsMap() {
            return Collections.unmodifiableMap(internalGetFormFields());
        }

        public String getFormFieldsOrDefault(String str, String str2) {
            str.getClass();
            MapFieldLite<String, String> internalGetFormFields = internalGetFormFields();
            if (internalGetFormFields.containsKey(str)) {
                str2 = internalGetFormFields.get(str);
            }
            return str2;
        }

        public String getFormFieldsOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, String> internalGetFormFields = internalGetFormFields();
            if (internalGetFormFields.containsKey(str)) {
                return internalGetFormFields.get(str);
            }
            throw new IllegalArgumentException();
        }

        public String getId() {
            return this.id_;
        }

        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }

        public String getUploadUrl() {
            return this.uploadUrl_;
        }

        public ByteString getUploadUrlBytes() {
            return ByteString.copyFromUtf8(this.uploadUrl_);
        }
    }

    /* renamed from: com.truecaller.api.services.videocallerid.v1.GetUploadLinks$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/videocallerid/v1/GetUploadLinks$b.class */
    public static final class C3441b extends GeneratedMessageLite.Builder<GetUploadLinks, C3441b> implements Object {
        public C3441b() {
            super(GetUploadLinks.DEFAULT_INSTANCE);
        }

        public C3441b(C3440a c3440a) {
            super(GetUploadLinks.DEFAULT_INSTANCE);
        }
    }

    static {
        GetUploadLinks getUploadLinks = new GetUploadLinks();
        DEFAULT_INSTANCE = getUploadLinks;
        GeneratedMessageLite.registerDefaultInstance(GetUploadLinks.class, getUploadLinks);
    }

    private GetUploadLinks() {
    }

    public static GetUploadLinks getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3441b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3441b newBuilder(GetUploadLinks getUploadLinks) {
        return DEFAULT_INSTANCE.createBuilder(getUploadLinks);
    }

    public static GetUploadLinks parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetUploadLinks parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetUploadLinks parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetUploadLinks parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetUploadLinks parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetUploadLinks parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetUploadLinks parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetUploadLinks parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetUploadLinks parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetUploadLinks parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetUploadLinks parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetUploadLinks parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetUploadLinks> parser() {
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
                return new GetUploadLinks();
            case 4:
                return new C3441b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetUploadLinks.class) {
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
