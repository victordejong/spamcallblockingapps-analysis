package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfoDelta;
import com.truecaller.api.services.messenger.p138v1.models.input.InputGroupInfo;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.messenger.v1.UpdateGroupInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateGroupInfo.class */
public final class UpdateGroupInfo extends GeneratedMessageLite<UpdateGroupInfo, C3126b> implements Object {
    private static final UpdateGroupInfo DEFAULT_INSTANCE;
    private static volatile Parser<UpdateGroupInfo> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateGroupInfo$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3123a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int GROUP_ID_FIELD_NUMBER = 2;
        public static final int GROUP_INFO_FIELD_NUMBER = 3;
        private static volatile Parser<Request> PARSER;
        public static final int RANDOM_ID_FIELD_NUMBER = 1;
        private String groupId_ = "";
        private InputGroupInfo groupInfo_;
        private long randomId_;

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateGroupInfo$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateGroupInfo$Request$a.class */
        public static final class C3123a extends GeneratedMessageLite.Builder<Request, C3123a> implements Object {
            public C3123a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3123a(C3125a c3125a) {
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

        public void clearGroupId() {
            this.groupId_ = getDefaultInstance().getGroupId();
        }

        public void clearGroupInfo() {
            this.groupInfo_ = null;
        }

        public void clearRandomId() {
            this.randomId_ = 0L;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeGroupInfo(InputGroupInfo inputGroupInfo) {
            inputGroupInfo.getClass();
            InputGroupInfo inputGroupInfo2 = this.groupInfo_;
            if (inputGroupInfo2 == null || inputGroupInfo2 == InputGroupInfo.getDefaultInstance()) {
                this.groupInfo_ = inputGroupInfo;
            } else {
                this.groupInfo_ = InputGroupInfo.newBuilder(this.groupInfo_).mergeFrom(inputGroupInfo).buildPartial();
            }
        }

        public static C3123a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3123a newBuilder(Request request) {
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

        public void setGroupId(String str) {
            str.getClass();
            this.groupId_ = str;
        }

        public void setGroupIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.groupId_ = byteString.toStringUtf8();
        }

        public void setGroupInfo(InputGroupInfo inputGroupInfo) {
            inputGroupInfo.getClass();
            this.groupInfo_ = inputGroupInfo;
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
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\u0002\u0002Ȉ\u0003\t", new Object[]{"randomId_", "groupId_", "groupInfo_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3123a(null);
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

        public String getGroupId() {
            return this.groupId_;
        }

        public ByteString getGroupIdBytes() {
            return ByteString.copyFromUtf8(this.groupId_);
        }

        public InputGroupInfo getGroupInfo() {
            InputGroupInfo inputGroupInfo = this.groupInfo_;
            InputGroupInfo inputGroupInfo2 = inputGroupInfo;
            if (inputGroupInfo == null) {
                inputGroupInfo2 = InputGroupInfo.getDefaultInstance();
            }
            return inputGroupInfo2;
        }

        public long getRandomId() {
            return this.randomId_;
        }

        public boolean hasGroupInfo() {
            return this.groupInfo_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateGroupInfo$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3124a> implements Object {
        public static final int DATE_FIELD_NUMBER = 2;
        private static final Response DEFAULT_INSTANCE;
        public static final int GROUP_INFO_FIELD_NUMBER = 3;
        public static final int MESSAGE_ID_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        public static final int SEQ_FIELD_NUMBER = 4;
        private int date_;
        private GroupInfoDelta groupInfo_;
        private String messageId_ = "";
        private long seq_;

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateGroupInfo$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateGroupInfo$Response$a.class */
        public static final class C3124a extends GeneratedMessageLite.Builder<Response, C3124a> implements Object {
            public C3124a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3124a(C3125a c3125a) {
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

        public void clearGroupInfo() {
            this.groupInfo_ = null;
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

        public void mergeGroupInfo(GroupInfoDelta groupInfoDelta) {
            groupInfoDelta.getClass();
            GroupInfoDelta groupInfoDelta2 = this.groupInfo_;
            if (groupInfoDelta2 == null || groupInfoDelta2 == GroupInfoDelta.getDefaultInstance()) {
                this.groupInfo_ = groupInfoDelta;
            } else {
                this.groupInfo_ = GroupInfoDelta.newBuilder(this.groupInfo_).mergeFrom(groupInfoDelta).buildPartial();
            }
        }

        public static C3124a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3124a newBuilder(Response response) {
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

        public void setGroupInfo(GroupInfoDelta groupInfoDelta) {
            groupInfoDelta.getClass();
            this.groupInfo_ = groupInfoDelta;
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
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\u0004\u0003\t\u0004\u0002", new Object[]{"messageId_", "date_", "groupInfo_", "seq_"});
                case 3:
                    return new Response();
                case 4:
                    return new C3124a(null);
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

        public GroupInfoDelta getGroupInfo() {
            GroupInfoDelta groupInfoDelta = this.groupInfo_;
            GroupInfoDelta groupInfoDelta2 = groupInfoDelta;
            if (groupInfoDelta == null) {
                groupInfoDelta2 = GroupInfoDelta.getDefaultInstance();
            }
            return groupInfoDelta2;
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

        public boolean hasGroupInfo() {
            return this.groupInfo_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateGroupInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateGroupInfo$b.class */
    public static final class C3126b extends GeneratedMessageLite.Builder<UpdateGroupInfo, C3126b> implements Object {
        public C3126b() {
            super(UpdateGroupInfo.DEFAULT_INSTANCE);
        }

        public C3126b(C3125a c3125a) {
            super(UpdateGroupInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        UpdateGroupInfo updateGroupInfo = new UpdateGroupInfo();
        DEFAULT_INSTANCE = updateGroupInfo;
        GeneratedMessageLite.registerDefaultInstance(UpdateGroupInfo.class, updateGroupInfo);
    }

    private UpdateGroupInfo() {
    }

    public static UpdateGroupInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3126b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3126b newBuilder(UpdateGroupInfo updateGroupInfo) {
        return DEFAULT_INSTANCE.createBuilder(updateGroupInfo);
    }

    public static UpdateGroupInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateGroupInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateGroupInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static UpdateGroupInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static UpdateGroupInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static UpdateGroupInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static UpdateGroupInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateGroupInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateGroupInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static UpdateGroupInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static UpdateGroupInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static UpdateGroupInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<UpdateGroupInfo> parser() {
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
                return new UpdateGroupInfo();
            case 4:
                return new C3126b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (UpdateGroupInfo.class) {
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
