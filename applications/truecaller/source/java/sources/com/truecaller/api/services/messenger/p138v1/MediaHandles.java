package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
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
/* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles.class */
public final class MediaHandles extends GeneratedMessageLite<MediaHandles, C3083b> implements Object {
    private static final MediaHandles DEFAULT_INSTANCE;
    private static volatile Parser<MediaHandles> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3079a> implements Object {
        public static final int CONTENT_LENGTH_FIELD_NUMBER = 1;
        private static final Request DEFAULT_INSTANCE;
        public static final int MIME_TYPE_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        public static final int UPLOAD_TYPE_FIELD_NUMBER = 3;
        private long contentLength_;
        private String mimeType_ = "";
        private int uploadType_;

        /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Request$UploadType */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType.class */
        public enum UploadType implements Internal.EnumLite {
            MEDIA(0),
            AVATAR(1),
            UNRECOGNIZED(-1);
            
            public static final int AVATAR_VALUE = 1;
            public static final int MEDIA_VALUE = 0;
            private static final Internal.EnumLiteMap<UploadType> internalValueMap = new C3077a();
            private final int value;

            /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Request$UploadType$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType$a.class */
            public static final class C3077a implements Internal.EnumLiteMap<UploadType> {
                @Override // com.google.protobuf.Internal.EnumLiteMap
                public UploadType findValueByNumber(int i) {
                    return UploadType.forNumber(i);
                }
            }

            /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Request$UploadType$b */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Request$UploadType$b.class */
            public static final class C3078b implements Internal.EnumVerifier {

                /* renamed from: a */
                public static final Internal.EnumVerifier f10103a = new C3078b();

                @Override // com.google.protobuf.Internal.EnumVerifier
                public boolean isInRange(int i) {
                    return UploadType.forNumber(i) != null;
                }
            }

            UploadType(int i) {
                this.value = i;
            }

            public static UploadType forNumber(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return AVATAR;
                    }
                    return null;
                }
                return MEDIA;
            }

            public static Internal.EnumLiteMap<UploadType> internalGetValueMap() {
                return internalValueMap;
            }

            public static Internal.EnumVerifier internalGetVerifier() {
                return C3078b.f10103a;
            }

            @Deprecated
            public static UploadType valueOf(int i) {
                return forNumber(i);
            }

            @Override // com.google.protobuf.Internal.EnumLite
            public final int getNumber() {
                if (this != UNRECOGNIZED) {
                    return this.value;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Request$a.class */
        public static final class C3079a extends GeneratedMessageLite.Builder<Request, C3079a> implements Object {
            public C3079a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3079a(C3082a c3082a) {
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

        public void clearUploadType() {
            this.uploadType_ = 0;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3079a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3079a newBuilder(Request request) {
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

        public void setUploadType(UploadType uploadType) {
            this.uploadType_ = uploadType.getNumber();
        }

        public void setUploadTypeValue(int i) {
            this.uploadType_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\u0002\u0002Ȉ\u0003\f", new Object[]{"contentLength_", "mimeType_", "uploadType_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3079a(null);
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

        public UploadType getUploadType() {
            UploadType forNumber = UploadType.forNumber(this.uploadType_);
            UploadType uploadType = forNumber;
            if (forNumber == null) {
                uploadType = UploadType.UNRECOGNIZED;
            }
            return uploadType;
        }

        public int getUploadTypeValue() {
            return this.uploadType_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3080a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int DOWNLOAD_URL_FIELD_NUMBER = 2;
        public static final int FORM_FIELDS_FIELD_NUMBER = 4;
        private static volatile Parser<Response> PARSER;
        public static final int UPLOAD_EXPIRATION_FIELD_NUMBER = 3;
        public static final int UPLOAD_URL_FIELD_NUMBER = 1;
        private long uploadExpiration_;
        private MapFieldLite<String, String> formFields_ = MapFieldLite.emptyMapField();
        private String uploadUrl_ = "";
        private String downloadUrl_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Response$a.class */
        public static final class C3080a extends GeneratedMessageLite.Builder<Response, C3080a> implements Object {
            public C3080a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3080a(C3082a c3082a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$Response$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$Response$b.class */
        public static final class C3081b {

            /* renamed from: a */
            public static final MapEntryLite<String, String> f10104a;

            static {
                WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
                f10104a = MapEntryLite.newDefaultInstance(fieldType, "", fieldType, "");
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

        public static C3080a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3080a newBuilder(Response response) {
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
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004\u0001����\u0001Ȉ\u0002Ȉ\u0003\u0002\u00042", new Object[]{"uploadUrl_", "downloadUrl_", "uploadExpiration_", "formFields_", C3081b.f10104a});
                case 3:
                    return new Response();
                case 4:
                    return new C3080a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.v1.MediaHandles$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/MediaHandles$b.class */
    public static final class C3083b extends GeneratedMessageLite.Builder<MediaHandles, C3083b> implements Object {
        public C3083b() {
            super(MediaHandles.DEFAULT_INSTANCE);
        }

        public C3083b(C3082a c3082a) {
            super(MediaHandles.DEFAULT_INSTANCE);
        }
    }

    static {
        MediaHandles mediaHandles = new MediaHandles();
        DEFAULT_INSTANCE = mediaHandles;
        GeneratedMessageLite.registerDefaultInstance(MediaHandles.class, mediaHandles);
    }

    private MediaHandles() {
    }

    public static MediaHandles getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3083b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3083b newBuilder(MediaHandles mediaHandles) {
        return DEFAULT_INSTANCE.createBuilder(mediaHandles);
    }

    public static MediaHandles parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MediaHandles parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MediaHandles parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static MediaHandles parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static MediaHandles parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static MediaHandles parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static MediaHandles parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MediaHandles parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MediaHandles parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static MediaHandles parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static MediaHandles parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MediaHandles parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<MediaHandles> parser() {
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
                return new MediaHandles();
            case 4:
                return new C3083b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (MediaHandles.class) {
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
