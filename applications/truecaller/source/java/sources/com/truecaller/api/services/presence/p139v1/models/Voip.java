package com.truecaller.api.services.presence.p139v1.models;

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
/* renamed from: com.truecaller.api.services.presence.v1.models.Voip */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Voip.class */
public final class Voip extends GeneratedMessageLite<Voip, C3350b> implements Object {
    private static final Voip DEFAULT_INSTANCE;
    public static final int DISABLED_FIELD_NUMBER = 1;
    private static volatile Parser<Voip> PARSER;
    public static final int VERSION_FIELD_NUMBER = 2;
    private boolean disabled_;
    private int version_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.Voip$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Voip$b.class */
    public static final class C3350b extends GeneratedMessageLite.Builder<Voip, C3350b> implements Object {
        public C3350b() {
            super(Voip.DEFAULT_INSTANCE);
        }

        public C3350b(C3349a c3349a) {
            super(Voip.DEFAULT_INSTANCE);
        }

        /* renamed from: a */
        public C3350b m35893a(boolean z) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setDisabled(z);
            return this;
        }
    }

    static {
        Voip voip = new Voip();
        DEFAULT_INSTANCE = voip;
        GeneratedMessageLite.registerDefaultInstance(Voip.class, voip);
    }

    private Voip() {
    }

    public void clearDisabled() {
        this.disabled_ = false;
    }

    public void clearVersion() {
        this.version_ = 0;
    }

    public static Voip getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3350b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3350b newBuilder(Voip voip) {
        return DEFAULT_INSTANCE.createBuilder(voip);
    }

    public static Voip parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Voip parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Voip parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Voip parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Voip parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Voip parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Voip parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Voip parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Voip parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Voip parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Voip parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Voip parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Voip> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setDisabled(boolean z) {
        this.disabled_ = z;
    }

    public void setVersion(int i) {
        this.version_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0007\u0002\u0004", new Object[]{"disabled_", "version_"});
            case 3:
                return new Voip();
            case 4:
                return new C3350b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Voip.class) {
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

    public boolean getDisabled() {
        return this.disabled_;
    }

    public int getVersion() {
        return this.version_;
    }
}
