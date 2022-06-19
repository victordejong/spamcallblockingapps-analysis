package com.truecaller.api.services.messenger.p138v1.models;

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
/* renamed from: com.truecaller.api.services.messenger.v1.models.BusinessExt */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/BusinessExt.class */
public final class BusinessExt extends GeneratedMessageLite<BusinessExt, C3159b> implements Object {
    private static final BusinessExt DEFAULT_INSTANCE;
    public static final int ENABLED_FEATURES_FIELD_NUMBER = 2;
    private static volatile Parser<BusinessExt> PARSER;
    public static final int VERIFIED_FIELD_NUMBER = 1;
    private long enabledFeatures_;
    private boolean verified_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.BusinessExt$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/BusinessExt$b.class */
    public static final class C3159b extends GeneratedMessageLite.Builder<BusinessExt, C3159b> implements Object {
        public C3159b() {
            super(BusinessExt.DEFAULT_INSTANCE);
        }

        public C3159b(C3158a c3158a) {
            super(BusinessExt.DEFAULT_INSTANCE);
        }
    }

    static {
        BusinessExt businessExt = new BusinessExt();
        DEFAULT_INSTANCE = businessExt;
        GeneratedMessageLite.registerDefaultInstance(BusinessExt.class, businessExt);
    }

    private BusinessExt() {
    }

    public void clearEnabledFeatures() {
        this.enabledFeatures_ = 0L;
    }

    public void clearVerified() {
        this.verified_ = false;
    }

    public static BusinessExt getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3159b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3159b newBuilder(BusinessExt businessExt) {
        return DEFAULT_INSTANCE.createBuilder(businessExt);
    }

    public static BusinessExt parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessExt parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessExt parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BusinessExt parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BusinessExt parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BusinessExt parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static BusinessExt parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessExt parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessExt parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BusinessExt parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BusinessExt parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BusinessExt parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<BusinessExt> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setEnabledFeatures(long j) {
        this.enabledFeatures_ = j;
    }

    public void setVerified(boolean z) {
        this.verified_ = z;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0007\u0002\u0002", new Object[]{"verified_", "enabledFeatures_"});
            case 3:
                return new BusinessExt();
            case 4:
                return new C3159b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (BusinessExt.class) {
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

    public long getEnabledFeatures() {
        return this.enabledFeatures_;
    }

    public boolean getVerified() {
        return this.verified_;
    }
}
