package com.truecaller.api.services.messenger.p138v1.models.input;

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
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupInfo.class */
public final class InputGroupInfo extends GeneratedMessageLite<InputGroupInfo, C3245b> implements Object {
    public static final int AVATAR_FIELD_NUMBER = 2;
    private static final InputGroupInfo DEFAULT_INSTANCE;
    private static volatile Parser<InputGroupInfo> PARSER;
    public static final int TITLE_FIELD_NUMBER = 1;
    private String title_ = "";
    private String avatar_ = "";

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupInfo$b.class */
    public static final class C3245b extends GeneratedMessageLite.Builder<InputGroupInfo, C3245b> implements Object {
        public C3245b() {
            super(InputGroupInfo.DEFAULT_INSTANCE);
        }

        public C3245b(C3244a c3244a) {
            super(InputGroupInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        InputGroupInfo inputGroupInfo = new InputGroupInfo();
        DEFAULT_INSTANCE = inputGroupInfo;
        GeneratedMessageLite.registerDefaultInstance(InputGroupInfo.class, inputGroupInfo);
    }

    private InputGroupInfo() {
    }

    public void clearAvatar() {
        this.avatar_ = getDefaultInstance().getAvatar();
    }

    public void clearTitle() {
        this.title_ = getDefaultInstance().getTitle();
    }

    public static InputGroupInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3245b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3245b newBuilder(InputGroupInfo inputGroupInfo) {
        return DEFAULT_INSTANCE.createBuilder(inputGroupInfo);
    }

    public static InputGroupInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputGroupInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputGroupInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputGroupInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputGroupInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputGroupInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputGroupInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputGroupInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputGroupInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputGroupInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputGroupInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputGroupInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputGroupInfo> parser() {
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

    public void setTitle(String str) {
        str.getClass();
        this.title_ = str;
    }

    public void setTitleBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.title_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002Ȉ", new Object[]{"title_", "avatar_"});
            case 3:
                return new InputGroupInfo();
            case 4:
                return new C3245b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputGroupInfo.class) {
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

    public String getTitle() {
        return this.title_;
    }

    public ByteString getTitleBytes() {
        return ByteString.copyFromUtf8(this.title_);
    }
}
