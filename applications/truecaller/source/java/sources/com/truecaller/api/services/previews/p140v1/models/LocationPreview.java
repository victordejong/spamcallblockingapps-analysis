package com.truecaller.api.services.previews.p140v1.models;

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
/* renamed from: com.truecaller.api.services.previews.v1.models.LocationPreview */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/LocationPreview.class */
public final class LocationPreview extends GeneratedMessageLite<LocationPreview, C3362b> implements Object {
    private static final LocationPreview DEFAULT_INSTANCE;
    public static final int MAP_URI_FIELD_NUMBER = 1;
    private static volatile Parser<LocationPreview> PARSER;
    private String mapUri_ = "";

    /* renamed from: com.truecaller.api.services.previews.v1.models.LocationPreview$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/LocationPreview$b.class */
    public static final class C3362b extends GeneratedMessageLite.Builder<LocationPreview, C3362b> implements Object {
        public C3362b() {
            super(LocationPreview.DEFAULT_INSTANCE);
        }

        public C3362b(C3361a c3361a) {
            super(LocationPreview.DEFAULT_INSTANCE);
        }
    }

    static {
        LocationPreview locationPreview = new LocationPreview();
        DEFAULT_INSTANCE = locationPreview;
        GeneratedMessageLite.registerDefaultInstance(LocationPreview.class, locationPreview);
    }

    private LocationPreview() {
    }

    public void clearMapUri() {
        this.mapUri_ = getDefaultInstance().getMapUri();
    }

    public static LocationPreview getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3362b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3362b newBuilder(LocationPreview locationPreview) {
        return DEFAULT_INSTANCE.createBuilder(locationPreview);
    }

    public static LocationPreview parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static LocationPreview parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static LocationPreview parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static LocationPreview parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static LocationPreview parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static LocationPreview parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static LocationPreview parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static LocationPreview parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static LocationPreview parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static LocationPreview parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static LocationPreview parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static LocationPreview parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<LocationPreview> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setMapUri(String str) {
        str.getClass();
        this.mapUri_ = str;
    }

    public void setMapUriBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.mapUri_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"mapUri_"});
            case 3:
                return new LocationPreview();
            case 4:
                return new C3362b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (LocationPreview.class) {
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

    public String getMapUri() {
        return this.mapUri_;
    }

    public ByteString getMapUriBytes() {
        return ByteString.copyFromUtf8(this.mapUri_);
    }
}
