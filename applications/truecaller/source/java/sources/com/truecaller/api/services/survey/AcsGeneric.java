package com.truecaller.api.services.survey;

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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/AcsGeneric.class */
public final class AcsGeneric extends GeneratedMessageLite<AcsGeneric, C3396b> implements Object {
    private static final AcsGeneric DEFAULT_INSTANCE;
    private static volatile Parser<AcsGeneric> PARSER;
    public static final int PHONEBOOK_STATUS_FIELD_NUMBER = 4;
    public static final int SHOW_IF_MISSED_FIELD_NUMBER = 2;
    public static final int SHOW_IF_OUTGOING_FIELD_NUMBER = 3;
    public static final int SHOW_IF_PICKED_UP_FIELD_NUMBER = 1;
    private int phonebookStatus_;
    private boolean showIfMissed_;
    private boolean showIfOutgoing_;
    private boolean showIfPickedUp_;

    /* renamed from: com.truecaller.api.services.survey.AcsGeneric$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/AcsGeneric$b.class */
    public static final class C3396b extends GeneratedMessageLite.Builder<AcsGeneric, C3396b> implements Object {
        public C3396b() {
            super(AcsGeneric.DEFAULT_INSTANCE);
        }

        public C3396b(C3395a c3395a) {
            super(AcsGeneric.DEFAULT_INSTANCE);
        }
    }

    static {
        AcsGeneric acsGeneric = new AcsGeneric();
        DEFAULT_INSTANCE = acsGeneric;
        GeneratedMessageLite.registerDefaultInstance(AcsGeneric.class, acsGeneric);
    }

    private AcsGeneric() {
    }

    public void clearPhonebookStatus() {
        this.phonebookStatus_ = 0;
    }

    public void clearShowIfMissed() {
        this.showIfMissed_ = false;
    }

    public void clearShowIfOutgoing() {
        this.showIfOutgoing_ = false;
    }

    public void clearShowIfPickedUp() {
        this.showIfPickedUp_ = false;
    }

    public static AcsGeneric getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3396b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3396b newBuilder(AcsGeneric acsGeneric) {
        return DEFAULT_INSTANCE.createBuilder(acsGeneric);
    }

    public static AcsGeneric parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AcsGeneric parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static AcsGeneric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static AcsGeneric parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static AcsGeneric parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static AcsGeneric parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static AcsGeneric parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AcsGeneric parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static AcsGeneric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static AcsGeneric parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static AcsGeneric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AcsGeneric parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<AcsGeneric> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setPhonebookStatus(PhonebookStatus phonebookStatus) {
        this.phonebookStatus_ = phonebookStatus.getNumber();
    }

    public void setPhonebookStatusValue(int i) {
        this.phonebookStatus_ = i;
    }

    public void setShowIfMissed(boolean z) {
        this.showIfMissed_ = z;
    }

    public void setShowIfOutgoing(boolean z) {
        this.showIfOutgoing_ = z;
    }

    public void setShowIfPickedUp(boolean z) {
        this.showIfPickedUp_ = z;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\u0007\u0002\u0007\u0003\u0007\u0004\f", new Object[]{"showIfPickedUp_", "showIfMissed_", "showIfOutgoing_", "phonebookStatus_"});
            case 3:
                return new AcsGeneric();
            case 4:
                return new C3396b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (AcsGeneric.class) {
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

    public PhonebookStatus getPhonebookStatus() {
        PhonebookStatus forNumber = PhonebookStatus.forNumber(this.phonebookStatus_);
        PhonebookStatus phonebookStatus = forNumber;
        if (forNumber == null) {
            phonebookStatus = PhonebookStatus.UNRECOGNIZED;
        }
        return phonebookStatus;
    }

    public int getPhonebookStatusValue() {
        return this.phonebookStatus_;
    }

    public boolean getShowIfMissed() {
        return this.showIfMissed_;
    }

    public boolean getShowIfOutgoing() {
        return this.showIfOutgoing_;
    }

    public boolean getShowIfPickedUp() {
        return this.showIfPickedUp_;
    }
}
