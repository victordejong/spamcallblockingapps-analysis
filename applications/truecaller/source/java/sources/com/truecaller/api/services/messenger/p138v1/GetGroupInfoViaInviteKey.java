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
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20468g;
/* renamed from: com.truecaller.api.services.messenger.v1.GetGroupInfoViaInviteKey */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey.class */
public final class GetGroupInfoViaInviteKey extends GeneratedMessageLite<GetGroupInfoViaInviteKey, C3054b> implements Object {
    private static final GetGroupInfoViaInviteKey DEFAULT_INSTANCE;
    private static volatile Parser<GetGroupInfoViaInviteKey> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.GetGroupInfoViaInviteKey$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3051a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int INVITE_KEY_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        public static final int RANDOM_ID_FIELD_NUMBER = 1;
        private String inviteKey_ = "";
        private long randomId_;

        /* renamed from: com.truecaller.api.services.messenger.v1.GetGroupInfoViaInviteKey$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Request$a.class */
        public static final class C3051a extends GeneratedMessageLite.Builder<Request, C3051a> implements Object {
            public C3051a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3051a(C3053a c3053a) {
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

        public void clearInviteKey() {
            this.inviteKey_ = getDefaultInstance().getInviteKey();
        }

        public void clearRandomId() {
            this.randomId_ = 0L;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3051a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3051a newBuilder(Request request) {
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

        public void setInviteKey(String str) {
            str.getClass();
            this.inviteKey_ = str;
        }

        public void setInviteKeyBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.inviteKey_ = byteString.toStringUtf8();
        }

        public void setRandomId(long j) {
            this.randomId_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0002\u0002Ȉ", new Object[]{"randomId_", "inviteKey_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3051a(null);
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

        public String getInviteKey() {
            return this.inviteKey_;
        }

        public ByteString getInviteKeyBytes() {
            return ByteString.copyFromUtf8(this.inviteKey_);
        }

        public long getRandomId() {
            return this.randomId_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetGroupInfoViaInviteKey$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3052a> implements Object {
        public static final int AVATAR_FIELD_NUMBER = 5;
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;
        public static final int SIZE_FIELD_NUMBER = 6;
        public static final int TITLE_FIELD_NUMBER = 4;
        public static final int USER_INFO_FIELD_NUMBER = 7;
        private int size_;
        private String title_ = "";
        private String avatar_ = "";
        private Internal.ProtobufList<UserInfo> userInfo_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.GetGroupInfoViaInviteKey$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$Response$a.class */
        public static final class C3052a extends GeneratedMessageLite.Builder<Response, C3052a> implements Object {
            public C3052a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3052a(C3053a c3053a) {
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

        public void addAllUserInfo(Iterable<? extends UserInfo> iterable) {
            ensureUserInfoIsMutable();
            AbstractMessageLite.addAll(iterable, this.userInfo_);
        }

        public void addUserInfo(int i, UserInfo userInfo) {
            userInfo.getClass();
            ensureUserInfoIsMutable();
            this.userInfo_.add(i, userInfo);
        }

        public void addUserInfo(UserInfo userInfo) {
            userInfo.getClass();
            ensureUserInfoIsMutable();
            this.userInfo_.add(userInfo);
        }

        public void clearAvatar() {
            this.avatar_ = getDefaultInstance().getAvatar();
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearTitle() {
            this.title_ = getDefaultInstance().getTitle();
        }

        public void clearUserInfo() {
            this.userInfo_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureUserInfoIsMutable() {
            Internal.ProtobufList<UserInfo> protobufList = this.userInfo_;
            if (!protobufList.isModifiable()) {
                this.userInfo_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3052a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3052a newBuilder(Response response) {
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

        public void removeUserInfo(int i) {
            ensureUserInfoIsMutable();
            this.userInfo_.remove(i);
        }

        public void setAvatar(String str) {
            str.getClass();
            this.avatar_ = str;
        }

        public void setAvatarBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.avatar_ = byteString.toStringUtf8();
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setTitle(String str) {
            str.getClass();
            this.title_ = str;
        }

        public void setTitleBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.title_ = byteString.toStringUtf8();
        }

        public void setUserInfo(int i, UserInfo userInfo) {
            userInfo.getClass();
            ensureUserInfoIsMutable();
            this.userInfo_.set(i, userInfo);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0004\u0007\u0004��\u0001��\u0004Ȉ\u0005Ȉ\u0006\u0004\u0007\u001b", new Object[]{"title_", "avatar_", "size_", "userInfo_", UserInfo.class});
                case 3:
                    return new Response();
                case 4:
                    return new C3052a(null);
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

        public String getAvatar() {
            return this.avatar_;
        }

        public ByteString getAvatarBytes() {
            return ByteString.copyFromUtf8(this.avatar_);
        }

        public int getSize() {
            return this.size_;
        }

        public String getTitle() {
            return this.title_;
        }

        public ByteString getTitleBytes() {
            return ByteString.copyFromUtf8(this.title_);
        }

        public UserInfo getUserInfo(int i) {
            return this.userInfo_.get(i);
        }

        public int getUserInfoCount() {
            return this.userInfo_.size();
        }

        public List<UserInfo> getUserInfoList() {
            return this.userInfo_;
        }

        public AbstractC20468g getUserInfoOrBuilder(int i) {
            return this.userInfo_.get(i);
        }

        public List<? extends AbstractC20468g> getUserInfoOrBuilderList() {
            return this.userInfo_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetGroupInfoViaInviteKey$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetGroupInfoViaInviteKey$b.class */
    public static final class C3054b extends GeneratedMessageLite.Builder<GetGroupInfoViaInviteKey, C3054b> implements Object {
        public C3054b() {
            super(GetGroupInfoViaInviteKey.DEFAULT_INSTANCE);
        }

        public C3054b(C3053a c3053a) {
            super(GetGroupInfoViaInviteKey.DEFAULT_INSTANCE);
        }
    }

    static {
        GetGroupInfoViaInviteKey getGroupInfoViaInviteKey = new GetGroupInfoViaInviteKey();
        DEFAULT_INSTANCE = getGroupInfoViaInviteKey;
        GeneratedMessageLite.registerDefaultInstance(GetGroupInfoViaInviteKey.class, getGroupInfoViaInviteKey);
    }

    private GetGroupInfoViaInviteKey() {
    }

    public static GetGroupInfoViaInviteKey getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3054b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3054b newBuilder(GetGroupInfoViaInviteKey getGroupInfoViaInviteKey) {
        return DEFAULT_INSTANCE.createBuilder(getGroupInfoViaInviteKey);
    }

    public static GetGroupInfoViaInviteKey parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetGroupInfoViaInviteKey parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetGroupInfoViaInviteKey parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetGroupInfoViaInviteKey parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetGroupInfoViaInviteKey parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetGroupInfoViaInviteKey parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetGroupInfoViaInviteKey parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetGroupInfoViaInviteKey parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetGroupInfoViaInviteKey parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetGroupInfoViaInviteKey parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetGroupInfoViaInviteKey parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetGroupInfoViaInviteKey parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetGroupInfoViaInviteKey> parser() {
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
                return new GetGroupInfoViaInviteKey();
            case 4:
                return new C3054b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetGroupInfoViaInviteKey.class) {
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
