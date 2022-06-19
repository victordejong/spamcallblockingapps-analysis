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
import com.truecaller.api.services.callerid.p135v1.model.PredefinedMessage;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1240a.p1241a.p1242c.AbstractC20439a;
/* renamed from: com.truecaller.api.services.callerid.v1.GetCallContextMessages */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetCallContextMessages.class */
public final class GetCallContextMessages extends GeneratedMessageLite<GetCallContextMessages, C2917b> implements Object {
    private static final GetCallContextMessages DEFAULT_INSTANCE;
    private static volatile Parser<GetCallContextMessages> PARSER;

    /* renamed from: com.truecaller.api.services.callerid.v1.GetCallContextMessages$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetCallContextMessages$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2914a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;

        /* renamed from: com.truecaller.api.services.callerid.v1.GetCallContextMessages$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetCallContextMessages$Request$a.class */
        public static final class C2914a extends GeneratedMessageLite.Builder<Request, C2914a> implements Object {
            public C2914a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2914a(C2916a c2916a) {
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

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2914a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2914a newBuilder(Request request) {
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

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
                case 3:
                    return new Request();
                case 4:
                    return new C2914a(null);
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
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.GetCallContextMessages$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetCallContextMessages$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C2915a> implements Object {
        public static final int CALLBACKPREDEFINEDMESSAGES_FIELD_NUMBER = 5;
        private static final Response DEFAULT_INSTANCE;
        public static final int MIDCALLPREDEFINEDMESSAGES_FIELD_NUMBER = 4;
        private static volatile Parser<Response> PARSER;
        public static final int PREDEFINEDMESSAGES_FIELD_NUMBER = 1;
        public static final int SECONDCALLPREDEFINEDMESSAGES_FIELD_NUMBER = 3;
        public static final int TTL_FIELD_NUMBER = 2;
        private int ttl_;
        private Internal.ProtobufList<PredefinedMessage> predefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<PredefinedMessage> secondCallPredefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<PredefinedMessage> midCallPredefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<PredefinedMessage> callbackPredefinedMessages_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.callerid.v1.GetCallContextMessages$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetCallContextMessages$Response$a.class */
        public static final class C2915a extends GeneratedMessageLite.Builder<Response, C2915a> implements Object {
            public C2915a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C2915a(C2916a c2916a) {
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

        public void addAllCallbackPredefinedMessages(Iterable<? extends PredefinedMessage> iterable) {
            ensureCallbackPredefinedMessagesIsMutable();
            AbstractMessageLite.addAll(iterable, this.callbackPredefinedMessages_);
        }

        public void addAllMidCallPredefinedMessages(Iterable<? extends PredefinedMessage> iterable) {
            ensureMidCallPredefinedMessagesIsMutable();
            AbstractMessageLite.addAll(iterable, this.midCallPredefinedMessages_);
        }

        public void addAllPredefinedMessages(Iterable<? extends PredefinedMessage> iterable) {
            ensurePredefinedMessagesIsMutable();
            AbstractMessageLite.addAll(iterable, this.predefinedMessages_);
        }

        public void addAllSecondCallPredefinedMessages(Iterable<? extends PredefinedMessage> iterable) {
            ensureSecondCallPredefinedMessagesIsMutable();
            AbstractMessageLite.addAll(iterable, this.secondCallPredefinedMessages_);
        }

        public void addCallbackPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureCallbackPredefinedMessagesIsMutable();
            this.callbackPredefinedMessages_.add(i, predefinedMessage);
        }

        public void addCallbackPredefinedMessages(PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureCallbackPredefinedMessagesIsMutable();
            this.callbackPredefinedMessages_.add(predefinedMessage);
        }

        public void addMidCallPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureMidCallPredefinedMessagesIsMutable();
            this.midCallPredefinedMessages_.add(i, predefinedMessage);
        }

        public void addMidCallPredefinedMessages(PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureMidCallPredefinedMessagesIsMutable();
            this.midCallPredefinedMessages_.add(predefinedMessage);
        }

        public void addPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensurePredefinedMessagesIsMutable();
            this.predefinedMessages_.add(i, predefinedMessage);
        }

        public void addPredefinedMessages(PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensurePredefinedMessagesIsMutable();
            this.predefinedMessages_.add(predefinedMessage);
        }

        public void addSecondCallPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureSecondCallPredefinedMessagesIsMutable();
            this.secondCallPredefinedMessages_.add(i, predefinedMessage);
        }

        public void addSecondCallPredefinedMessages(PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureSecondCallPredefinedMessagesIsMutable();
            this.secondCallPredefinedMessages_.add(predefinedMessage);
        }

        public void clearCallbackPredefinedMessages() {
            this.callbackPredefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearMidCallPredefinedMessages() {
            this.midCallPredefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearPredefinedMessages() {
            this.predefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearSecondCallPredefinedMessages() {
            this.secondCallPredefinedMessages_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearTtl() {
            this.ttl_ = 0;
        }

        private void ensureCallbackPredefinedMessagesIsMutable() {
            Internal.ProtobufList<PredefinedMessage> protobufList = this.callbackPredefinedMessages_;
            if (!protobufList.isModifiable()) {
                this.callbackPredefinedMessages_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureMidCallPredefinedMessagesIsMutable() {
            Internal.ProtobufList<PredefinedMessage> protobufList = this.midCallPredefinedMessages_;
            if (!protobufList.isModifiable()) {
                this.midCallPredefinedMessages_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensurePredefinedMessagesIsMutable() {
            Internal.ProtobufList<PredefinedMessage> protobufList = this.predefinedMessages_;
            if (!protobufList.isModifiable()) {
                this.predefinedMessages_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureSecondCallPredefinedMessagesIsMutable() {
            Internal.ProtobufList<PredefinedMessage> protobufList = this.secondCallPredefinedMessages_;
            if (!protobufList.isModifiable()) {
                this.secondCallPredefinedMessages_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2915a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2915a newBuilder(Response response) {
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

        public void removeCallbackPredefinedMessages(int i) {
            ensureCallbackPredefinedMessagesIsMutable();
            this.callbackPredefinedMessages_.remove(i);
        }

        public void removeMidCallPredefinedMessages(int i) {
            ensureMidCallPredefinedMessagesIsMutable();
            this.midCallPredefinedMessages_.remove(i);
        }

        public void removePredefinedMessages(int i) {
            ensurePredefinedMessagesIsMutable();
            this.predefinedMessages_.remove(i);
        }

        public void removeSecondCallPredefinedMessages(int i) {
            ensureSecondCallPredefinedMessagesIsMutable();
            this.secondCallPredefinedMessages_.remove(i);
        }

        public void setCallbackPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureCallbackPredefinedMessagesIsMutable();
            this.callbackPredefinedMessages_.set(i, predefinedMessage);
        }

        public void setMidCallPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureMidCallPredefinedMessagesIsMutable();
            this.midCallPredefinedMessages_.set(i, predefinedMessage);
        }

        public void setPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensurePredefinedMessagesIsMutable();
            this.predefinedMessages_.set(i, predefinedMessage);
        }

        public void setSecondCallPredefinedMessages(int i, PredefinedMessage predefinedMessage) {
            predefinedMessage.getClass();
            ensureSecondCallPredefinedMessagesIsMutable();
            this.secondCallPredefinedMessages_.set(i, predefinedMessage);
        }

        public void setTtl(int i) {
            this.ttl_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0004��\u0001\u001b\u0002\u0004\u0003\u001b\u0004\u001b\u0005\u001b", new Object[]{"predefinedMessages_", PredefinedMessage.class, "ttl_", "secondCallPredefinedMessages_", PredefinedMessage.class, "midCallPredefinedMessages_", PredefinedMessage.class, "callbackPredefinedMessages_", PredefinedMessage.class});
                case 3:
                    return new Response();
                case 4:
                    return new C2915a(null);
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

        public PredefinedMessage getCallbackPredefinedMessages(int i) {
            return this.callbackPredefinedMessages_.get(i);
        }

        public int getCallbackPredefinedMessagesCount() {
            return this.callbackPredefinedMessages_.size();
        }

        public List<PredefinedMessage> getCallbackPredefinedMessagesList() {
            return this.callbackPredefinedMessages_;
        }

        public AbstractC20439a getCallbackPredefinedMessagesOrBuilder(int i) {
            return this.callbackPredefinedMessages_.get(i);
        }

        public List<? extends AbstractC20439a> getCallbackPredefinedMessagesOrBuilderList() {
            return this.callbackPredefinedMessages_;
        }

        public PredefinedMessage getMidCallPredefinedMessages(int i) {
            return this.midCallPredefinedMessages_.get(i);
        }

        public int getMidCallPredefinedMessagesCount() {
            return this.midCallPredefinedMessages_.size();
        }

        public List<PredefinedMessage> getMidCallPredefinedMessagesList() {
            return this.midCallPredefinedMessages_;
        }

        public AbstractC20439a getMidCallPredefinedMessagesOrBuilder(int i) {
            return this.midCallPredefinedMessages_.get(i);
        }

        public List<? extends AbstractC20439a> getMidCallPredefinedMessagesOrBuilderList() {
            return this.midCallPredefinedMessages_;
        }

        public PredefinedMessage getPredefinedMessages(int i) {
            return this.predefinedMessages_.get(i);
        }

        public int getPredefinedMessagesCount() {
            return this.predefinedMessages_.size();
        }

        public List<PredefinedMessage> getPredefinedMessagesList() {
            return this.predefinedMessages_;
        }

        public AbstractC20439a getPredefinedMessagesOrBuilder(int i) {
            return this.predefinedMessages_.get(i);
        }

        public List<? extends AbstractC20439a> getPredefinedMessagesOrBuilderList() {
            return this.predefinedMessages_;
        }

        public PredefinedMessage getSecondCallPredefinedMessages(int i) {
            return this.secondCallPredefinedMessages_.get(i);
        }

        public int getSecondCallPredefinedMessagesCount() {
            return this.secondCallPredefinedMessages_.size();
        }

        public List<PredefinedMessage> getSecondCallPredefinedMessagesList() {
            return this.secondCallPredefinedMessages_;
        }

        public AbstractC20439a getSecondCallPredefinedMessagesOrBuilder(int i) {
            return this.secondCallPredefinedMessages_.get(i);
        }

        public List<? extends AbstractC20439a> getSecondCallPredefinedMessagesOrBuilderList() {
            return this.secondCallPredefinedMessages_;
        }

        public int getTtl() {
            return this.ttl_;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.GetCallContextMessages$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/GetCallContextMessages$b.class */
    public static final class C2917b extends GeneratedMessageLite.Builder<GetCallContextMessages, C2917b> implements Object {
        public C2917b() {
            super(GetCallContextMessages.DEFAULT_INSTANCE);
        }

        public C2917b(C2916a c2916a) {
            super(GetCallContextMessages.DEFAULT_INSTANCE);
        }
    }

    static {
        GetCallContextMessages getCallContextMessages = new GetCallContextMessages();
        DEFAULT_INSTANCE = getCallContextMessages;
        GeneratedMessageLite.registerDefaultInstance(GetCallContextMessages.class, getCallContextMessages);
    }

    private GetCallContextMessages() {
    }

    public static GetCallContextMessages getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2917b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2917b newBuilder(GetCallContextMessages getCallContextMessages) {
        return DEFAULT_INSTANCE.createBuilder(getCallContextMessages);
    }

    public static GetCallContextMessages parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetCallContextMessages parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetCallContextMessages parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetCallContextMessages parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetCallContextMessages parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetCallContextMessages parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetCallContextMessages parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetCallContextMessages parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetCallContextMessages parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetCallContextMessages parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetCallContextMessages parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetCallContextMessages parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetCallContextMessages> parser() {
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
                return new GetCallContextMessages();
            case 4:
                return new C2917b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetCallContextMessages.class) {
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
