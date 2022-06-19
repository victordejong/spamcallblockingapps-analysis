package com.truecaller.api.services.callmeback.p136v1;

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
/* renamed from: com.truecaller.api.services.callmeback.v1.NumberStatusResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/NumberStatusResponse.class */
public final class NumberStatusResponse extends GeneratedMessageLite<NumberStatusResponse, C2944b> implements Object {
    public static final int BUTTON_TEXT_FIELD_NUMBER = 3;
    private static final NumberStatusResponse DEFAULT_INSTANCE;
    public static final int ENABLED_FIELD_NUMBER = 1;
    public static final int MESSAGE_FIELD_NUMBER = 2;
    private static volatile Parser<NumberStatusResponse> PARSER;
    private boolean enabled_;
    private String message_ = "";
    private String buttonText_ = "";

    /* renamed from: com.truecaller.api.services.callmeback.v1.NumberStatusResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/NumberStatusResponse$b.class */
    public static final class C2944b extends GeneratedMessageLite.Builder<NumberStatusResponse, C2944b> implements Object {
        public C2944b() {
            super(NumberStatusResponse.DEFAULT_INSTANCE);
        }

        public C2944b(C2943a c2943a) {
            super(NumberStatusResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        NumberStatusResponse numberStatusResponse = new NumberStatusResponse();
        DEFAULT_INSTANCE = numberStatusResponse;
        GeneratedMessageLite.registerDefaultInstance(NumberStatusResponse.class, numberStatusResponse);
    }

    private NumberStatusResponse() {
    }

    public void clearButtonText() {
        this.buttonText_ = getDefaultInstance().getButtonText();
    }

    public void clearEnabled() {
        this.enabled_ = false;
    }

    public void clearMessage() {
        this.message_ = getDefaultInstance().getMessage();
    }

    public static NumberStatusResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2944b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2944b newBuilder(NumberStatusResponse numberStatusResponse) {
        return DEFAULT_INSTANCE.createBuilder(numberStatusResponse);
    }

    public static NumberStatusResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NumberStatusResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NumberStatusResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static NumberStatusResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static NumberStatusResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static NumberStatusResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static NumberStatusResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NumberStatusResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NumberStatusResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static NumberStatusResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static NumberStatusResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static NumberStatusResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<NumberStatusResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setButtonText(String str) {
        str.getClass();
        this.buttonText_ = str;
    }

    public void setButtonTextBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.buttonText_ = byteString.toStringUtf8();
    }

    public void setEnabled(boolean z) {
        this.enabled_ = z;
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
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\u0007\u0002Ȉ\u0003Ȉ", new Object[]{"enabled_", "message_", "buttonText_"});
            case 3:
                return new NumberStatusResponse();
            case 4:
                return new C2944b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (NumberStatusResponse.class) {
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

    public String getButtonText() {
        return this.buttonText_;
    }

    public ByteString getButtonTextBytes() {
        return ByteString.copyFromUtf8(this.buttonText_);
    }

    public boolean getEnabled() {
        return this.enabled_;
    }

    public String getMessage() {
        return this.message_;
    }

    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.message_);
    }
}
