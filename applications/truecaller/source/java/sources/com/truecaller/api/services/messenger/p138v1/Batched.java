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
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import com.truecaller.api.services.messenger.p138v1.SendMessage;
import com.truecaller.api.services.messenger.p138v1.SendReaction;
import com.truecaller.api.services.messenger.p138v1.SendReport;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.truecaller.api.services.messenger.v1.Batched */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched.class */
public final class Batched extends GeneratedMessageLite<Batched, C3025b> implements Object {
    private static final Batched DEFAULT_INSTANCE;
    private static volatile Parser<Batched> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3018a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int REQUESTS_FIELD_NUMBER = 1;
        private Internal.ProtobufList<Payload> requests_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Request$Payload */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Request$Payload.class */
        public static final class Payload extends GeneratedMessageLite<Payload, C3017a> implements AbstractC3019b {
            private static final Payload DEFAULT_INSTANCE;
            public static final int ID_FIELD_NUMBER = 1;
            private static volatile Parser<Payload> PARSER;
            public static final int SEND_MESSAGE_FIELD_NUMBER = 2;
            public static final int SEND_REACTION_FIELD_NUMBER = 4;
            public static final int SEND_REPORT_FIELD_NUMBER = 3;
            private int dataCase_ = 0;
            private Object data_;
            private long id_;

            /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Request$Payload$DataCase */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Request$Payload$DataCase.class */
            public enum DataCase {
                SEND_MESSAGE(2),
                SEND_REPORT(3),
                SEND_REACTION(4),
                DATA_NOT_SET(0);
                
                private final int value;

                DataCase(int i) {
                    this.value = i;
                }

                public static DataCase forNumber(int i) {
                    if (i != 0) {
                        if (i == 2) {
                            return SEND_MESSAGE;
                        }
                        if (i == 3) {
                            return SEND_REPORT;
                        }
                        if (i == 4) {
                            return SEND_REACTION;
                        }
                        return null;
                    }
                    return DATA_NOT_SET;
                }

                @Deprecated
                public static DataCase valueOf(int i) {
                    return forNumber(i);
                }

                public int getNumber() {
                    return this.value;
                }
            }

            /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Request$Payload$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Request$Payload$a.class */
            public static final class C3017a extends GeneratedMessageLite.Builder<Payload, C3017a> implements AbstractC3019b {
                public C3017a() {
                    super(Payload.DEFAULT_INSTANCE);
                }

                public C3017a(C3024a c3024a) {
                    super(Payload.DEFAULT_INSTANCE);
                }
            }

            static {
                Payload payload = new Payload();
                DEFAULT_INSTANCE = payload;
                GeneratedMessageLite.registerDefaultInstance(Payload.class, payload);
            }

            private Payload() {
            }

            public void clearData() {
                this.dataCase_ = 0;
                this.data_ = null;
            }

            public void clearId() {
                this.id_ = 0L;
            }

