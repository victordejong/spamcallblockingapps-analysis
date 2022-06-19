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
import com.truecaller.api.services.messenger.p138v1.models.ParticipantInfo;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20466e;
/* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants.class */
public final class GetParticipants extends GeneratedMessageLite<GetParticipants, C3063b> implements Object {
    private static final GetParticipants DEFAULT_INSTANCE;
    private static volatile Parser<GetParticipants> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3059a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 1;
        private static final Request DEFAULT_INSTANCE;
        public static final int LIMIT_FIELD_NUMBER = 3;
        public static final int PAGE_TOKEN_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        private InputPeer context_;
        private int limit_;
        private String pageToken_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants$Request$a.class */
        public static final class C3059a extends GeneratedMessageLite.Builder<Request, C3059a> implements Object {
            public C3059a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3059a(C3062a c3062a) {
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

        public void clearPageToken() {
            this.pageToken_ = getDefaultInstance().getPageToken();
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

        public static C3059a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3059a newBuilder(Request request) {
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

        public void setPageToken(String str) {
            str.getClass();
            this.pageToken_ = str;
        }

        public void setPageTokenBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.pageToken_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002Ȉ\u0003\u0004", new Object[]{"context_", "pageToken_", "limit_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3059a(null);
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

        public String getPageToken() {
            return this.pageToken_;
        }

        public ByteString getPageTokenBytes() {
            return ByteString.copyFromUtf8(this.pageToken_);
        }

        public boolean hasContext() {
            return this.context_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3060a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int NEXT_PAGE_TOKEN_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        public static final int PARTICIPANTS_INFO_FIELD_NUMBER = 2;
        public static final int USER_INFO_FIELD_NUMBER = 3;
        private MapFieldLite<String, UserInfo> userInfo_ = MapFieldLite.emptyMapField();
        private String nextPageToken_ = "";
        private Internal.ProtobufList<ParticipantInfo> participantsInfo_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants$Response$a.class */
        public static final class C3060a extends GeneratedMessageLite.Builder<Response, C3060a> implements Object {
            public C3060a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3060a(C3062a c3062a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants$Response$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants$Response$b.class */
        public static final class C3061b {

            /* renamed from: a */
            public static final MapEntryLite<String, UserInfo> f10101a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, UserInfo.getDefaultInstance());
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public void addAllParticipantsInfo(Iterable<? extends ParticipantInfo> iterable) {
            ensureParticipantsInfoIsMutable();
            AbstractMessageLite.addAll(iterable, this.participantsInfo_);
        }

        public void addParticipantsInfo(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsInfoIsMutable();
            this.participantsInfo_.add(i, participantInfo);
        }

        public void addParticipantsInfo(ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsInfoIsMutable();
            this.participantsInfo_.add(participantInfo);
        }

        public void clearNextPageToken() {
            this.nextPageToken_ = getDefaultInstance().getNextPageToken();
        }

        public void clearParticipantsInfo() {
            this.participantsInfo_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureParticipantsInfoIsMutable() {
            Internal.ProtobufList<ParticipantInfo> protobufList = this.participantsInfo_;
            if (!protobufList.isModifiable()) {
                this.participantsInfo_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<String, UserInfo> getMutableUserInfoMap() {
            return internalGetMutableUserInfo();
        }

        private MapFieldLite<String, UserInfo> internalGetMutableUserInfo() {
            if (!this.userInfo_.isMutable()) {
                this.userInfo_ = this.userInfo_.mutableCopy();
            }
            return this.userInfo_;
        }

        private MapFieldLite<String, UserInfo> internalGetUserInfo() {
            return this.userInfo_;
        }

        public static C3060a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3060a newBuilder(Response response) {
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

        public void removeParticipantsInfo(int i) {
            ensureParticipantsInfoIsMutable();
            this.participantsInfo_.remove(i);
        }

        public void setNextPageToken(String str) {
            str.getClass();
            this.nextPageToken_ = str;
        }

        public void setNextPageTokenBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.nextPageToken_ = byteString.toStringUtf8();
        }

        public void setParticipantsInfo(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsInfoIsMutable();
            this.participantsInfo_.set(i, participantInfo);
        }

        public boolean containsUserInfo(String str) {
            str.getClass();
            return internalGetUserInfo().containsKey(str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003\u0001\u0001��\u0001Ȉ\u0002\u001b\u00032", new Object[]{"nextPageToken_", "participantsInfo_", ParticipantInfo.class, "userInfo_", C3061b.f10101a});
                case 3:
                    return new Response();
                case 4:
                    return new C3060a(null);
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

        public String getNextPageToken() {
            return this.nextPageToken_;
        }

        public ByteString getNextPageTokenBytes() {
            return ByteString.copyFromUtf8(this.nextPageToken_);
        }

        public ParticipantInfo getParticipantsInfo(int i) {
            return this.participantsInfo_.get(i);
        }

        public int getParticipantsInfoCount() {
            return this.participantsInfo_.size();
        }

        public List<ParticipantInfo> getParticipantsInfoList() {
            return this.participantsInfo_;
        }

        public AbstractC20466e getParticipantsInfoOrBuilder(int i) {
            return this.participantsInfo_.get(i);
        }

        public List<? extends AbstractC20466e> getParticipantsInfoOrBuilderList() {
            return this.participantsInfo_;
        }

        @Deprecated
        public Map<String, UserInfo> getUserInfo() {
            return getUserInfoMap();
        }

        public int getUserInfoCount() {
            return internalGetUserInfo().size();
        }

        public Map<String, UserInfo> getUserInfoMap() {
            return Collections.unmodifiableMap(internalGetUserInfo());
        }

        public UserInfo getUserInfoOrDefault(String str, UserInfo userInfo) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                userInfo = internalGetUserInfo.get(str);
            }
            return userInfo;
        }

        public UserInfo getUserInfoOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                return internalGetUserInfo.get(str);
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetParticipants$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetParticipants$b.class */
    public static final class C3063b extends GeneratedMessageLite.Builder<GetParticipants, C3063b> implements Object {
        public C3063b() {
            super(GetParticipants.DEFAULT_INSTANCE);
        }

        public C3063b(C3062a c3062a) {
            super(GetParticipants.DEFAULT_INSTANCE);
        }
    }

    static {
        GetParticipants getParticipants = new GetParticipants();
        DEFAULT_INSTANCE = getParticipants;
        GeneratedMessageLite.registerDefaultInstance(GetParticipants.class, getParticipants);
    }

    private GetParticipants() {
    }

    public static GetParticipants getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3063b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3063b newBuilder(GetParticipants getParticipants) {
        return DEFAULT_INSTANCE.createBuilder(getParticipants);
    }

    public static GetParticipants parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetParticipants parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetParticipants parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetParticipants parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetParticipants parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetParticipants parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetParticipants parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetParticipants parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetParticipants parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetParticipants parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetParticipants parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetParticipants parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetParticipants> parser() {
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
                return new GetParticipants();
            case 4:
                return new C3063b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetParticipants.class) {
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
