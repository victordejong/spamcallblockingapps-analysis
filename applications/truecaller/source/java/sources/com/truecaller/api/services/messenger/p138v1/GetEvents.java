package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1250c.AbstractC20461a;
/* renamed from: com.truecaller.api.services.messenger.v1.GetEvents */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetEvents.class */
public final class GetEvents extends GeneratedMessageLite<GetEvents, C3050b> implements Object {
    private static final GetEvents DEFAULT_INSTANCE;
    private static volatile Parser<GetEvents> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.GetEvents$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetEvents$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3047a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 1;
        private static final Request DEFAULT_INSTANCE;
        public static final int LIMIT_FIELD_NUMBER = 3;
        private static volatile Parser<Request> PARSER;
        public static final int SINCESEQ_FIELD_NUMBER = 2;
        private InputPeer context_;
        private int limit_;
        private long sinceSeq_;

        /* renamed from: com.truecaller.api.services.messenger.v1.GetEvents$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetEvents$Request$a.class */
        public static final class C3047a extends GeneratedMessageLite.Builder<Request, C3047a> implements Object {
            public C3047a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3047a(C3049a c3049a) {
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

        public void clearContext() {
            this.context_ = null;
        }

        public void clearLimit() {
            this.limit_ = 0;
        }

        public void clearSinceSeq() {
            this.sinceSeq_ = 0L;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContext(InputPeer inputPeer) {
            inputPeer.getClass();
            InputPeer inputPeer2 = this.context_;
            if (inputPeer2 == null || inputPeer2 == InputPeer.getDefaultInstance()) {
                this.context_ = inputPeer;
            } else {
                this.context_ = InputPeer.newBuilder(this.context_).mergeFrom(inputPeer).buildPartial();
            }
        }

        public static C3047a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3047a newBuilder(Request request) {
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

        public void setContext(InputPeer inputPeer) {
            inputPeer.getClass();
            this.context_ = inputPeer;
        }

        public void setLimit(int i) {
            this.limit_ = i;
        }

        public void setSinceSeq(long j) {
            this.sinceSeq_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u0002\u0003\u0004", new Object[]{"context_", "sinceSeq_", "limit_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3047a(null);
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

        public InputPeer getContext() {
            InputPeer inputPeer = this.context_;
            InputPeer inputPeer2 = inputPeer;
            if (inputPeer == null) {
                inputPeer2 = InputPeer.getDefaultInstance();
            }
            return inputPeer2;
        }

        public int getLimit() {
            return this.limit_;
        }

        public long getSinceSeq() {
            return this.sinceSeq_;
        }

        public boolean hasContext() {
            return this.context_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetEvents$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetEvents$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3048a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int EVENTS_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        private Internal.ProtobufList<Event> events_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.GetEvents$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetEvents$Response$a.class */
        public static final class C3048a extends GeneratedMessageLite.Builder<Response, C3048a> implements Object {
            public C3048a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3048a(C3049a c3049a) {
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

        public void addAllEvents(Iterable<? extends Event> iterable) {
            ensureEventsIsMutable();
            AbstractMessageLite.addAll(iterable, this.events_);
        }

        public void addEvents(int i, Event event) {
            event.getClass();
            ensureEventsIsMutable();
            this.events_.add(i, event);
        }

        public void addEvents(Event event) {
            event.getClass();
            ensureEventsIsMutable();
            this.events_.add(event);
        }

        public void clearEvents() {
            this.events_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureEventsIsMutable() {
            Internal.ProtobufList<Event> protobufList = this.events_;
            if (!protobufList.isModifiable()) {
                this.events_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3048a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3048a newBuilder(Response response) {
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

        public void removeEvents(int i) {
            ensureEventsIsMutable();
            this.events_.remove(i);
        }

        public void setEvents(int i, Event event) {
            event.getClass();
            ensureEventsIsMutable();
            this.events_.set(i, event);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"events_", Event.class});
                case 3:
                    return new Response();
                case 4:
                    return new C3048a(null);
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

        public Event getEvents(int i) {
            return this.events_.get(i);
        }

        public int getEventsCount() {
            return this.events_.size();
        }

        public List<Event> getEventsList() {
            return this.events_;
        }

        public AbstractC20461a getEventsOrBuilder(int i) {
            return this.events_.get(i);
        }

        public List<? extends AbstractC20461a> getEventsOrBuilderList() {
            return this.events_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetEvents$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetEvents$b.class */
    public static final class C3050b extends GeneratedMessageLite.Builder<GetEvents, C3050b> implements Object {
        public C3050b() {
            super(GetEvents.DEFAULT_INSTANCE);
        }

        public C3050b(C3049a c3049a) {
            super(GetEvents.DEFAULT_INSTANCE);
        }
    }

    static {
        GetEvents getEvents = new GetEvents();
        DEFAULT_INSTANCE = getEvents;
        GeneratedMessageLite.registerDefaultInstance(GetEvents.class, getEvents);
    }

    private GetEvents() {
    }

    public static GetEvents getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3050b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3050b newBuilder(GetEvents getEvents) {
        return DEFAULT_INSTANCE.createBuilder(getEvents);
    }

    public static GetEvents parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetEvents parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetEvents parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetEvents parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetEvents parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetEvents parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetEvents parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetEvents parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetEvents parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetEvents parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetEvents parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetEvents parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetEvents> parser() {
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
                return new GetEvents();
            case 4:
                return new C3050b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetEvents.class) {
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
