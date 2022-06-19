package com.truecaller.api.services.callerid.p135v1;

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
/* renamed from: com.truecaller.api.services.callerid.v1.CallNotificationResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallNotificationResponse.class */
public final class CallNotificationResponse extends GeneratedMessageLite<CallNotificationResponse, C2905b> implements Object {
    private static final CallNotificationResponse DEFAULT_INSTANCE;
    public static final int ENDTTL_FIELD_NUMBER = 2;
    public static final int INITTTL_FIELD_NUMBER = 1;
    private static volatile Parser<CallNotificationResponse> PARSER;
    private int endTtl_;
    private int initTtl_;

    /* renamed from: com.truecaller.api.services.callerid.v1.CallNotificationResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallNotificationResponse$b.class */
    public static final class C2905b extends GeneratedMessageLite.Builder<CallNotificationResponse, C2905b> implements Object {
        public C2905b() {
            super(CallNotificationResponse.DEFAULT_INSTANCE);
        }

        public C2905b(C2904a c2904a) {
            super(CallNotificationResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        CallNotificationResponse callNotificationResponse = new CallNotificationResponse();
        DEFAULT_INSTANCE = callNotificationResponse;
        GeneratedMessageLite.registerDefaultInstance(CallNotificationResponse.class, callNotificationResponse);
    }

    private CallNotificationResponse() {
    }

    public void clearEndTtl() {
        this.endTtl_ = 0;
    }

    public void clearInitTtl() {
        this.initTtl_ = 0;
    }

    public static CallNotificationResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2905b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2905b newBuilder(CallNotificationResponse callNotificationResponse) {
        return DEFAULT_INSTANCE.createBuilder(callNotificationResponse);
    }

    public static CallNotificationResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallNotificationResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallNotificationResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CallNotificationResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CallNotificationResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CallNotificationResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CallNotificationResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallNotificationResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallNotificationResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CallNotificationResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CallNotificationResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CallNotificationResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CallNotificationResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setEndTtl(int i) {
        this.endTtl_ = i;
    }

    public void setInitTtl(int i) {
        this.initTtl_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0004\u0002\u0004", new Object[]{"initTtl_", "endTtl_"});
            case 3:
                return new CallNotificationResponse();
            case 4:
                return new C2905b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CallNotificationResponse.class) {
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

    public int getEndTtl() {
        return this.endTtl_;
    }

    public int getInitTtl() {
        return this.initTtl_;
    }
}
