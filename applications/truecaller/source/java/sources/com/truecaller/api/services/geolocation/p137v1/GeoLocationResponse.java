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
/* renamed from: com.truecaller.api.services.geolocation.v1.GeoLocationResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/geolocation/v1/GeoLocationResponse.class */
public final class GeoLocationResponse extends GeneratedMessageLite<GeoLocationResponse, C2982b> implements Object {
    public static final int CITY_FIELD_NUMBER = 1;
    private static final GeoLocationResponse DEFAULT_INSTANCE;
    private static volatile Parser<GeoLocationResponse> PARSER;
    public static final int PINCODE_FIELD_NUMBER = 3;
    public static final int STATE_FIELD_NUMBER = 2;
    private String city_ = "";
    private String state_ = "";
    private String pincode_ = "";

    /* renamed from: com.truecaller.api.services.geolocation.v1.GeoLocationResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/geolocation/v1/GeoLocationResponse$b.class */
    public static final class C2982b extends GeneratedMessageLite.Builder<GeoLocationResponse, C2982b> implements Object {
        public C2982b() {
            super(GeoLocationResponse.DEFAULT_INSTANCE);
        }

        public C2982b(C2981a c2981a) {
            super(GeoLocationResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        GeoLocationResponse geoLocationResponse = new GeoLocationResponse();
        DEFAULT_INSTANCE = geoLocationResponse;
        GeneratedMessageLite.registerDefaultInstance(GeoLocationResponse.class, geoLocationResponse);
    }

    private GeoLocationResponse() {
    }

    public void clearCity() {
        this.city_ = getDefaultInstance().getCity();
    }

    public void clearPincode() {
        this.pincode_ = getDefaultInstance().getPincode();
    }

    public void clearState() {
        this.state_ = getDefaultInstance().getState();
    }

    public static GeoLocationResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2982b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2982b newBuilder(GeoLocationResponse geoLocationResponse) {
        return DEFAULT_INSTANCE.createBuilder(geoLocationResponse);
    }

    public static GeoLocationResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GeoLocationResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GeoLocationResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GeoLocationResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GeoLocationResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GeoLocationResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GeoLocationResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GeoLocationResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GeoLocationResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GeoLocationResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GeoLocationResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GeoLocationResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GeoLocationResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setCity(String str) {
        str.getClass();
        this.city_ = str;
    }

    public void setCityBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.city_ = byteString.toStringUtf8();
    }

    public void setPincode(String str) {
        str.getClass();
        this.pincode_ = str;
    }

    public void setPincodeBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.pincode_ = byteString.toStringUtf8();
    }

    public void setState(String str) {
        str.getClass();
        this.state_ = str;
    }

    public void setStateBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.state_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"city_", "state_", "pincode_"});
            case 3:
                return new GeoLocationResponse();
            case 4:
                return new C2982b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GeoLocationResponse.class) {
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

    public String getCity() {
        return this.city_;
    }

    public ByteString getCityBytes() {
        return ByteString.copyFromUtf8(this.city_);
    }

    public String getPincode() {
        return this.pincode_;
    }

    public ByteString getPincodeBytes() {
        return ByteString.copyFromUtf8(this.pincode_);
    }

    public String getState() {
        return this.state_;
    }

    public ByteString getStateBytes() {
        return ByteString.copyFromUtf8(this.state_);
    }
}
