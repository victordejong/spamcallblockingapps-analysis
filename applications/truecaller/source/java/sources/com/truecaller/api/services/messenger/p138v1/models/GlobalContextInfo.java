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
/* renamed from: com.truecaller.api.services.messenger.v1.models.GlobalContextInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GlobalContextInfo.class */
public final class GlobalContextInfo extends GeneratedMessageLite<GlobalContextInfo, C3165b> implements Object {
    private static final GlobalContextInfo DEFAULT_INSTANCE;
    private static volatile Parser<GlobalContextInfo> PARSER;
    public static final int READ_REPORTS_ENABLED_FIELD_NUMBER = 1;
    private boolean readReportsEnabled_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GlobalContextInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GlobalContextInfo$b.class */
    public static final class C3165b extends GeneratedMessageLite.Builder<GlobalContextInfo, C3165b> implements Object {
        public C3165b() {
            super(GlobalContextInfo.DEFAULT_INSTANCE);
        }

        public C3165b(C3164a c3164a) {
            super(GlobalContextInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        GlobalContextInfo globalContextInfo = new GlobalContextInfo();
        DEFAULT_INSTANCE = globalContextInfo;
        GeneratedMessageLite.registerDefaultInstance(GlobalContextInfo.class, globalContextInfo);
    }

    private GlobalContextInfo() {
    }

    public void clearReadReportsEnabled() {
        this.readReportsEnabled_ = false;
    }

    public static GlobalContextInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3165b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3165b newBuilder(GlobalContextInfo globalContextInfo) {
        return DEFAULT_INSTANCE.createBuilder(globalContextInfo);
    }

    public static GlobalContextInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GlobalContextInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GlobalContextInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GlobalContextInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GlobalContextInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GlobalContextInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GlobalContextInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GlobalContextInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GlobalContextInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GlobalContextInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GlobalContextInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GlobalContextInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GlobalContextInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setReadReportsEnabled(boolean z) {
        this.readReportsEnabled_ = z;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\u0007", new Object[]{"readReportsEnabled_"});
            case 3:
                return new GlobalContextInfo();
            case 4:
                return new C3165b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GlobalContextInfo.class) {
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

    public boolean getReadReportsEnabled() {
        return this.readReportsEnabled_;
    }
}
