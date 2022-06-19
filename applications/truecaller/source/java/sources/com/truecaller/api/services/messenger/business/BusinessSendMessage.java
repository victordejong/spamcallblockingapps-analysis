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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessSendMessage.class */
public final class BusinessSendMessage extends GeneratedMessageLite<BusinessSendMessage, C3002b> implements Object {
    private static final BusinessSendMessage DEFAULT_INSTANCE;
    private static volatile Parser<BusinessSendMessage> PARSER;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessSendMessage$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2999a> implements Object {
        public static final int CATEGORY_FIELD_NUMBER = 5;
        public static final int CONTENT_FIELD_NUMBER = 3;
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int RANDOM_ID_FIELD_NUMBER = 1;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int TTLSECONDS_FIELD_NUMBER = 4;
        private int category_;
        private BusinessInputMessageContent content_;
        private long randomId_;
        private BusinessInputPeer recipient_;
        private int ttlSeconds_;

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessSendMessage$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessSendMessage$Request$a.class */
        public static final class C2999a extends GeneratedMessageLite.Builder<Request, C2999a> implements Object {
            public C2999a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2999a(C3001a c3001a) {
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

        public void clearCategory() {
            this.category_ = 0;
        }

        public void clearContent() {
            this.content_ = null;
        }

        public void clearRandomId() {
            this.randomId_ = 0L;
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearTtlSeconds() {
            this.ttlSeconds_ = 0;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContent(BusinessInputMessageContent businessInputMessageContent) {
            businessInputMessageContent.getClass();
            BusinessInputMessageContent businessInputMessageContent2 = this.content_;
            if (businessInputMessageContent2 == null || businessInputMessageContent2 == BusinessInputMessageContent.getDefaultInstance()) {
                this.content_ = businessInputMessageContent;
            } else {
                this.content_ = BusinessInputMessageContent.newBuilder(this.content_).mergeFrom(businessInputMessageContent).buildPartial();
            }
        }

        public void mergeRecipient(BusinessInputPeer businessInputPeer) {
            businessInputPeer.getClass();
            BusinessInputPeer businessInputPeer2 = this.recipient_;
            if (businessInputPeer2 == null || businessInputPeer2 == BusinessInputPeer.getDefaultInstance()) {
                this.recipient_ = businessInputPeer;
            } else {
                this.recipient_ = BusinessInputPeer.newBuilder(this.recipient_).mergeFrom(businessInputPeer).buildPartial();
            }
        }

        public static C2999a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2999a newBuilder(Request request) {
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

        public void setCategory(BusinessMessageCategory businessMessageCategory) {
            this.category_ = businessMessageCategory.getNumber();
        }

        public void setCategoryValue(int i) {
            this.category_ = i;
        }

        public void setContent(BusinessInputMessageContent businessInputMessageContent) {
            businessInputMessageContent.getClass();
            this.content_ = businessInputMessageContent;
        }

        public void setRandomId(long j) {
            this.randomId_ = j;
        }

        public void setRecipient(BusinessInputPeer businessInputPeer) {
            businessInputPeer.getClass();
            this.recipient_ = businessInputPeer;
        }

        public void setTtlSeconds(int i) {
            this.ttlSeconds_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001\u0002\u0002\t\u0003\t\u0004\u0004\u0005\f", new Object[]{"randomId_", "recipient_", "content_", "ttlSeconds_", "category_"});
                case 3:
                    return new Request();
                case 4:
                    return new C2999a(null);
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

        public BusinessMessageCategory getCategory() {
            BusinessMessageCategory forNumber = BusinessMessageCategory.forNumber(this.category_);
            BusinessMessageCategory businessMessageCategory = forNumber;
            if (forNumber == null) {
                businessMessageCategory = BusinessMessageCategory.UNRECOGNIZED;
            }
            return businessMessageCategory;
        }

        public int getCategoryValue() {
            return this.category_;
        }

        public BusinessInputMessageContent getContent() {
            BusinessInputMessageContent businessInputMessageContent = this.content_;
            BusinessInputMessageContent businessInputMessageContent2 = businessInputMessageContent;
            if (businessInputMessageContent == null) {
                businessInputMessageContent2 = BusinessInputMessageContent.getDefaultInstance();
            }
            return businessInputMessageContent2;
        }

        public long getRandomId() {
            return this.randomId_;
        }

        public BusinessInputPeer getRecipient() {
            BusinessInputPeer businessInputPeer = this.recipient_;
            BusinessInputPeer businessInputPeer2 = businessInputPeer;
            if (businessInputPeer == null) {
                businessInputPeer2 = BusinessInputPeer.getDefaultInstance();
            }
            return businessInputPeer2;
        }

        public int getTtlSeconds() {
            return this.ttlSeconds_;
        }

        public boolean hasContent() {
            return this.content_ != null;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessSendMessage$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3000a> implements Object {
        public static final int DATE_FIELD_NUMBER = 2;
        private static final Response DEFAULT_INSTANCE;
        public static final int MESSAGE_ID_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        private int date_;
        private String messageId_ = "";

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessSendMessage$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessSendMessage$Response$a.class */
        public static final class C3000a extends GeneratedMessageLite.Builder<Response, C3000a> implements Object {
            public C3000a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3000a(C3001a c3001a) {
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

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3000a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3000a newBuilder(Response response) {
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

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\u0004", new Object[]{"messageId_", "date_"});
                case 3:
                    return new Response();
                case 4:
                    return new C3000a(null);
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

        public int getDate() {
            return this.date_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.business.BusinessSendMessage$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessSendMessage$b.class */
    public static final class C3002b extends GeneratedMessageLite.Builder<BusinessSendMessage, C3002b> implements Object {
        public C3002b() {
            super(BusinessSendMessage.DEFAULT_INSTANCE);
        }

        public C3002b(C3001a c3001a) {
            super(BusinessSendMessage.DEFAULT_INSTANCE);
        }
    }

    static {
        BusinessSendMessage businessSendMessage = new BusinessSendMessage();
        DEFAULT_INSTANCE = businessSendMessage;
        GeneratedMessageLite.registerDefaultInstance(BusinessSendMessage.class, businessSendMessage);
    }

    private BusinessSendMessage() {
    }

    public static BusinessSendMessage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3002b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3002b newBuilder(BusinessSendMessage businessSendMessage) {
        return DEFAULT_INSTANCE.createBuilder(businessSendMessage);
    }

    public static BusinessSendMessage parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessSendMessage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessSendMessage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BusinessSendMessage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BusinessSendMessage parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BusinessSendMessage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static BusinessSendMessage parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessSendMessage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessSendMessage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BusinessSendMessage parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BusinessSendMessage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BusinessSendMessage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<BusinessSendMessage> parser() {
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
                return new BusinessSendMessage();
            case 4:
                return new C3002b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (BusinessSendMessage.class) {
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
