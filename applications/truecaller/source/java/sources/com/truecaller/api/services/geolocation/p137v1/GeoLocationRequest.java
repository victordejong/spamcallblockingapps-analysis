package com.truecaller.api.services.geolocation.p137v1;

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
/* renamed from: com.truecaller.api.services.geolocation.v1.GeoLocationRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/geolocation/v1/GeoLocationRequest.class */
public final class GeoLocationRequest extends GeneratedMessageLite<GeoLocationRequest, C2980b> implements Object {
    private static final GeoLocationRequest DEFAULT_INSTANCE;
    private static volatile Parser<GeoLocationRequest> PARSER;
    public static final int PINCODE_FIELD_NUMBER = 1;
    private String pincode_ = "";

    /* renamed from: com.truecaller.api.services.geolocation.v1.GeoLocationRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/geolocation/v1/GeoLocationRequest$b.class */
    public static final class C2980b extends GeneratedMessageLite.Builder<GeoLocationRequest, C2980b> implements Object {
        public C2980b() {
            super(GeoLocationRequest.DEFAULT_INSTANCE);
        }

        public C2980b(C2979a c2979a) {
            super(GeoLocationRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        GeoLocationRequest geoLocationRequest = new GeoLocationRequest();
        DEFAULT_INSTANCE = geoLocationRequest;
        GeneratedMessageLite.registerDefaultInstance(GeoLocationRequest.class, geoLocationRequest);
    }

    private GeoLocationRequest() {
    }

    public void clearPincode() {
        this.pincode_ = getDefaultInstance().getPincode();
    }

    public static GeoLocationRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2980b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2980b newBuilder(GeoLocationRequest geoLocationRequest) {
        return DEFAULT_INSTANCE.createBuilder(geoLocationRequest);
    }

    public static GeoLocationRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GeoLocationRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GeoLocationRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GeoLocationRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GeoLocationRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GeoLocationRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GeoLocationRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GeoLocationRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GeoLocationRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GeoLocationRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GeoLocationRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GeoLocationRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GeoLocationRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setPincode(String str) {
        str.getClass();
        this.pincode_ = str;
    }

    public void setPincodeBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.pincode_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"pincode_"});
            case 3:
                return new GeoLocationRequest();
            case 4:
                return new C2980b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GeoLocationRequest.class) {
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

    public String getPincode() {
        return this.pincode_;
    }

    public ByteString getPincodeBytes() {
        return ByteString.copyFromUtf8(this.pincode_);
    }
}
