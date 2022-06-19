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
/* renamed from: com.truecaller.api.services.presence.v1.models.Payment */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Payment.class */
public final class Payment extends GeneratedMessageLite<Payment, C3340b> implements Object {
    private static final Payment DEFAULT_INSTANCE;
    public static final int ENABLED_FIELD_NUMBER = 1;
    public static final int LAST_TXN_FIELD_NUMBER = 3;
    private static volatile Parser<Payment> PARSER;
    public static final int VERSION_FIELD_NUMBER = 2;
    private boolean enabled_;
    private int lastTxn_;
    private int version_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.Payment$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/Payment$b.class */
    public static final class C3340b extends GeneratedMessageLite.Builder<Payment, C3340b> implements Object {
        public C3340b() {
            super(Payment.DEFAULT_INSTANCE);
        }

        public C3340b(C3339a c3339a) {
            super(Payment.DEFAULT_INSTANCE);
        }
    }

    static {
        Payment payment = new Payment();
        DEFAULT_INSTANCE = payment;
        GeneratedMessageLite.registerDefaultInstance(Payment.class, payment);
    }

    private Payment() {
    }

    public void clearEnabled() {
        this.enabled_ = false;
    }

    public void clearLastTxn() {
        this.lastTxn_ = 0;
    }

    public void clearVersion() {
        this.version_ = 0;
    }

    public static Payment getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3340b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3340b newBuilder(Payment payment) {
        return DEFAULT_INSTANCE.createBuilder(payment);
    }

    public static Payment parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Payment parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Payment parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Payment parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Payment parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Payment parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Payment parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Payment parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Payment parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Payment parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Payment parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Payment parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Payment> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setEnabled(boolean z) {
        this.enabled_ = z;
    }

    public void setLastTxn(int i) {
        this.lastTxn_ = i;
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
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\u0007\u0002\u0004\u0003\u0004", new Object[]{"enabled_", "version_", "lastTxn_"});
            case 3:
                return new Payment();
            case 4:
                return new C3340b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Payment.class) {
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

    public int getLastTxn() {
        return this.lastTxn_;
    }

    public int getVersion() {
        return this.version_;
    }
}
