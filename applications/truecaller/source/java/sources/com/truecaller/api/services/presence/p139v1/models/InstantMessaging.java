package com.truecaller.api.services.presence.p139v1.models;

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
/* renamed from: com.truecaller.api.services.presence.v1.models.InstantMessaging */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/InstantMessaging.class */
public final class InstantMessaging extends GeneratedMessageLite<InstantMessaging, C3338b> implements Object {
    public static final int ADDRESS_FIELD_NUMBER = 2;
    private static final InstantMessaging DEFAULT_INSTANCE;
    public static final int DISABLED_FIELD_NUMBER = 99;
    private static volatile Parser<InstantMessaging> PARSER;
    public static final int VERSION_FIELD_NUMBER = 1;
    private String address_ = "";
    private boolean disabled_;
    private int version_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.InstantMessaging$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/InstantMessaging$b.class */
    public static final class C3338b extends GeneratedMessageLite.Builder<InstantMessaging, C3338b> implements Object {
        public C3338b() {
            super(InstantMessaging.DEFAULT_INSTANCE);
        }

        public C3338b(C3337a c3337a) {
            super(InstantMessaging.DEFAULT_INSTANCE);
        }
    }

    static {
        InstantMessaging instantMessaging = new InstantMessaging();
        DEFAULT_INSTANCE = instantMessaging;
        GeneratedMessageLite.registerDefaultInstance(InstantMessaging.class, instantMessaging);
    }

    private InstantMessaging() {
    }

    public void clearAddress() {
        this.address_ = getDefaultInstance().getAddress();
    }

    public void clearDisabled() {
        this.disabled_ = false;
    }

    public void clearVersion() {
        this.version_ = 0;
    }

    public static InstantMessaging getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3338b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3338b newBuilder(InstantMessaging instantMessaging) {
        return DEFAULT_INSTANCE.createBuilder(instantMessaging);
    }

    public static InstantMessaging parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InstantMessaging parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InstantMessaging parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InstantMessaging parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InstantMessaging parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InstantMessaging parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InstantMessaging parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InstantMessaging parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InstantMessaging parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InstantMessaging parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InstantMessaging parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InstantMessaging parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InstantMessaging> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setAddress(String str) {
        str.getClass();
        this.address_ = str;
    }

    public void setAddressBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.address_ = byteString.toStringUtf8();
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
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001c\u0003������\u0001\u0004\u0002Ȉc\u0007", new Object[]{"version_", "address_", "disabled_"});
            case 3:
                return new InstantMessaging();
            case 4:
                return new C3338b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InstantMessaging.class) {
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

    public String getAddress() {
        return this.address_;
    }

    public ByteString getAddressBytes() {
        return ByteString.copyFromUtf8(this.address_);
    }

    public boolean getDisabled() {
        return this.disabled_;
    }

    public int getVersion() {
        return this.version_;
    }
}
