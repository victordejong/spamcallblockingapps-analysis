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
/* renamed from: com.truecaller.api.services.callmeback.v1.CallbackLogResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/CallbackLogResponse.class */
public final class CallbackLogResponse extends GeneratedMessageLite<CallbackLogResponse, C2940b> implements Object {
    public static final int BODY_FIELD_NUMBER = 2;
    private static final CallbackLogResponse DEFAULT_INSTANCE;
    private static volatile Parser<CallbackLogResponse> PARSER;
    public static final int TITLE_FIELD_NUMBER = 1;
    private String title_ = "";
    private String body_ = "";

    /* renamed from: com.truecaller.api.services.callmeback.v1.CallbackLogResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callmeback/v1/CallbackLogResponse$b.class */
    public static final class C2940b extends GeneratedMessageLite.Builder<CallbackLogResponse, C2940b> implements Object {
        public C2940b() {
            super(CallbackLogResponse.DEFAULT_INSTANCE);
        }

        public C2940b(C2939a c2939a) {
            super(CallbackLogResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        CallbackLogResponse callbackLogResponse = new CallbackLogResponse();
        DEFAULT_INSTANCE = callbackLogResponse;
        GeneratedMessageLite.registerDefaultInstance(CallbackLogResponse.class, callbackLogResponse);
    }

    private CallbackLogResponse() {
    }

    public void clearBody() {
        this.body_ = getDefaultInstance().getBody();
    }

    public void clearTitle() {
        this.title_ = getDefaultInstance().getTitle();
    }

    public static CallbackLogResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2940b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2940b newBuilder(CallbackLogResponse callbackLogResponse) {
        return DEFAULT_INSTANCE.createBuilder(callbackLogResponse);
    }

    public static CallbackLogResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallbackLogResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallbackLogResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CallbackLogResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CallbackLogResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CallbackLogResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CallbackLogResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallbackLogResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallbackLogResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CallbackLogResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CallbackLogResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CallbackLogResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CallbackLogResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setBody(String str) {
        str.getClass();
        this.body_ = str;
    }

    public void setBodyBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.body_ = byteString.toStringUtf8();
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
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002Ȉ", new Object[]{"title_", "body_"});
            case 3:
                return new CallbackLogResponse();
            case 4:
                return new C2940b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CallbackLogResponse.class) {
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

    public String getBody() {
        return this.body_;
    }

    public ByteString getBodyBytes() {
        return ByteString.copyFromUtf8(this.body_);
    }

    public String getTitle() {
        return this.title_;
    }

    public ByteString getTitleBytes() {
        return ByteString.copyFromUtf8(this.title_);
    }
}
