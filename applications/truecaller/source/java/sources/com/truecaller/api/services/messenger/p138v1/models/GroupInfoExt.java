package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoExt */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoExt.class */
public final class GroupInfoExt extends GeneratedMessageLite<GroupInfoExt, C3176b> implements Object {
    private static final GroupInfoExt DEFAULT_INSTANCE;
    public static final int INVITE_KEY_FIELD_NUMBER = 1;
    private static volatile Parser<GroupInfoExt> PARSER;
    private String inviteKey_ = "";

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoExt$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoExt$b.class */
    public static final class C3176b extends GeneratedMessageLite.Builder<GroupInfoExt, C3176b> implements Object {
        public C3176b() {
            super(GroupInfoExt.DEFAULT_INSTANCE);
        }

        public C3176b(C3175a c3175a) {
            super(GroupInfoExt.DEFAULT_INSTANCE);
        }
    }

    static {
        GroupInfoExt groupInfoExt = new GroupInfoExt();
        DEFAULT_INSTANCE = groupInfoExt;
        GeneratedMessageLite.registerDefaultInstance(GroupInfoExt.class, groupInfoExt);
    }

    private GroupInfoExt() {
    }

    public void clearInviteKey() {
        this.inviteKey_ = getDefaultInstance().getInviteKey();
    }

    public static GroupInfoExt getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3176b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3176b newBuilder(GroupInfoExt groupInfoExt) {
        return DEFAULT_INSTANCE.createBuilder(groupInfoExt);
    }

    public static GroupInfoExt parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GroupInfoExt parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GroupInfoExt parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GroupInfoExt parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GroupInfoExt parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GroupInfoExt parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GroupInfoExt parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GroupInfoExt parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GroupInfoExt parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GroupInfoExt parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GroupInfoExt parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GroupInfoExt parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GroupInfoExt> parser() {
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

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"inviteKey_"});
            case 3:
                return new GroupInfoExt();
            case 4:
                return new C3176b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GroupInfoExt.class) {
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
}