            public void clearSendMessage() {
                if (this.dataCase_ == 2) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public void clearSendReaction() {
                if (this.dataCase_ == 4) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public void clearSendReport() {
                if (this.dataCase_ == 3) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public static Payload getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public void mergeSendMessage(SendMessage.Request request) {
                request.getClass();
                if (this.dataCase_ != 2 || this.data_ == SendMessage.Request.getDefaultInstance()) {
                    this.data_ = request;
                } else {
                    this.data_ = SendMessage.Request.newBuilder((SendMessage.Request) this.data_).mergeFrom(request).buildPartial();
                }
                this.dataCase_ = 2;
            }

            public void mergeSendReaction(SendReaction.Request request) {
                request.getClass();
                if (this.dataCase_ != 4 || this.data_ == SendReaction.Request.getDefaultInstance()) {
                    this.data_ = request;
                } else {
                    this.data_ = SendReaction.Request.newBuilder((SendReaction.Request) this.data_).mergeFrom(request).buildPartial();
                }
                this.dataCase_ = 4;
            }

            public void mergeSendReport(SendReport.Request request) {
                request.getClass();
                if (this.dataCase_ != 3 || this.data_ == SendReport.Request.getDefaultInstance()) {
                    this.data_ = request;
                } else {
                    this.data_ = SendReport.Request.newBuilder((SendReport.Request) this.data_).mergeFrom(request).buildPartial();
                }
                this.dataCase_ = 3;
            }

            public static C3017a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3017a newBuilder(Payload payload) {
                return DEFAULT_INSTANCE.createBuilder(payload);
            }

            public static Payload parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Payload parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Payload parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Payload parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Payload parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Payload parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Payload parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Payload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Payload parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<Payload> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setId(long j) {
                this.id_ = j;
            }

            public void setSendMessage(SendMessage.Request request) {
                request.getClass();
                this.data_ = request;
                this.dataCase_ = 2;
            }

            public void setSendReaction(SendReaction.Request request) {
                request.getClass();
                this.data_ = request;
                this.dataCase_ = 4;
            }

            public void setSendReport(SendReport.Request request) {
                request.getClass();
                this.data_ = request;
                this.dataCase_ = 3;
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004\u0001��\u0001\u0004\u0004������\u0001\u0002\u0002<��\u0003<��\u0004<��", new Object[]{"data_", "dataCase_", "id_", SendMessage.Request.class, SendReport.Request.class, SendReaction.Request.class});
                    case 3:
                        return new Payload();
                    case 4:
                        return new C3017a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (Payload.class) {
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

            public DataCase getDataCase() {
                return DataCase.forNumber(this.dataCase_);
            }

            public long getId() {
                return this.id_;
            }

            public SendMessage.Request getSendMessage() {
                return this.dataCase_ == 2 ? (SendMessage.Request) this.data_ : SendMessage.Request.getDefaultInstance();
            }

            public SendReaction.Request getSendReaction() {
                return this.dataCase_ == 4 ? (SendReaction.Request) this.data_ : SendReaction.Request.getDefaultInstance();
            }

            public SendReport.Request getSendReport() {
                return this.dataCase_ == 3 ? (SendReport.Request) this.data_ : SendReport.Request.getDefaultInstance();
            }

            public boolean hasSendMessage() {
                return this.dataCase_ == 2;
            }

            public boolean hasSendReaction() {
                return this.dataCase_ == 4;
            }

            public boolean hasSendReport() {
                return this.dataCase_ == 3;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Request$a.class */
        public static final class C3018a extends GeneratedMessageLite.Builder<Request, C3018a> implements Object {
            public C3018a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3018a(C3024a c3024a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Request$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Request$b.class */
        public interface AbstractC3019b extends MessageLiteOrBuilder {
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void addAllRequests(Iterable<? extends Payload> iterable) {
            ensureRequestsIsMutable();
            AbstractMessageLite.addAll(iterable, this.requests_);
        }

        public void addRequests(int i, Payload payload) {
            payload.getClass();
            ensureRequestsIsMutable();
            this.requests_.add(i, payload);
        }

        public void addRequests(Payload payload) {
            payload.getClass();
            ensureRequestsIsMutable();
            this.requests_.add(payload);
        }

        public void clearRequests() {
            this.requests_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureRequestsIsMutable() {
            Internal.ProtobufList<Payload> protobufList = this.requests_;
            if (!protobufList.isModifiable()) {
                this.requests_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3018a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3018a newBuilder(Request request) {
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

        public void removeRequests(int i) {
            ensureRequestsIsMutable();
            this.requests_.remove(i);
        }

        public void setRequests(int i, Payload payload) {
            payload.getClass();
            ensureRequestsIsMutable();
            this.requests_.set(i, payload);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"requests_", Payload.class});
                case 3:
                    return new Request();
                case 4:
                    return new C3018a(null);
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

        public Payload getRequests(int i) {
            return this.requests_.get(i);
        }

        public int getRequestsCount() {
            return this.requests_.size();
        }

        public List<Payload> getRequestsList() {
            return this.requests_;
        }

        public AbstractC3019b getRequestsOrBuilder(int i) {
            return this.requests_.get(i);
        }

        public List<? extends AbstractC3019b> getRequestsOrBuilderList() {
            return this.requests_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3022a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;
        public static final int RESPONSES_FIELD_NUMBER = 1;
        private MapFieldLite<Long, Payload> responses_ = MapFieldLite.emptyMapField();

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$BatchError */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$BatchError.class */
        public static final class BatchError extends GeneratedMessageLite<BatchError, C3020a> implements Object {
            public static final int CODE_FIELD_NUMBER = 1;
            private static final BatchError DEFAULT_INSTANCE;
            public static final int DESCRIPTION_FIELD_NUMBER = 2;
            private static volatile Parser<BatchError> PARSER;
            private int code_;
            private String description_ = "";

            /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$BatchError$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$BatchError$a.class */
            public static final class C3020a extends GeneratedMessageLite.Builder<BatchError, C3020a> implements Object {
                public C3020a() {
                    super(BatchError.DEFAULT_INSTANCE);
                }

                public C3020a(C3024a c3024a) {
                    super(BatchError.DEFAULT_INSTANCE);
                }
            }

            static {
                BatchError batchError = new BatchError();
                DEFAULT_INSTANCE = batchError;
                GeneratedMessageLite.registerDefaultInstance(BatchError.class, batchError);
            }

            private BatchError() {
            }

            public void clearCode() {
                this.code_ = 0;
            }

            public void clearDescription() {
                this.description_ = getDefaultInstance().getDescription();
            }

            public static BatchError getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3020a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3020a newBuilder(BatchError batchError) {
                return DEFAULT_INSTANCE.createBuilder(batchError);
            }

            public static BatchError parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static BatchError parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static BatchError parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static BatchError parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static BatchError parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static BatchError parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static BatchError parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static BatchError parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static BatchError parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static BatchError parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static BatchError parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static BatchError parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<BatchError> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setCode(int i) {
                this.code_ = i;
            }

            public void setDescription(String str) {
                str.getClass();
                this.description_ = str;
            }

            public void setDescriptionBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.description_ = byteString.toStringUtf8();
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0004\u0002Ȉ", new Object[]{"code_", "description_"});
                    case 3:
                        return new BatchError();
                    case 4:
                        return new C3020a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (BatchError.class) {
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

            public int getCode() {
                return this.code_;
            }

            public String getDescription() {
                return this.description_;
            }

            public ByteString getDescriptionBytes() {
                return ByteString.copyFromUtf8(this.description_);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$Payload */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$Payload.class */
        public static final class Payload extends GeneratedMessageLite<Payload, C3021a> implements Object {
            private static final Payload DEFAULT_INSTANCE;
            public static final int ERROR_FIELD_NUMBER = 1;
            private static volatile Parser<Payload> PARSER;
            public static final int SEND_MESSAGE_FIELD_NUMBER = 2;
            public static final int SEND_REACTION_FIELD_NUMBER = 4;
            public static final int SEND_REPORT_FIELD_NUMBER = 3;
            private int dataCase_ = 0;
            private Object data_;

            /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$Payload$DataCase */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$Payload$DataCase.class */
            public enum DataCase {
                ERROR(1),
                SEND_MESSAGE(2),
                SEND_REPORT(3),
                SEND_REACTION(4),
                DATA_NOT_SET(0);
                
                private final int value;

                DataCase(int i) {
                    this.value = i;
                }

                public static DataCase forNumber(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return ERROR;
                        }
                        if (i == 2) {
                            return SEND_MESSAGE;
                        }
                        if (i == 3) {
                            return SEND_REPORT;
                        }
                        if (i == 4) {
                            return SEND_REACTION;
                        }
                        return null;
                    }
                    return DATA_NOT_SET;
                }

                @Deprecated
                public static DataCase valueOf(int i) {
                    return forNumber(i);
                }

                public int getNumber() {
                    return this.value;
                }
            }

            /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$Payload$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$Payload$a.class */
            public static final class C3021a extends GeneratedMessageLite.Builder<Payload, C3021a> implements Object {
                public C3021a() {
                    super(Payload.DEFAULT_INSTANCE);
                }

                public C3021a(C3024a c3024a) {
                    super(Payload.DEFAULT_INSTANCE);
                }
            }

            static {
                Payload payload = new Payload();
                DEFAULT_INSTANCE = payload;
                GeneratedMessageLite.registerDefaultInstance(Payload.class, payload);
            }

            private Payload() {
            }

            public void clearData() {
                this.dataCase_ = 0;
                this.data_ = null;
            }

            public void clearError() {
                if (this.dataCase_ == 1) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public void clearSendMessage() {
                if (this.dataCase_ == 2) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public void clearSendReaction() {
                if (this.dataCase_ == 4) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public void clearSendReport() {
                if (this.dataCase_ == 3) {
                    this.dataCase_ = 0;
                    this.data_ = null;
                }
            }

            public static Payload getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public void mergeError(BatchError batchError) {
                batchError.getClass();
                if (this.dataCase_ != 1 || this.data_ == BatchError.getDefaultInstance()) {
                    this.data_ = batchError;
                } else {
                    this.data_ = BatchError.newBuilder((BatchError) this.data_).mergeFrom(batchError).buildPartial();
                }
                this.dataCase_ = 1;
            }

            public void mergeSendMessage(SendMessage.Response response) {
                response.getClass();
                if (this.dataCase_ != 2 || this.data_ == SendMessage.Response.getDefaultInstance()) {
                    this.data_ = response;
                } else {
                    this.data_ = SendMessage.Response.newBuilder((SendMessage.Response) this.data_).mergeFrom(response).buildPartial();
                }
                this.dataCase_ = 2;
            }

            public void mergeSendReaction(SendReaction.Response response) {
                response.getClass();
                if (this.dataCase_ != 4 || this.data_ == SendReaction.Response.getDefaultInstance()) {
                    this.data_ = response;
                } else {
                    this.data_ = SendReaction.Response.newBuilder((SendReaction.Response) this.data_).mergeFrom(response).buildPartial();
                }
                this.dataCase_ = 4;
            }

            public void mergeSendReport(SendReport.Response response) {
                response.getClass();
                if (this.dataCase_ != 3 || this.data_ == SendReport.Response.getDefaultInstance()) {
                    this.data_ = response;
                } else {
                    this.data_ = SendReport.Response.newBuilder((SendReport.Response) this.data_).mergeFrom(response).buildPartial();
                }
                this.dataCase_ = 3;
            }

            public static C3021a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3021a newBuilder(Payload payload) {
                return DEFAULT_INSTANCE.createBuilder(payload);
            }

            public static Payload parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Payload parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Payload parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Payload parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Payload parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Payload parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Payload parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Payload parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Payload parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Payload parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<Payload> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setError(BatchError batchError) {
                batchError.getClass();
                this.data_ = batchError;
                this.dataCase_ = 1;
            }

            public void setSendMessage(SendMessage.Response response) {
                response.getClass();
                this.data_ = response;
                this.dataCase_ = 2;
            }

            public void setSendReaction(SendReaction.Response response) {
                response.getClass();
                this.data_ = response;
                this.dataCase_ = 4;
            }

            public void setSendReport(SendReport.Response response) {
                response.getClass();
                this.data_ = response;
                this.dataCase_ = 3;
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004\u0001��\u0001\u0004\u0004������\u0001<��\u0002<��\u0003<��\u0004<��", new Object[]{"data_", "dataCase_", BatchError.class, SendMessage.Response.class, SendReport.Response.class, SendReaction.Response.class});
                    case 3:
                        return new Payload();
                    case 4:
                        return new C3021a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (Payload.class) {
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

            public DataCase getDataCase() {
                return DataCase.forNumber(this.dataCase_);
            }

            public BatchError getError() {
                return this.dataCase_ == 1 ? (BatchError) this.data_ : BatchError.getDefaultInstance();
            }

            public SendMessage.Response getSendMessage() {
                return this.dataCase_ == 2 ? (SendMessage.Response) this.data_ : SendMessage.Response.getDefaultInstance();
            }

            public SendReaction.Response getSendReaction() {
                return this.dataCase_ == 4 ? (SendReaction.Response) this.data_ : SendReaction.Response.getDefaultInstance();
            }

            public SendReport.Response getSendReport() {
                return this.dataCase_ == 3 ? (SendReport.Response) this.data_ : SendReport.Response.getDefaultInstance();
            }

            public boolean hasError() {
                boolean z = true;
                if (this.dataCase_ != 1) {
                    z = false;
                }
                return z;
            }

            public boolean hasSendMessage() {
                return this.dataCase_ == 2;
            }

            public boolean hasSendReaction() {
                return this.dataCase_ == 4;
            }

            public boolean hasSendReport() {
                return this.dataCase_ == 3;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$a.class */
        public static final class C3022a extends GeneratedMessageLite.Builder<Response, C3022a> implements Object {
            public C3022a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3022a(C3024a c3024a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.Batched$Response$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$Response$b.class */
        public static final class C3023b {

            /* renamed from: a */
            public static final MapEntryLite<Long, Payload> f10099a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.INT64, 0L, WireFormat.FieldType.MESSAGE, Payload.getDefaultInstance());
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

        public Map<Long, Payload> getMutableResponsesMap() {
            return internalGetMutableResponses();
        }

        private MapFieldLite<Long, Payload> internalGetMutableResponses() {
            if (!this.responses_.isMutable()) {
                this.responses_ = this.responses_.mutableCopy();
            }
            return this.responses_;
        }

        private MapFieldLite<Long, Payload> internalGetResponses() {
            return this.responses_;
        }

        public static C3022a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3022a newBuilder(Response response) {
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

        public boolean containsResponses(long j) {
            return internalGetResponses().containsKey(Long.valueOf(j));
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001\u0001����\u00012", new Object[]{"responses_", C3023b.f10099a});
                case 3:
                    return new Response();
                case 4:
                    return new C3022a(null);
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

        @Deprecated
        public Map<Long, Payload> getResponses() {
            return getResponsesMap();
        }

        public int getResponsesCount() {
            return internalGetResponses().size();
        }

        public Map<Long, Payload> getResponsesMap() {
            return Collections.unmodifiableMap(internalGetResponses());
        }

        public Payload getResponsesOrDefault(long j, Payload payload) {
            MapFieldLite<Long, Payload> internalGetResponses = internalGetResponses();
            if (internalGetResponses.containsKey(Long.valueOf(j))) {
                payload = internalGetResponses.get(Long.valueOf(j));
            }
            return payload;
        }

        public Payload getResponsesOrThrow(long j) {
            MapFieldLite<Long, Payload> internalGetResponses = internalGetResponses();
            if (internalGetResponses.containsKey(Long.valueOf(j))) {
                return internalGetResponses.get(Long.valueOf(j));
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.Batched$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/Batched$b.class */
    public static final class C3025b extends GeneratedMessageLite.Builder<Batched, C3025b> implements Object {
        public C3025b() {
            super(Batched.DEFAULT_INSTANCE);
        }

        public C3025b(C3024a c3024a) {
            super(Batched.DEFAULT_INSTANCE);
        }
    }

    static {
        Batched batched = new Batched();
        DEFAULT_INSTANCE = batched;
        GeneratedMessageLite.registerDefaultInstance(Batched.class, batched);
    }

    private Batched() {
    }

    public static Batched getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3025b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3025b newBuilder(Batched batched) {
        return DEFAULT_INSTANCE.createBuilder(batched);
    }

    public static Batched parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Batched parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Batched parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Batched parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Batched parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Batched parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Batched parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Batched parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Batched parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Batched parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Batched parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Batched parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Batched> parser() {
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
                return new Batched();
            case 4:
                return new C3025b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Batched.class) {
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
