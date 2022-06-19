package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.models.ContextPermissions;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.messenger.v1.UpdateRoles */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateRoles.class */
public final class UpdateRoles extends GeneratedMessageLite<UpdateRoles, C3134b> implements Object {
    private static final UpdateRoles DEFAULT_INSTANCE;
    private static volatile Parser<UpdateRoles> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateRoles$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateRoles$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3131a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 2;
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int PARTICIPANT_FIELD_NUMBER = 3;
        public static final int RANDOM_ID_FIELD_NUMBER = 1;
        public static final int ROLES_FIELD_NUMBER = 4;
        private InputPeer context_;
        private InputPeer participant_;
        private long randomId_;
        private int roles_;

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateRoles$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateRoles$Request$a.class */
        public static final class C3131a extends GeneratedMessageLite.Builder<Request, C3131a> implements Object {
            public C3131a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3131a(C3133a c3133a) {
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

        public void clearParticipant() {
            this.participant_ = null;
        }

        public void clearRandomId() {
            this.randomId_ = 0L;
        }

        public void clearRoles() {
            this.roles_ = 0;
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

        public void mergeParticipant(InputPeer inputPeer) {
            inputPeer.getClass();
            InputPeer inputPeer2 = this.participant_;
            if (inputPeer2 == null || inputPeer2 == InputPeer.getDefaultInstance()) {
                this.participant_ = inputPeer;
            } else {
                this.participant_ = InputPeer.newBuilder(this.participant_).mergeFrom(inputPeer).buildPartial();
            }
        }

        public static C3131a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3131a newBuilder(Request request) {
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

        public void setParticipant(InputPeer inputPeer) {
            inputPeer.getClass();
            this.participant_ = inputPeer;
        }

        public void setRandomId(long j) {
            this.randomId_ = j;
        }

        public void setRoles(int i) {
            this.roles_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\u0002\u0002\t\u0003\t\u0004\u0004", new Object[]{"randomId_", "context_", "participant_", "roles_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3131a(null);
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

        public InputPeer getParticipant() {
            InputPeer inputPeer = this.participant_;
            InputPeer inputPeer2 = inputPeer;
            if (inputPeer == null) {
                inputPeer2 = InputPeer.getDefaultInstance();
            }
            return inputPeer2;
        }

        public long getRandomId() {
            return this.randomId_;
        }

        public int getRoles() {
            return this.roles_;
        }

        public boolean hasContext() {
            return this.context_ != null;
        }

        public boolean hasParticipant() {
            return this.participant_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateRoles$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateRoles$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3132a> implements Object {
        public static final int DATE_FIELD_NUMBER = 2;
        private static final Response DEFAULT_INSTANCE;
        public static final int MESSAGE_ID_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        public static final int PERMISSIONS_FIELD_NUMBER = 3;
        public static final int SEQ_FIELD_NUMBER = 4;
        private int date_;
        private String messageId_ = "";
        private ContextPermissions permissions_;
        private long seq_;

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateRoles$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateRoles$Response$a.class */
        public static final class C3132a extends GeneratedMessageLite.Builder<Response, C3132a> implements Object {
            public C3132a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3132a(C3133a c3133a) {
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

        public void clearPermissions() {
            this.permissions_ = null;
        }

        public void clearSeq() {
            this.seq_ = 0L;
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergePermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            ContextPermissions contextPermissions2 = this.permissions_;
            if (contextPermissions2 == null || contextPermissions2 == ContextPermissions.getDefaultInstance()) {
                this.permissions_ = contextPermissions;
            } else {
                this.permissions_ = ContextPermissions.newBuilder(this.permissions_).mergeFrom(contextPermissions).buildPartial();
            }
        }

        public static C3132a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3132a newBuilder(Response response) {
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

        public void setPermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            this.permissions_ = contextPermissions;
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
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\u0004\u0003\t\u0004\u0002", new Object[]{"messageId_", "date_", "permissions_", "seq_"});
                case 3:
                    return new Response();
                case 4:
                    return new C3132a(null);
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

        public ContextPermissions getPermissions() {
            ContextPermissions contextPermissions = this.permissions_;
            ContextPermissions contextPermissions2 = contextPermissions;
            if (contextPermissions == null) {
                contextPermissions2 = ContextPermissions.getDefaultInstance();
            }
            return contextPermissions2;
        }

        public long getSeq() {
            return this.seq_;
        }

        public boolean hasPermissions() {
            return this.permissions_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateRoles$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateRoles$b.class */
    public static final class C3134b extends GeneratedMessageLite.Builder<UpdateRoles, C3134b> implements Object {
        public C3134b() {
            super(UpdateRoles.DEFAULT_INSTANCE);
        }

        public C3134b(C3133a c3133a) {
            super(UpdateRoles.DEFAULT_INSTANCE);
        }
    }

    static {
        UpdateRoles updateRoles = new UpdateRoles();
        DEFAULT_INSTANCE = updateRoles;
        GeneratedMessageLite.registerDefaultInstance(UpdateRoles.class, updateRoles);
    }

    private UpdateRoles() {
    }

    public static UpdateRoles getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3134b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3134b newBuilder(UpdateRoles updateRoles) {
        return DEFAULT_INSTANCE.createBuilder(updateRoles);
    }

    public static UpdateRoles parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateRoles parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateRoles parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static UpdateRoles parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static UpdateRoles parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static UpdateRoles parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static UpdateRoles parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateRoles parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateRoles parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static UpdateRoles parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static UpdateRoles parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static UpdateRoles parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<UpdateRoles> parser() {
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
                return new UpdateRoles();
            case 4:
                return new C3134b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (UpdateRoles.class) {
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
