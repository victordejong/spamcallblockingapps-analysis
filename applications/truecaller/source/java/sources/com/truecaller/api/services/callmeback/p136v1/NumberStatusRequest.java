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
/* renamed from: com.truecaller.api.services.callmeback.v1.NumberStatusRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/NumberStatusRequest.class */
public final class NumberStatusRequest extends GeneratedMessageLite<NumberStatusRequest, C2942b> implements Object {
    private static final NumberStatusRequest DEFAULT_INSTANCE;
    public static final int ENTERPRISE_NUMBER_FIELD_NUMBER = 1;
    private static volatile Parser<NumberStatusRequest> PARSER;
    private String enterpriseNumber_ = "";

    /* renamed from: com.truecaller.api.services.callmeback.v1.NumberStatusRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/NumberStatusRequest$b.class */
    public static final class C2942b extends GeneratedMessageLite.Builder<NumberStatusRequest, C2942b> implements Object {
        public C2942b() {
            super(NumberStatusRequest.DEFAULT_INSTANCE);
        }

        public C2942b(C2941a c2941a) {
            super(NumberStatusRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        NumberStatusRequest numberStatusRequest = new NumberStatusRequest();
        DEFAULT_INSTANCE = numberStatusRequest;
        GeneratedMessageLite.registerDefaultInstance(NumberStatusRequest.class, numberStatusRequest);
    }

    private NumberStatusRequest() {
    }

    public void clearEnterpriseNumber() {
        this.enterpriseNumber_ = getDefaultInstance().getEnterpriseNumber();
    }

    public static NumberStatusRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2942b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2942b newBuilder(NumberStatusRequest numberStatusRequest) {
        return DEFAULT_INSTANCE.createBuilder(numberStatusRequest);
    }

    public static NumberStatusRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NumberStatusRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NumberStatusRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static NumberStatusRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static NumberStatusRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static NumberStatusRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static NumberStatusRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NumberStatusRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NumberStatusRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static NumberStatusRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static NumberStatusRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static NumberStatusRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<NumberStatusRequest> parser() {
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
                return new NumberStatusRequest();
            case 4:
                return new C2942b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (NumberStatusRequest.class) {
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
