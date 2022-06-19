package com.truecaller.api.services.previews.p140v1.models;

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
/* renamed from: com.truecaller.api.services.previews.v1.models.Location */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/Location.class */
public final class Location extends GeneratedMessageLite<Location, C3360b> implements Object {
    private static final Location DEFAULT_INSTANCE;
    public static final int LAT_FIELD_NUMBER = 2;
    public static final int LON_FIELD_NUMBER = 1;
    private static volatile Parser<Location> PARSER;
    private float lat_;
    private float lon_;

    /* renamed from: com.truecaller.api.services.previews.v1.models.Location$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/Location$b.class */
    public static final class C3360b extends GeneratedMessageLite.Builder<Location, C3360b> implements Object {
        public C3360b() {
            super(Location.DEFAULT_INSTANCE);
        }

        public C3360b(C3359a c3359a) {
            super(Location.DEFAULT_INSTANCE);
        }
    }

    static {
        Location location = new Location();
        DEFAULT_INSTANCE = location;
        GeneratedMessageLite.registerDefaultInstance(Location.class, location);
    }

    private Location() {
    }

    public void clearLat() {
        this.lat_ = 0.0f;
    }

    public void clearLon() {
        this.lon_ = 0.0f;
    }

    public static Location getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3360b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3360b newBuilder(Location location) {
        return DEFAULT_INSTANCE.createBuilder(location);
    }

    public static Location parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Location parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Location parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Location parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Location parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Location parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Location parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Location parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Location parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Location parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Location parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Location parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Location> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setLat(float f) {
        this.lat_ = f;
    }

    public void setLon(float f) {
        this.lon_ = f;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0001\u0002\u0001", new Object[]{"lon_", "lat_"});
            case 3:
                return new Location();
            case 4:
                return new C3360b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Location.class) {
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

    public float getLat() {
        return this.lat_;
    }

    public float getLon() {
        return this.lon_;
    }
}
