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
/* renamed from: com.truecaller.api.services.searchwarnings.v1.SetSupernovaOptOutRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest.class */
public final class SetSupernovaOptOutRequest extends GeneratedMessageLite<SetSupernovaOptOutRequest, C3388b> implements Object {
    private static final SetSupernovaOptOutRequest DEFAULT_INSTANCE;
    private static volatile Parser<SetSupernovaOptOutRequest> PARSER;
    public static final int STATUS_FIELD_NUMBER = 1;
    private int status_;

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.SetSupernovaOptOutRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest$b.class */
    public static final class C3388b extends GeneratedMessageLite.Builder<SetSupernovaOptOutRequest, C3388b> implements Object {
        public C3388b() {
            super(SetSupernovaOptOutRequest.DEFAULT_INSTANCE);
        }

        public C3388b(C3387a c3387a) {
            super(SetSupernovaOptOutRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        SetSupernovaOptOutRequest setSupernovaOptOutRequest = new SetSupernovaOptOutRequest();
        DEFAULT_INSTANCE = setSupernovaOptOutRequest;
        GeneratedMessageLite.registerDefaultInstance(SetSupernovaOptOutRequest.class, setSupernovaOptOutRequest);
    }

    private SetSupernovaOptOutRequest() {
    }

    public void clearStatus() {
        this.status_ = 0;
    }

    public static SetSupernovaOptOutRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3388b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3388b newBuilder(SetSupernovaOptOutRequest setSupernovaOptOutRequest) {
        return DEFAULT_INSTANCE.createBuilder(setSupernovaOptOutRequest);
    }

    public static SetSupernovaOptOutRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetSupernovaOptOutRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetSupernovaOptOutRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SetSupernovaOptOutRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SetSupernovaOptOutRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SetSupernovaOptOutRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SetSupernovaOptOutRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetSupernovaOptOutRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetSupernovaOptOutRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SetSupernovaOptOutRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SetSupernovaOptOutRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SetSupernovaOptOutRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SetSupernovaOptOutRequest> parser() {
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
                return new SetSupernovaOptOutRequest();
            case 4:
                return new C3388b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SetSupernovaOptOutRequest.class) {
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
