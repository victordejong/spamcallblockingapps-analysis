package com.truecaller.api.services.presence.p139v1.models;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Int32Value;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.presence.v1.models.Flash */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Flash.class */
public final class Flash extends GeneratedMessageLite<Flash, C3336b> implements Object {
    private static final Flash DEFAULT_INSTANCE;
    public static final int ENABLED_FIELD_NUMBER = 1;
    private static volatile Parser<Flash> PARSER;
    public static final int VERSION_FIELD_NUMBER = 2;
    private boolean enabled_;
    private Int32Value version_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.Flash$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Flash$b.class */
    public static final class C3336b extends GeneratedMessageLite.Builder<Flash, C3336b> implements Object {
        public C3336b() {
            super(Flash.DEFAULT_INSTANCE);
        }

        public C3336b(C3335a c3335a) {
            super(Flash.DEFAULT_INSTANCE);
        }
    }

    static {
        Flash flash = new Flash();
        DEFAULT_INSTANCE = flash;
        GeneratedMessageLite.registerDefaultInstance(Flash.class, flash);
    }

    private Flash() {
    }

    public void clearEnabled() {
        this.enabled_ = false;
    }

    public void clearVersion() {
        this.version_ = null;
    }

    public static Flash getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeVersion(Int32Value int32Value) {
        int32Value.getClass();
        Int32Value int32Value2 = this.version_;
        if (int32Value2 == null || int32Value2 == Int32Value.getDefaultInstance()) {
            this.version_ = int32Value;
        } else {
            this.version_ = Int32Value.newBuilder(this.version_).mergeFrom(int32Value).buildPartial();
        }
    }

    public static C3336b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3336b newBuilder(Flash flash) {
        return DEFAULT_INSTANCE.createBuilder(flash);
    }

    public static Flash parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Flash parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Flash parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Flash parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Flash parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Flash parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Flash parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Flash parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Flash parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Flash parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Flash parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Flash parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Flash> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setEnabled(boolean z) {
        this.enabled_ = z;
    }

    public void setVersion(Int32Value int32Value) {
        int32Value.getClass();
        this.version_ = int32Value;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0007\u0002\t", new Object[]{"enabled_", "version_"});
            case 3:
                return new Flash();
            case 4:
                return new C3336b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Flash.class) {
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

    public boolean getEnabled() {
        return this.enabled_;
    }

    public Int32Value getVersion() {
        Int32Value int32Value = this.version_;
        Int32Value int32Value2 = int32Value;
        if (int32Value == null) {
            int32Value2 = Int32Value.getDefaultInstance();
        }
        return int32Value2;
    }

    public boolean hasVersion() {
        return this.version_ != null;
    }
}
