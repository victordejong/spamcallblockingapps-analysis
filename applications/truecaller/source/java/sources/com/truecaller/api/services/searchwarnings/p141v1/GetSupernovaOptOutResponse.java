package com.truecaller.api.services.searchwarnings.p141v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.searchwarnings.p141v1.models.SupernovaStatus;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSupernovaOptOutResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse.class */
public final class GetSupernovaOptOutResponse extends GeneratedMessageLite<GetSupernovaOptOutResponse, C3380b> implements Object {
    private static final GetSupernovaOptOutResponse DEFAULT_INSTANCE;
    private static volatile Parser<GetSupernovaOptOutResponse> PARSER;
    public static final int STATUS_FIELD_NUMBER = 1;
    private int status_;

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSupernovaOptOutResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b.class */
    public static final class C3380b extends GeneratedMessageLite.Builder<GetSupernovaOptOutResponse, C3380b> implements Object {
        public C3380b() {
            super(GetSupernovaOptOutResponse.DEFAULT_INSTANCE);
        }

        public C3380b(C3379a c3379a) {
            super(GetSupernovaOptOutResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        GetSupernovaOptOutResponse getSupernovaOptOutResponse = new GetSupernovaOptOutResponse();
        DEFAULT_INSTANCE = getSupernovaOptOutResponse;
        GeneratedMessageLite.registerDefaultInstance(GetSupernovaOptOutResponse.class, getSupernovaOptOutResponse);
    }

    private GetSupernovaOptOutResponse() {
    }

    public void clearStatus() {
        this.status_ = 0;
    }

    public static GetSupernovaOptOutResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3380b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3380b newBuilder(GetSupernovaOptOutResponse getSupernovaOptOutResponse) {
        return DEFAULT_INSTANCE.createBuilder(getSupernovaOptOutResponse);
    }

    public static GetSupernovaOptOutResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSupernovaOptOutResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSupernovaOptOutResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetSupernovaOptOutResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetSupernovaOptOutResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetSupernovaOptOutResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetSupernovaOptOutResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSupernovaOptOutResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSupernovaOptOutResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetSupernovaOptOutResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetSupernovaOptOutResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetSupernovaOptOutResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetSupernovaOptOutResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setStatus(SupernovaStatus supernovaStatus) {
        this.status_ = supernovaStatus.getNumber();
    }

    public void setStatusValue(int i) {
        this.status_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\f", new Object[]{"status_"});
            case 3:
                return new GetSupernovaOptOutResponse();
            case 4:
                return new C3380b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetSupernovaOptOutResponse.class) {
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

    public SupernovaStatus getStatus() {
        SupernovaStatus forNumber = SupernovaStatus.forNumber(this.status_);
        SupernovaStatus supernovaStatus = forNumber;
        if (forNumber == null) {
            supernovaStatus = SupernovaStatus.UNRECOGNIZED;
        }
        return supernovaStatus;
    }

    public int getStatusValue() {
        return this.status_;
    }
}
