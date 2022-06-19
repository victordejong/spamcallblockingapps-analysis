package com.truecaller.api.services.callerid.p135v1.model;

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
import p193e.p194a.p1238t2.p1239a.p1240a.p1241a.p1242c.AbstractC20439a;
/* renamed from: com.truecaller.api.services.callerid.v1.model.PredefinedMessage */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/PredefinedMessage.class */
public final class PredefinedMessage extends GeneratedMessageLite<PredefinedMessage, C2928b> implements AbstractC20439a {
    private static final PredefinedMessage DEFAULT_INSTANCE;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int MESSAGE_FIELD_NUMBER = 2;
    private static volatile Parser<PredefinedMessage> PARSER;
    private int id_;
    private String message_ = "";

    /* renamed from: com.truecaller.api.services.callerid.v1.model.PredefinedMessage$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/PredefinedMessage$b.class */
    public static final class C2928b extends GeneratedMessageLite.Builder<PredefinedMessage, C2928b> implements AbstractC20439a {
        public C2928b() {
            super(PredefinedMessage.DEFAULT_INSTANCE);
        }

        public C2928b(C2927a c2927a) {
            super(PredefinedMessage.DEFAULT_INSTANCE);
        }
    }

    static {
        PredefinedMessage predefinedMessage = new PredefinedMessage();
        DEFAULT_INSTANCE = predefinedMessage;
        GeneratedMessageLite.registerDefaultInstance(PredefinedMessage.class, predefinedMessage);
    }

    private PredefinedMessage() {
    }

    public void clearId() {
        this.id_ = 0;
    }

    public void clearMessage() {
        this.message_ = getDefaultInstance().getMessage();
    }

    public static PredefinedMessage getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2928b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2928b newBuilder(PredefinedMessage predefinedMessage) {
        return DEFAULT_INSTANCE.createBuilder(predefinedMessage);
    }

    public static PredefinedMessage parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static PredefinedMessage parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static PredefinedMessage parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static PredefinedMessage parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static PredefinedMessage parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static PredefinedMessage parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static PredefinedMessage parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static PredefinedMessage parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static PredefinedMessage parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static PredefinedMessage parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static PredefinedMessage parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static PredefinedMessage parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<PredefinedMessage> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setId(int i) {
        this.id_ = i;
    }

    public void setMessage(String str) {
        str.getClass();
        this.message_ = str;
    }

    public void setMessageBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.message_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0004\u0002Ȉ", new Object[]{"id_", "message_"});
            case 3:
                return new PredefinedMessage();
            case 4:
                return new C2928b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (PredefinedMessage.class) {
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

    public int getId() {
        return this.id_;
    }

    public String getMessage() {
        return this.message_;
    }

    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.message_);
    }
}
