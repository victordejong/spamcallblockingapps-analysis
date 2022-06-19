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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20468g;
/* renamed from: com.truecaller.api.services.messenger.v1.models.UserInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/UserInfo.class */
public final class UserInfo extends GeneratedMessageLite<UserInfo, C3241b> implements AbstractC20468g {
    public static final int AVATAR_FIELD_NUMBER = 3;
    public static final int BUSINESS_EXT_FIELD_NUMBER = 5;
    private static final UserInfo DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 2;
    private static volatile Parser<UserInfo> PARSER;
    public static final int TC_ID_FIELD_NUMBER = 4;
    private BusinessExt businessExt_;
    private String name_ = "";
    private String avatar_ = "";
    private String tcId_ = "";

    /* renamed from: com.truecaller.api.services.messenger.v1.models.UserInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/UserInfo$b.class */
    public static final class C3241b extends GeneratedMessageLite.Builder<UserInfo, C3241b> implements AbstractC20468g {
        public C3241b() {
            super(UserInfo.DEFAULT_INSTANCE);
        }

        public C3241b(C3240a c3240a) {
            super(UserInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        UserInfo userInfo = new UserInfo();
        DEFAULT_INSTANCE = userInfo;
        GeneratedMessageLite.registerDefaultInstance(UserInfo.class, userInfo);
    }

    private UserInfo() {
    }

    public void clearAvatar() {
        this.avatar_ = getDefaultInstance().getAvatar();
    }

    public void clearBusinessExt() {
        this.businessExt_ = null;
    }

    public void clearName() {
        this.name_ = getDefaultInstance().getName();
    }

    public void clearTcId() {
        this.tcId_ = getDefaultInstance().getTcId();
    }

    public static UserInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeBusinessExt(BusinessExt businessExt) {
        businessExt.getClass();
        BusinessExt businessExt2 = this.businessExt_;
        if (businessExt2 == null || businessExt2 == BusinessExt.getDefaultInstance()) {
            this.businessExt_ = businessExt;
        } else {
            this.businessExt_ = BusinessExt.newBuilder(this.businessExt_).mergeFrom(businessExt).buildPartial();
        }
    }

    public static C3241b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3241b newBuilder(UserInfo userInfo) {
        return DEFAULT_INSTANCE.createBuilder(userInfo);
    }

    public static UserInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UserInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UserInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static UserInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static UserInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static UserInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static UserInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UserInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UserInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static UserInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static UserInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static UserInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<UserInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setAvatar(String str) {
        str.getClass();
        this.avatar_ = str;
    }

    public void setAvatarBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.avatar_ = byteString.toStringUtf8();
    }

    public void setBusinessExt(BusinessExt businessExt) {
        businessExt.getClass();
        this.businessExt_ = businessExt;
    }

    public void setName(String str) {
        str.getClass();
        this.name_ = str;
    }

    public void setNameBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.name_ = byteString.toStringUtf8();
    }

    public void setTcId(String str) {
        str.getClass();
        this.tcId_ = str;
    }

    public void setTcIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.tcId_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0002\u0005\u0004������\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005\t", new Object[]{"name_", "avatar_", "tcId_", "businessExt_"});
            case 3:
                return new UserInfo();
            case 4:
                return new C3241b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (UserInfo.class) {
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

    public BusinessExt getBusinessExt() {
        BusinessExt businessExt = this.businessExt_;
        BusinessExt businessExt2 = businessExt;
        if (businessExt == null) {
            businessExt2 = BusinessExt.getDefaultInstance();
        }
        return businessExt2;
    }

    public String getName() {
        return this.name_;
    }

    public ByteString getNameBytes() {
        return ByteString.copyFromUtf8(this.name_);
    }

    public String getTcId() {
        return this.tcId_;
    }

    public ByteString getTcIdBytes() {
        return ByteString.copyFromUtf8(this.tcId_);
    }

    public boolean hasBusinessExt() {
        return this.businessExt_ != null;
    }
}
