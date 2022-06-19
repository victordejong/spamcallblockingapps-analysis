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
import com.truecaller.api.services.messenger.p138v1.models.GlobalContextInfo;
import com.truecaller.api.services.messenger.p138v1.models.GroupContextInfo;
import com.truecaller.api.services.messenger.p138v1.models.OneToOneContextInfo;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20462a;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20465d;
/* renamed from: com.truecaller.api.services.messenger.v1.GetContexts */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts.class */
public final class GetContexts extends GeneratedMessageLite<GetContexts, C3046b> implements Object {
    private static final GetContexts DEFAULT_INSTANCE;
    private static volatile Parser<GetContexts> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.GetContexts$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3042a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.GetContexts$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts$Request$a.class */
        public static final class C3042a extends GeneratedMessageLite.Builder<Request, C3042a> implements Object {
            public C3042a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3042a(C3045a c3045a) {
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

        public static C3042a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3042a newBuilder(Request request) {
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
                    return new C3042a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.v1.GetContexts$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3043a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int GLOBAL_CONTEXT_INFO_FIELD_NUMBER = 3;
        public static final int GROUPS_CONTEXT_INFO_FIELD_NUMBER = 1;
        public static final int ONE_TO_ONE_CONTEXT_INFO_FIELD_NUMBER = 4;
        private static volatile Parser<Response> PARSER;
        public static final int USER_INFO_FIELD_NUMBER = 2;
        private GlobalContextInfo globalContextInfo_;
        private MapFieldLite<String, UserInfo> userInfo_ = MapFieldLite.emptyMapField();
        private Internal.ProtobufList<GroupContextInfo> groupsContextInfo_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<OneToOneContextInfo> oneToOneContextInfo_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.GetContexts$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts$Response$a.class */
        public static final class C3043a extends GeneratedMessageLite.Builder<Response, C3043a> implements Object {
            public C3043a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3043a(C3045a c3045a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.GetContexts$Response$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts$Response$b.class */
        public static final class C3044b {

            /* renamed from: a */
            public static final MapEntryLite<String, UserInfo> f10100a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, UserInfo.getDefaultInstance());
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public void addAllGroupsContextInfo(Iterable<? extends GroupContextInfo> iterable) {
            ensureGroupsContextInfoIsMutable();
            AbstractMessageLite.addAll(iterable, this.groupsContextInfo_);
        }

        public void addAllOneToOneContextInfo(Iterable<? extends OneToOneContextInfo> iterable) {
            ensureOneToOneContextInfoIsMutable();
            AbstractMessageLite.addAll(iterable, this.oneToOneContextInfo_);
        }

        public void addGroupsContextInfo(int i, GroupContextInfo groupContextInfo) {
            groupContextInfo.getClass();
            ensureGroupsContextInfoIsMutable();
            this.groupsContextInfo_.add(i, groupContextInfo);
        }

        public void addGroupsContextInfo(GroupContextInfo groupContextInfo) {
            groupContextInfo.getClass();
            ensureGroupsContextInfoIsMutable();
            this.groupsContextInfo_.add(groupContextInfo);
        }

        public void addOneToOneContextInfo(int i, OneToOneContextInfo oneToOneContextInfo) {
            oneToOneContextInfo.getClass();
            ensureOneToOneContextInfoIsMutable();
            this.oneToOneContextInfo_.add(i, oneToOneContextInfo);
        }

        public void addOneToOneContextInfo(OneToOneContextInfo oneToOneContextInfo) {
            oneToOneContextInfo.getClass();
            ensureOneToOneContextInfoIsMutable();
            this.oneToOneContextInfo_.add(oneToOneContextInfo);
        }

        public void clearGlobalContextInfo() {
            this.globalContextInfo_ = null;
        }

        public void clearGroupsContextInfo() {
            this.groupsContextInfo_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearOneToOneContextInfo() {
            this.oneToOneContextInfo_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureGroupsContextInfoIsMutable() {
            Internal.ProtobufList<GroupContextInfo> protobufList = this.groupsContextInfo_;
            if (!protobufList.isModifiable()) {
                this.groupsContextInfo_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureOneToOneContextInfoIsMutable() {
            Internal.ProtobufList<OneToOneContextInfo> protobufList = this.oneToOneContextInfo_;
            if (!protobufList.isModifiable()) {
                this.oneToOneContextInfo_ = GeneratedMessageLite.mutableCopy(protobufList);
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

        public void mergeGlobalContextInfo(GlobalContextInfo globalContextInfo) {
            globalContextInfo.getClass();
            GlobalContextInfo globalContextInfo2 = this.globalContextInfo_;
            if (globalContextInfo2 == null || globalContextInfo2 == GlobalContextInfo.getDefaultInstance()) {
                this.globalContextInfo_ = globalContextInfo;
            } else {
                this.globalContextInfo_ = GlobalContextInfo.newBuilder(this.globalContextInfo_).mergeFrom(globalContextInfo).buildPartial();
            }
        }

        public static C3043a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3043a newBuilder(Response response) {
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

        public void removeGroupsContextInfo(int i) {
            ensureGroupsContextInfoIsMutable();
            this.groupsContextInfo_.remove(i);
        }

        public void removeOneToOneContextInfo(int i) {
            ensureOneToOneContextInfoIsMutable();
            this.oneToOneContextInfo_.remove(i);
        }

        public void setGlobalContextInfo(GlobalContextInfo globalContextInfo) {
            globalContextInfo.getClass();
            this.globalContextInfo_ = globalContextInfo;
        }

        public void setGroupsContextInfo(int i, GroupContextInfo groupContextInfo) {
            groupContextInfo.getClass();
            ensureGroupsContextInfoIsMutable();
            this.groupsContextInfo_.set(i, groupContextInfo);
        }

        public void setOneToOneContextInfo(int i, OneToOneContextInfo oneToOneContextInfo) {
            oneToOneContextInfo.getClass();
            ensureOneToOneContextInfoIsMutable();
            this.oneToOneContextInfo_.set(i, oneToOneContextInfo);
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
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004\u0001\u0002��\u0001\u001b\u00022\u0003\t\u0004\u001b", new Object[]{"groupsContextInfo_", GroupContextInfo.class, "userInfo_", C3044b.f10100a, "globalContextInfo_", "oneToOneContextInfo_", OneToOneContextInfo.class});
                case 3:
                    return new Response();
                case 4:
                    return new C3043a(null);
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

        public GlobalContextInfo getGlobalContextInfo() {
            GlobalContextInfo globalContextInfo = this.globalContextInfo_;
            GlobalContextInfo globalContextInfo2 = globalContextInfo;
            if (globalContextInfo == null) {
                globalContextInfo2 = GlobalContextInfo.getDefaultInstance();
            }
            return globalContextInfo2;
        }

        public GroupContextInfo getGroupsContextInfo(int i) {
            return this.groupsContextInfo_.get(i);
        }

        public int getGroupsContextInfoCount() {
            return this.groupsContextInfo_.size();
        }

        public List<GroupContextInfo> getGroupsContextInfoList() {
            return this.groupsContextInfo_;
        }

        public AbstractC20462a getGroupsContextInfoOrBuilder(int i) {
            return this.groupsContextInfo_.get(i);
        }

        public List<? extends AbstractC20462a> getGroupsContextInfoOrBuilderList() {
            return this.groupsContextInfo_;
        }

        public OneToOneContextInfo getOneToOneContextInfo(int i) {
            return this.oneToOneContextInfo_.get(i);
        }

        public int getOneToOneContextInfoCount() {
            return this.oneToOneContextInfo_.size();
        }

        public List<OneToOneContextInfo> getOneToOneContextInfoList() {
            return this.oneToOneContextInfo_;
        }

        public AbstractC20465d getOneToOneContextInfoOrBuilder(int i) {
            return this.oneToOneContextInfo_.get(i);
        }

        public List<? extends AbstractC20465d> getOneToOneContextInfoOrBuilderList() {
            return this.oneToOneContextInfo_;
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

        public boolean hasGlobalContextInfo() {
            return this.globalContextInfo_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.GetContexts$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/GetContexts$b.class */
    public static final class C3046b extends GeneratedMessageLite.Builder<GetContexts, C3046b> implements Object {
        public C3046b() {
            super(GetContexts.DEFAULT_INSTANCE);
        }

        public C3046b(C3045a c3045a) {
            super(GetContexts.DEFAULT_INSTANCE);
        }
    }

    static {
        GetContexts getContexts = new GetContexts();
        DEFAULT_INSTANCE = getContexts;
        GeneratedMessageLite.registerDefaultInstance(GetContexts.class, getContexts);
    }

    private GetContexts() {
    }

    public static GetContexts getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3046b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3046b newBuilder(GetContexts getContexts) {
        return DEFAULT_INSTANCE.createBuilder(getContexts);
    }

    public static GetContexts parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetContexts parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetContexts parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetContexts parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetContexts parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetContexts parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetContexts parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetContexts parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetContexts parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetContexts parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetContexts parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetContexts parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetContexts> parser() {
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
                return new GetContexts();
            case 4:
                return new C3046b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetContexts.class) {
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
