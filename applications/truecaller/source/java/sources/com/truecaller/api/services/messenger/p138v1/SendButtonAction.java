package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.messenger.v1.SendButtonAction */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendButtonAction.class */
public final class SendButtonAction extends GeneratedMessageLite<SendButtonAction, C3099b> implements Object {
    private static final SendButtonAction DEFAULT_INSTANCE;
    private static volatile Parser<SendButtonAction> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.SendButtonAction$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendButtonAction$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3096a> implements Object {
        public static final int BUTTON_ID_FIELD_NUMBER = 3;
        public static final int DATA_FIELD_NUMBER = 4;
        private static final Request DEFAULT_INSTANCE;
        public static final int MESSAGE_ID_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 1;
        private InputPeer recipient_;
        private String messageId_ = "";
        private String buttonId_ = "";
        private String data_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.SendButtonAction$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendButtonAction$Request$a.class */
        public static final class C3096a extends GeneratedMessageLite.Builder<Request, C3096a> implements Object {
            public C3096a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3096a(C3098a c3098a) {
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

        public void clearButtonId() {
            this.buttonId_ = getDefaultInstance().getButtonId();
        }

        public void clearData() {
            this.data_ = getDefaultInstance().getData();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
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

        public static C3096a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3096a newBuilder(Request request) {
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

        public void setButtonId(String str) {
            str.getClass();
            this.buttonId_ = str;
        }

        public void setButtonIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.buttonId_ = byteString.toStringUtf8();
        }

        public void setData(String str) {
            str.getClass();
            this.data_ = str;
        }

        public void setDataBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.data_ = byteString.toStringUtf8();
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setRecipient(InputPeer inputPeer) {
            inputPeer.getClass();
            this.recipient_ = inputPeer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"recipient_", "messageId_", "buttonId_", "data_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3096a(null);
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

        public String getButtonId() {
            return this.buttonId_;
        }

        public ByteString getButtonIdBytes() {
            return ByteString.copyFromUtf8(this.buttonId_);
        }

        public String getData() {
            return this.data_;
        }

        public ByteString getDataBytes() {
            return ByteString.copyFromUtf8(this.data_);
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public InputPeer getRecipient() {
            InputPeer inputPeer = this.recipient_;
            InputPeer inputPeer2 = inputPeer;
            if (inputPeer == null) {
                inputPeer2 = InputPeer.getDefaultInstance();
            }
            return inputPeer2;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.SendButtonAction$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendButtonAction$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3097a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.SendButtonAction$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendButtonAction$Response$a.class */
        public static final class C3097a extends GeneratedMessageLite.Builder<Response, C3097a> implements Object {
            public C3097a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3097a(C3098a c3098a) {
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

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3097a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3097a newBuilder(Response response) {
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

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
                case 3:
                    return new Response();
                case 4:
                    return new C3097a(null);
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
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.SendButtonAction$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/SendButtonAction$b.class */
    public static final class C3099b extends GeneratedMessageLite.Builder<SendButtonAction, C3099b> implements Object {
        public C3099b() {
            super(SendButtonAction.DEFAULT_INSTANCE);
        }

        public C3099b(C3098a c3098a) {
            super(SendButtonAction.DEFAULT_INSTANCE);
        }
    }

    static {
        SendButtonAction sendButtonAction = new SendButtonAction();
        DEFAULT_INSTANCE = sendButtonAction;
        GeneratedMessageLite.registerDefaultInstance(SendButtonAction.class, sendButtonAction);
    }

    private SendButtonAction() {
    }

    public static SendButtonAction getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3099b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3099b newBuilder(SendButtonAction sendButtonAction) {
        return DEFAULT_INSTANCE.createBuilder(sendButtonAction);
    }

    public static SendButtonAction parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SendButtonAction parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SendButtonAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SendButtonAction parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SendButtonAction parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SendButtonAction parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SendButtonAction parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SendButtonAction parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SendButtonAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SendButtonAction parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SendButtonAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SendButtonAction parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SendButtonAction> parser() {
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
                return new SendButtonAction();
            case 4:
                return new C3099b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SendButtonAction.class) {
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
