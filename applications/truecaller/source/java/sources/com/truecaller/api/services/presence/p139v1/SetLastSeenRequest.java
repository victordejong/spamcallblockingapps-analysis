package com.truecaller.api.services.presence.p139v1;

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
/* renamed from: com.truecaller.api.services.presence.v1.SetLastSeenRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/SetLastSeenRequest.class */
public final class SetLastSeenRequest extends GeneratedMessageLite<SetLastSeenRequest, C3316b> implements Object {
    private static final SetLastSeenRequest DEFAULT_INSTANCE;
    private static volatile Parser<SetLastSeenRequest> PARSER;
    public static final int TIME_ZONE_FIELD_NUMBER = 1;
    private String timeZone_ = "";

    /* renamed from: com.truecaller.api.services.presence.v1.SetLastSeenRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/SetLastSeenRequest$b.class */
    public static final class C3316b extends GeneratedMessageLite.Builder<SetLastSeenRequest, C3316b> implements Object {
        public C3316b() {
            super(SetLastSeenRequest.DEFAULT_INSTANCE);
        }

        public C3316b(C3315a c3315a) {
            super(SetLastSeenRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        SetLastSeenRequest setLastSeenRequest = new SetLastSeenRequest();
        DEFAULT_INSTANCE = setLastSeenRequest;
        GeneratedMessageLite.registerDefaultInstance(SetLastSeenRequest.class, setLastSeenRequest);
    }

    private SetLastSeenRequest() {
    }

    public void clearTimeZone() {
        this.timeZone_ = getDefaultInstance().getTimeZone();
    }

    public static SetLastSeenRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3316b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3316b newBuilder(SetLastSeenRequest setLastSeenRequest) {
        return DEFAULT_INSTANCE.createBuilder(setLastSeenRequest);
    }

    public static SetLastSeenRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetLastSeenRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetLastSeenRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SetLastSeenRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SetLastSeenRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SetLastSeenRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SetLastSeenRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetLastSeenRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetLastSeenRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SetLastSeenRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SetLastSeenRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SetLastSeenRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SetLastSeenRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setTimeZone(String str) {
        str.getClass();
        this.timeZone_ = str;
    }

    public void setTimeZoneBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.timeZone_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"timeZone_"});
            case 3:
                return new SetLastSeenRequest();
            case 4:
                return new C3316b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SetLastSeenRequest.class) {
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

    public String getTimeZone() {
        return this.timeZone_;
    }

    public ByteString getTimeZoneBytes() {
        return ByteString.copyFromUtf8(this.timeZone_);
    }
}
