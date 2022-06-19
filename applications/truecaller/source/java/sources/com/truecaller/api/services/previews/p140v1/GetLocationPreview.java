package com.truecaller.api.services.previews.p140v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.previews.p140v1.models.Location;
import com.truecaller.api.services.previews.p140v1.models.LocationPreview;
import com.truecaller.api.services.previews.p140v1.models.MapStyle;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.previews.v1.GetLocationPreview */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/GetLocationPreview.class */
public final class GetLocationPreview extends GeneratedMessageLite<GetLocationPreview, C3354b> implements Object {
    private static final GetLocationPreview DEFAULT_INSTANCE;
    private static volatile Parser<GetLocationPreview> PARSER;

    /* renamed from: com.truecaller.api.services.previews.v1.GetLocationPreview$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/GetLocationPreview$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3351a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int LOCATION_FIELD_NUMBER = 1;
        public static final int MAPSTYLE_FIELD_NUMBER = 2;
        private static volatile Parser<Request> PARSER;
        private Location location_;
        private int mapStyle_;

        /* renamed from: com.truecaller.api.services.previews.v1.GetLocationPreview$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/GetLocationPreview$Request$a.class */
        public static final class C3351a extends GeneratedMessageLite.Builder<Request, C3351a> implements Object {
            public C3351a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3351a(C3353a c3353a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void clearLocation() {
            this.location_ = null;
        }

        public void clearMapStyle() {
            this.mapStyle_ = 0;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeLocation(Location location) {
            location.getClass();
            Location location2 = this.location_;
            if (location2 == null || location2 == Location.getDefaultInstance()) {
                this.location_ = location;
            } else {
                this.location_ = Location.newBuilder(this.location_).mergeFrom(location).buildPartial();
            }
        }

        public static C3351a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3351a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setLocation(Location location) {
            location.getClass();
            this.location_ = location;
        }

        public void setMapStyle(MapStyle mapStyle) {
            this.mapStyle_ = mapStyle.getNumber();
        }

        public void setMapStyleValue(int i) {
            this.mapStyle_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\f", new Object[]{"location_", "mapStyle_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3351a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
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

        public Location getLocation() {
            Location location = this.location_;
            Location location2 = location;
            if (location == null) {
                location2 = Location.getDefaultInstance();
            }
            return location2;
        }

        public MapStyle getMapStyle() {
            MapStyle forNumber = MapStyle.forNumber(this.mapStyle_);
            MapStyle mapStyle = forNumber;
            if (forNumber == null) {
                mapStyle = MapStyle.UNRECOGNIZED;
            }
            return mapStyle;
        }

        public int getMapStyleValue() {
            return this.mapStyle_;
        }

        public boolean hasLocation() {
            return this.location_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.previews.v1.GetLocationPreview$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/GetLocationPreview$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3352a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        public static final int LOCATIONPREVIEW_FIELD_NUMBER = 1;
        private static volatile Parser<Response> PARSER;
        private LocationPreview locationPreview_;

        /* renamed from: com.truecaller.api.services.previews.v1.GetLocationPreview$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/GetLocationPreview$Response$a.class */
        public static final class C3352a extends GeneratedMessageLite.Builder<Response, C3352a> implements Object {
            public C3352a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3352a(C3353a c3353a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public void clearLocationPreview() {
            this.locationPreview_ = null;
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeLocationPreview(LocationPreview locationPreview) {
            locationPreview.getClass();
            LocationPreview locationPreview2 = this.locationPreview_;
            if (locationPreview2 == null || locationPreview2 == LocationPreview.getDefaultInstance()) {
                this.locationPreview_ = locationPreview;
            } else {
                this.locationPreview_ = LocationPreview.newBuilder(this.locationPreview_).mergeFrom(locationPreview).buildPartial();
            }
        }

        public static C3352a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3352a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setLocationPreview(LocationPreview locationPreview) {
            locationPreview.getClass();
            this.locationPreview_ = locationPreview;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"locationPreview_"});
                case 3:
                    return new Response();
                case 4:
                    return new C3352a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
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

        public LocationPreview getLocationPreview() {
            LocationPreview locationPreview = this.locationPreview_;
            LocationPreview locationPreview2 = locationPreview;
            if (locationPreview == null) {
                locationPreview2 = LocationPreview.getDefaultInstance();
            }
            return locationPreview2;
        }

        public boolean hasLocationPreview() {
            return this.locationPreview_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.previews.v1.GetLocationPreview$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/GetLocationPreview$b.class */
    public static final class C3354b extends GeneratedMessageLite.Builder<GetLocationPreview, C3354b> implements Object {
        public C3354b() {
            super(GetLocationPreview.DEFAULT_INSTANCE);
        }

        public C3354b(C3353a c3353a) {
            super(GetLocationPreview.DEFAULT_INSTANCE);
        }
    }

    static {
        GetLocationPreview getLocationPreview = new GetLocationPreview();
        DEFAULT_INSTANCE = getLocationPreview;
        GeneratedMessageLite.registerDefaultInstance(GetLocationPreview.class, getLocationPreview);
    }

    private GetLocationPreview() {
    }

    public static GetLocationPreview getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3354b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3354b newBuilder(GetLocationPreview getLocationPreview) {
        return DEFAULT_INSTANCE.createBuilder(getLocationPreview);
    }

    public static GetLocationPreview parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetLocationPreview parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetLocationPreview parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetLocationPreview parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetLocationPreview parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetLocationPreview parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetLocationPreview parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetLocationPreview parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetLocationPreview parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetLocationPreview parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetLocationPreview parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetLocationPreview parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetLocationPreview> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new GetLocationPreview();
            case 4:
                return new C3354b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetLocationPreview.class) {
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
}
