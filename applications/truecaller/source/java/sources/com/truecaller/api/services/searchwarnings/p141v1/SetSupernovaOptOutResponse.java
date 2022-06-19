package com.truecaller.api.services.searchwarnings.p141v1;

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
/* renamed from: com.truecaller.api.services.searchwarnings.v1.SetSupernovaOptOutResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutResponse.class */
public final class SetSupernovaOptOutResponse extends GeneratedMessageLite<SetSupernovaOptOutResponse, C3390b> implements Object {
    private static final SetSupernovaOptOutResponse DEFAULT_INSTANCE;
    private static volatile Parser<SetSupernovaOptOutResponse> PARSER;

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.SetSupernovaOptOutResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutResponse$b.class */
    public static final class C3390b extends GeneratedMessageLite.Builder<SetSupernovaOptOutResponse, C3390b> implements Object {
        public C3390b() {
            super(SetSupernovaOptOutResponse.DEFAULT_INSTANCE);
        }

        public C3390b(C3389a c3389a) {
            super(SetSupernovaOptOutResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        SetSupernovaOptOutResponse setSupernovaOptOutResponse = new SetSupernovaOptOutResponse();
        DEFAULT_INSTANCE = setSupernovaOptOutResponse;
        GeneratedMessageLite.registerDefaultInstance(SetSupernovaOptOutResponse.class, setSupernovaOptOutResponse);
    }

    private SetSupernovaOptOutResponse() {
    }

    public static SetSupernovaOptOutResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3390b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3390b newBuilder(SetSupernovaOptOutResponse setSupernovaOptOutResponse) {
        return DEFAULT_INSTANCE.createBuilder(setSupernovaOptOutResponse);
    }

    public static SetSupernovaOptOutResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetSupernovaOptOutResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetSupernovaOptOutResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SetSupernovaOptOutResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SetSupernovaOptOutResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SetSupernovaOptOutResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SetSupernovaOptOutResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetSupernovaOptOutResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetSupernovaOptOutResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SetSupernovaOptOutResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SetSupernovaOptOutResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SetSupernovaOptOutResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SetSupernovaOptOutResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new SetSupernovaOptOutResponse();
            case 4:
                return new C3390b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SetSupernovaOptOutResponse.class) {
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
}
