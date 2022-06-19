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
/* renamed from: com.truecaller.api.services.callerid.v1.model.CallContext */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/CallContext.class */
public final class CallContext extends GeneratedMessageLite<CallContext, C2923b> implements Object {
    public static final int CUSTOMMESSAGE_FIELD_NUMBER = 1;
    private static final CallContext DEFAULT_INSTANCE;
    public static final int MESSAGEID_FIELD_NUMBER = 2;
    private static volatile Parser<CallContext> PARSER;
    public static final int PREDEFINEDMESSAGE_FIELD_NUMBER = 3;
    private int messageCase_ = 0;
    private String messageId_ = "";
    private Object message_;

    /* renamed from: com.truecaller.api.services.callerid.v1.model.CallContext$MessageCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/CallContext$MessageCase.class */
    public enum MessageCase {
        CUSTOMMESSAGE(1),
        PREDEFINEDMESSAGE(3),
        MESSAGE_NOT_SET(0);
        
        private final int value;

        MessageCase(int i) {
            this.value = i;
        }

        public static MessageCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return CUSTOMMESSAGE;
                }
                if (i == 3) {
                    return PREDEFINEDMESSAGE;
                }
                return null;
            }
            return MESSAGE_NOT_SET;
        }

        @Deprecated
        public static MessageCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.model.CallContext$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/CallContext$b.class */
    public static final class C2923b extends GeneratedMessageLite.Builder<CallContext, C2923b> implements Object {
        public C2923b() {
            super(CallContext.DEFAULT_INSTANCE);
        }

        public C2923b(C2922a c2922a) {
            super(CallContext.DEFAULT_INSTANCE);
        }
    }

    static {
        CallContext callContext = new CallContext();
        DEFAULT_INSTANCE = callContext;
        GeneratedMessageLite.registerDefaultInstance(CallContext.class, callContext);
    }

    private CallContext() {
    }

    public static /* synthetic */ void access$200(CallContext callContext, String str) {
        callContext.setMessageId(str);
    }

    public static /* synthetic */ void access$500(CallContext callContext, String str) {
        callContext.setCustomMessage(str);
    }

    public static /* synthetic */ void access$800(CallContext callContext, int i) {
        callContext.setPredefinedMessage(i);
    }

    public void clearCustomMessage() {
        if (this.messageCase_ == 1) {
            this.messageCase_ = 0;
            this.message_ = null;
        }
    }

    public void clearMessage() {
        this.messageCase_ = 0;
        this.message_ = null;
    }

    public void clearMessageId() {
        this.messageId_ = getDefaultInstance().getMessageId();
    }

    public void clearPredefinedMessage() {
        if (this.messageCase_ == 3) {
            this.messageCase_ = 0;
            this.message_ = null;
        }
    }

    public static CallContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2923b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2923b newBuilder(CallContext callContext) {
        return DEFAULT_INSTANCE.createBuilder(callContext);
    }

    public static CallContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallContext parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CallContext parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CallContext parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CallContext parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CallContext parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallContext parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallContext parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CallContext parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CallContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CallContext parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CallContext> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setCustomMessage(String str) {
        str.getClass();
        this.messageCase_ = 1;
        this.message_ = str;
    }

    public void setCustomMessageBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.message_ = byteString.toStringUtf8();
        this.messageCase_ = 1;
    }

    public void setMessageId(String str) {
        str.getClass();
        this.messageId_ = str;
    }

    public void setMessageIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.messageId_ = byteString.toStringUtf8();
    }

    public void setPredefinedMessage(int i) {
        this.messageCase_ = 3;
        this.message_ = Integer.valueOf(i);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003\u0001��\u0001\u0003\u0003������\u0001Ȼ��\u0002Ȉ\u00037��", new Object[]{"message_", "messageCase_", "messageId_"});
            case 3:
                return new CallContext();
            case 4:
                return new C2923b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CallContext.class) {
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

    public String getCustomMessage() {
        return this.messageCase_ == 1 ? (String) this.message_ : "";
    }

    public ByteString getCustomMessageBytes() {
        return ByteString.copyFromUtf8(this.messageCase_ == 1 ? (String) this.message_ : "");
    }

    public MessageCase getMessageCase() {
        return MessageCase.forNumber(this.messageCase_);
    }

    public String getMessageId() {
        return this.messageId_;
    }

    public ByteString getMessageIdBytes() {
        return ByteString.copyFromUtf8(this.messageId_);
    }

    public int getPredefinedMessage() {
        if (this.messageCase_ == 3) {
            return ((Integer) this.message_).intValue();
        }
        return 0;
    }

    public boolean hasCustomMessage() {
        boolean z = true;
        if (this.messageCase_ != 1) {
            z = false;
        }
        return z;
    }

    public boolean hasPredefinedMessage() {
        return this.messageCase_ == 3;
    }
}
