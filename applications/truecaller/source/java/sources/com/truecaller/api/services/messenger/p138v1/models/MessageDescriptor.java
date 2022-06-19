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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20463b;
/* renamed from: com.truecaller.api.services.messenger.v1.models.MessageDescriptor */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageDescriptor.class */
public final class MessageDescriptor extends GeneratedMessageLite<MessageDescriptor, C3204b> implements AbstractC20463b {
    private static final MessageDescriptor DEFAULT_INSTANCE;
    public static final int FORWARDING_ID_FIELD_NUMBER = 2;
    public static final int MESSAGE_ID_FIELD_NUMBER = 1;
    private static volatile Parser<MessageDescriptor> PARSER;
    private String messageId_ = "";
    private String forwardingId_ = "";

    /* renamed from: com.truecaller.api.services.messenger.v1.models.MessageDescriptor$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageDescriptor$b.class */
    public static final class C3204b extends GeneratedMessageLite.Builder<MessageDescriptor, C3204b> implements AbstractC20463b {
        public C3204b() {
            super(MessageDescriptor.DEFAULT_INSTANCE);
        }

        public C3204b(C3203a c3203a) {
            super(MessageDescriptor.DEFAULT_INSTANCE);
        }
    }

    static {
        MessageDescriptor messageDescriptor = new MessageDescriptor();
        DEFAULT_INSTANCE = messageDescriptor;
        GeneratedMessageLite.registerDefaultInstance(MessageDescriptor.class, messageDescriptor);
    }

    private MessageDescriptor() {
    }

    public void clearForwardingId() {
        this.forwardingId_ = getDefaultInstance().getForwardingId();
    }

    public void clearMessageId() {
        this.messageId_ = getDefaultInstance().getMessageId();
    }

    public static MessageDescriptor getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3204b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3204b newBuilder(MessageDescriptor messageDescriptor) {
        return DEFAULT_INSTANCE.createBuilder(messageDescriptor);
    }

    public static MessageDescriptor parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessageDescriptor parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MessageDescriptor parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static MessageDescriptor parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static MessageDescriptor parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static MessageDescriptor parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static MessageDescriptor parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessageDescriptor parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MessageDescriptor parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static MessageDescriptor parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static MessageDescriptor parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessageDescriptor parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<MessageDescriptor> parser() {
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
                return new MessageDescriptor();
            case 4:
                return new C3204b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (MessageDescriptor.class) {
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
