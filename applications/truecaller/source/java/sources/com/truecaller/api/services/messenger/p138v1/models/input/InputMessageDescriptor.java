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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20469a;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageDescriptor */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor.class */
public final class InputMessageDescriptor extends GeneratedMessageLite<InputMessageDescriptor, C3274b> implements AbstractC20469a {
    private static final InputMessageDescriptor DEFAULT_INSTANCE;
    public static final int FORWARDING_ID_FIELD_NUMBER = 2;
    public static final int MESSAGE_ID_FIELD_NUMBER = 1;
    private static volatile Parser<InputMessageDescriptor> PARSER;
    private String messageId_ = "";
    private String forwardingId_ = "";

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageDescriptor$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageDescriptor$b.class */
    public static final class C3274b extends GeneratedMessageLite.Builder<InputMessageDescriptor, C3274b> implements AbstractC20469a {
        public C3274b() {
            super(InputMessageDescriptor.DEFAULT_INSTANCE);
        }

        public C3274b(C3273a c3273a) {
            super(InputMessageDescriptor.DEFAULT_INSTANCE);
        }
    }

    static {
        InputMessageDescriptor inputMessageDescriptor = new InputMessageDescriptor();
        DEFAULT_INSTANCE = inputMessageDescriptor;
        GeneratedMessageLite.registerDefaultInstance(InputMessageDescriptor.class, inputMessageDescriptor);
    }

    private InputMessageDescriptor() {
    }

    public void clearForwardingId() {
        this.forwardingId_ = getDefaultInstance().getForwardingId();
    }

    public void clearMessageId() {
        this.messageId_ = getDefaultInstance().getMessageId();
    }

    public static InputMessageDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3274b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3274b newBuilder(InputMessageDescriptor inputMessageDescriptor) {
        return DEFAULT_INSTANCE.createBuilder(inputMessageDescriptor);
    }

    public static InputMessageDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputMessageDescriptor parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputMessageDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputMessageDescriptor parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputMessageDescriptor parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputMessageDescriptor parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputMessageDescriptor parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputMessageDescriptor parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputMessageDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputMessageDescriptor parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputMessageDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputMessageDescriptor parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputMessageDescriptor> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setForwardingId(String str) {
        str.getClass();
        this.forwardingId_ = str;
    }

    public void setForwardingIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.forwardingId_ = byteString.toStringUtf8();
    }

    public void setMessageId(String str) {
        str.getClass();
        this.messageId_ = str;
    }

    public void setMessageIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.messageId_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002Ȉ", new Object[]{"messageId_", "forwardingId_"});
            case 3:
                return new InputMessageDescriptor();
            case 4:
                return new C3274b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputMessageDescriptor.class) {
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

    public String getForwardingId() {
        return this.forwardingId_;
    }

    public ByteString getForwardingIdBytes() {
        return ByteString.copyFromUtf8(this.forwardingId_);
    }

    public String getMessageId() {
        return this.messageId_;
    }

    public ByteString getMessageIdBytes() {
        return ByteString.copyFromUtf8(this.messageId_);
    }
}
