package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.models.Urgency;
import com.truecaller.api.services.messenger.p138v1.models.input.InputMessageContent;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.messenger.v1.SendMessage */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendMessage.class */
public final class SendMessage extends GeneratedMessageLite<SendMessage, C3103b> implements Object {
    private static final SendMessage DEFAULT_INSTANCE;
    private static volatile Parser<SendMessage> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.SendMessage$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendMessage$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3100a> implements Object {
        public static final int CONTENT_FIELD_NUMBER = 3;
        private static final Request DEFAULT_INSTANCE;
        public static final int HIDE_PHONE_NUMBER_FIELD_NUMBER = 4;
        private static volatile Parser<Request> PARSER;
        public static final int RANDOM_ID_FIELD_NUMBER = 1;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int URGENCY_FIELD_NUMBER = 5;
        private InputMessageContent content_;
        private boolean hidePhoneNumber_;
        private long randomId_;
        private InputPeer recipient_;
        private int urgency_;

        /* renamed from: com.truecaller.api.services.messenger.v1.SendMessage$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendMessage$Request$a.class */
        public static final class C3100a extends GeneratedMessageLite.Builder<Request, C3100a> implements Object {
            public C3100a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3100a(C3102a c3102a) {
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

        public void clearContent() {
            this.content_ = null;
        }

        public void clearHidePhoneNumber() {
            this.hidePhoneNumber_ = false;
        }

        public void clearRandomId() {
            this.randomId_ = 0L;
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearUrgency() {
            this.urgency_ = 0;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContent(InputMessageContent inputMessageContent) {
            inputMessageContent.getClass();
            InputMessageContent inputMessageContent2 = this.content_;
            if (inputMessageContent2 == null || inputMessageContent2 == InputMessageContent.getDefaultInstance()) {
                this.content_ = inputMessageContent;
            } else {
                this.content_ = InputMessageContent.newBuilder(this.content_).mergeFrom(inputMessageContent).buildPartial();
            }
        }

        public void mergeRecipient(InputPeer inputPeer) {
            inputPeer.getClass();
            InputPeer inputPeer2 = this.recipient_;
            if (inputPeer2 == null || inputPeer2 == InputPeer.getDefaultInstance()) {
                this.recipient_ = inputPeer;
            } else {
                this.recipient_ = InputPeer.newBuilder(this.recipient_).mergeFrom(inputPeer).buildPartial();
            }
        }

        public static C3100a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3100a newBuilder(Request request) {
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

        public void setContent(InputMessageContent inputMessageContent) {
            inputMessageContent.getClass();
            this.content_ = inputMessageContent;
        }

        public void setHidePhoneNumber(boolean z) {
            this.hidePhoneNumber_ = z;
        }

        public void setRandomId(long j) {
            this.randomId_ = j;
        }

        public void setRecipient(InputPeer inputPeer) {
            inputPeer.getClass();
            this.recipient_ = inputPeer;
        }

        public void setUrgency(Urgency urgency) {
            this.urgency_ = urgency.getNumber();
        }

        public void setUrgencyValue(int i) {
            this.urgency_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001\u0002\u0002\t\u0003\t\u0004\u0007\u0005\f", new Object[]{"randomId_", "recipient_", "content_", "hidePhoneNumber_", "urgency_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3100a(null);
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

        public InputMessageContent getContent() {
            InputMessageContent inputMessageContent = this.content_;
            InputMessageContent inputMessageContent2 = inputMessageContent;
            if (inputMessageContent == null) {
                inputMessageContent2 = InputMessageContent.getDefaultInstance();
            }
            return inputMessageContent2;
        }

        public boolean getHidePhoneNumber() {
            return this.hidePhoneNumber_;
        }

        public long getRandomId() {
            return this.randomId_;
        }

        public InputPeer getRecipient() {
            InputPeer inputPeer = this.recipient_;
            InputPeer inputPeer2 = inputPeer;
            if (inputPeer == null) {
                inputPeer2 = InputPeer.getDefaultInstance();
            }
            return inputPeer2;
        }

        public Urgency getUrgency() {
            Urgency forNumber = Urgency.forNumber(this.urgency_);
            Urgency urgency = forNumber;
            if (forNumber == null) {
                urgency = Urgency.UNRECOGNIZED;
            }
            return urgency;
        }

        public int getUrgencyValue() {
            return this.urgency_;
        }

        public boolean hasContent() {
            return this.content_ != null;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.SendMessage$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendMessage$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3101a> implements Object {
        public static final int DATE_FIELD_NUMBER = 2;
        private static final Response DEFAULT_INSTANCE;
        public static final int FORWARDING_ID_FIELD_NUMBER = 4;
        public static final int MESSAGE_ID_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        public static final int SEQ_FIELD_NUMBER = 3;
        private int date_;
        private long seq_;
        private String messageId_ = "";
        private String forwardingId_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.SendMessage$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendMessage$Response$a.class */
        public static final class C3101a extends GeneratedMessageLite.Builder<Response, C3101a> implements Object {
            public C3101a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3101a(C3102a c3102a) {
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

        public void clearForwardingId() {
            this.forwardingId_ = getDefaultInstance().getForwardingId();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearSeq() {
            this.seq_ = 0L;
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3101a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3101a newBuilder(Response response) {
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

        public void setForwardingId(String str) {
            str.getClass();
            this.forwardingId_ = str;
        }

        public void setForwardingIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.forwardingId_ = byteString.toStringUtf8();
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setSeq(long j) {
            this.seq_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\u0004\u0003\u0002\u0004Ȉ", new Object[]{"messageId_", "date_", "seq_", "forwardingId_"});
                case 3:
                    return new Response();
                case 4:
                    return new C3101a(null);
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

        public String getForwardingId() {
            return this.forwardingId_;
        }

        public ByteString getForwardingIdBytes() {
            return ByteString.copyFromUtf8(this.forwardingId_);
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public long getSeq() {
            return this.seq_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.SendMessage$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendMessage$b.class */
    public static final class C3103b extends GeneratedMessageLite.Builder<SendMessage, C3103b> implements Object {
        public C3103b() {
            super(SendMessage.DEFAULT_INSTANCE);
        }

        public C3103b(C3102a c3102a) {
            super(SendMessage.DEFAULT_INSTANCE);
        }
    }

    static {
        SendMessage sendMessage = new SendMessage();
        DEFAULT_INSTANCE = sendMessage;
        GeneratedMessageLite.registerDefaultInstance(SendMessage.class, sendMessage);
    }

    private SendMessage() {
    }

    public static SendMessage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3103b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3103b newBuilder(SendMessage sendMessage) {
        return DEFAULT_INSTANCE.createBuilder(sendMessage);
    }

    public static SendMessage parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SendMessage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SendMessage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SendMessage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SendMessage parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SendMessage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SendMessage parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SendMessage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SendMessage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SendMessage parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SendMessage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SendMessage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SendMessage> parser() {
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
                return new SendMessage();
            case 4:
                return new C3103b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SendMessage.class) {
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
