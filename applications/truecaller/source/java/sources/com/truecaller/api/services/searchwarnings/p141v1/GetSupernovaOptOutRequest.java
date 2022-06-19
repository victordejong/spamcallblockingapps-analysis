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
/* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSupernovaOptOutRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutRequest.class */
public final class GetSupernovaOptOutRequest extends GeneratedMessageLite<GetSupernovaOptOutRequest, C3378b> implements Object {
    private static final GetSupernovaOptOutRequest DEFAULT_INSTANCE;
    private static volatile Parser<GetSupernovaOptOutRequest> PARSER;

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSupernovaOptOutRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutRequest$b.class */
    public static final class C3378b extends GeneratedMessageLite.Builder<GetSupernovaOptOutRequest, C3378b> implements Object {
        public C3378b() {
            super(GetSupernovaOptOutRequest.DEFAULT_INSTANCE);
        }

        public C3378b(C3377a c3377a) {
            super(GetSupernovaOptOutRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        GetSupernovaOptOutRequest getSupernovaOptOutRequest = new GetSupernovaOptOutRequest();
        DEFAULT_INSTANCE = getSupernovaOptOutRequest;
        GeneratedMessageLite.registerDefaultInstance(GetSupernovaOptOutRequest.class, getSupernovaOptOutRequest);
    }

    private GetSupernovaOptOutRequest() {
    }

    public static GetSupernovaOptOutRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3378b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3378b newBuilder(GetSupernovaOptOutRequest getSupernovaOptOutRequest) {
        return DEFAULT_INSTANCE.createBuilder(getSupernovaOptOutRequest);
    }

    public static GetSupernovaOptOutRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSupernovaOptOutRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSupernovaOptOutRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetSupernovaOptOutRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetSupernovaOptOutRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetSupernovaOptOutRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetSupernovaOptOutRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSupernovaOptOutRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSupernovaOptOutRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetSupernovaOptOutRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetSupernovaOptOutRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetSupernovaOptOutRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetSupernovaOptOutRequest> parser() {
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
                return new GetSupernovaOptOutRequest();
            case 4:
                return new C3378b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetSupernovaOptOutRequest.class) {
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
