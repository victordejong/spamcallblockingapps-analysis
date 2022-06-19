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
/* renamed from: com.truecaller.api.services.callmeback.v1.CallbackLogRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/CallbackLogRequest.class */
public final class CallbackLogRequest extends GeneratedMessageLite<CallbackLogRequest, C2938b> implements Object {
    private static final CallbackLogRequest DEFAULT_INSTANCE;
    public static final int ENTERPRISE_NUMBER_FIELD_NUMBER = 1;
    private static volatile Parser<CallbackLogRequest> PARSER;
    private String enterpriseNumber_ = "";

    /* renamed from: com.truecaller.api.services.callmeback.v1.CallbackLogRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/CallbackLogRequest$b.class */
    public static final class C2938b extends GeneratedMessageLite.Builder<CallbackLogRequest, C2938b> implements Object {
        public C2938b() {
            super(CallbackLogRequest.DEFAULT_INSTANCE);
        }

        public C2938b(C2937a c2937a) {
            super(CallbackLogRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        CallbackLogRequest callbackLogRequest = new CallbackLogRequest();
        DEFAULT_INSTANCE = callbackLogRequest;
        GeneratedMessageLite.registerDefaultInstance(CallbackLogRequest.class, callbackLogRequest);
    }

    private CallbackLogRequest() {
    }

    public void clearEnterpriseNumber() {
        this.enterpriseNumber_ = getDefaultInstance().getEnterpriseNumber();
    }

    public static CallbackLogRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2938b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2938b newBuilder(CallbackLogRequest callbackLogRequest) {
        return DEFAULT_INSTANCE.createBuilder(callbackLogRequest);
    }

    public static CallbackLogRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallbackLogRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallbackLogRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CallbackLogRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CallbackLogRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CallbackLogRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CallbackLogRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallbackLogRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallbackLogRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CallbackLogRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CallbackLogRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CallbackLogRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CallbackLogRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setEnterpriseNumber(String str) {
        str.getClass();
        this.enterpriseNumber_ = str;
    }

    public void setEnterpriseNumberBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.enterpriseNumber_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"enterpriseNumber_"});
            case 3:
                return new CallbackLogRequest();
            case 4:
                return new C2938b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CallbackLogRequest.class) {
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

    public String getEnterpriseNumber() {
        return this.enterpriseNumber_;
    }

    public ByteString getEnterpriseNumberBytes() {
        return ByteString.copyFromUtf8(this.enterpriseNumber_);
    }
}
