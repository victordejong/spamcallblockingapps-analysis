package com.truecaller.api.services.presence.p139v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.truecaller.api.services.presence.v1.GetPresenceRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceRequest.class */
public final class GetPresenceRequest extends GeneratedMessageLite<GetPresenceRequest, C3310b> implements Object {
    private static final GetPresenceRequest DEFAULT_INSTANCE;
    private static volatile Parser<GetPresenceRequest> PARSER;
    public static final int PHONE_NUMBERS_FIELD_NUMBER = 1;
    private Internal.ProtobufList<String> phoneNumbers_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.presence.v1.GetPresenceRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceRequest$b.class */
    public static final class C3310b extends GeneratedMessageLite.Builder<GetPresenceRequest, C3310b> implements Object {
        public C3310b() {
            super(GetPresenceRequest.DEFAULT_INSTANCE);
        }

        public C3310b(C3309a c3309a) {
            super(GetPresenceRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        GetPresenceRequest getPresenceRequest = new GetPresenceRequest();
        DEFAULT_INSTANCE = getPresenceRequest;
        GeneratedMessageLite.registerDefaultInstance(GetPresenceRequest.class, getPresenceRequest);
    }

    private GetPresenceRequest() {
    }

    public void addAllPhoneNumbers(Iterable<String> iterable) {
        ensurePhoneNumbersIsMutable();
        AbstractMessageLite.addAll(iterable, this.phoneNumbers_);
    }

    public void addPhoneNumbers(String str) {
        str.getClass();
        ensurePhoneNumbersIsMutable();
        this.phoneNumbers_.add(str);
    }

    public void addPhoneNumbersBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        ensurePhoneNumbersIsMutable();
        this.phoneNumbers_.add(byteString.toStringUtf8());
    }

    public void clearPhoneNumbers() {
        this.phoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
    }

    private void ensurePhoneNumbersIsMutable() {
        Internal.ProtobufList<String> protobufList = this.phoneNumbers_;
        if (!protobufList.isModifiable()) {
            this.phoneNumbers_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static GetPresenceRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3310b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3310b newBuilder(GetPresenceRequest getPresenceRequest) {
        return DEFAULT_INSTANCE.createBuilder(getPresenceRequest);
    }

    public static GetPresenceRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetPresenceRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetPresenceRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetPresenceRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetPresenceRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetPresenceRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetPresenceRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetPresenceRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetPresenceRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetPresenceRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetPresenceRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetPresenceRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetPresenceRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setPhoneNumbers(int i, String str) {
        str.getClass();
        ensurePhoneNumbersIsMutable();
        this.phoneNumbers_.set(i, str);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001Ț", new Object[]{"phoneNumbers_"});
            case 3:
                return new GetPresenceRequest();
            case 4:
                return new C3310b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetPresenceRequest.class) {
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

    public String getPhoneNumbers(int i) {
        return this.phoneNumbers_.get(i);
    }

    public ByteString getPhoneNumbersBytes(int i) {
        return ByteString.copyFromUtf8(this.phoneNumbers_.get(i));
    }

    public int getPhoneNumbersCount() {
        return this.phoneNumbers_.size();
    }

    public List<String> getPhoneNumbersList() {
        return this.phoneNumbers_;
    }
}
