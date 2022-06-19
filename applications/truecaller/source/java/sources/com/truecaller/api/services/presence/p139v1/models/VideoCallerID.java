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
/* renamed from: com.truecaller.api.services.presence.v1.models.VideoCallerID */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/VideoCallerID.class */
public final class VideoCallerID extends GeneratedMessageLite<VideoCallerID, C3348b> implements Object {
    private static final VideoCallerID DEFAULT_INSTANCE;
    public static final int DISABLED_FIELD_NUMBER = 1;
    private static volatile Parser<VideoCallerID> PARSER;
    public static final int VERSION_FIELD_NUMBER = 2;
    private boolean disabled_;
    private int version_;

    /* renamed from: com.truecaller.api.services.presence.v1.models.VideoCallerID$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/models/VideoCallerID$b.class */
    public static final class C3348b extends GeneratedMessageLite.Builder<VideoCallerID, C3348b> implements Object {
        public C3348b() {
            super(VideoCallerID.DEFAULT_INSTANCE);
        }

        public C3348b(C3347a c3347a) {
            super(VideoCallerID.DEFAULT_INSTANCE);
        }
    }

    static {
        VideoCallerID videoCallerID = new VideoCallerID();
        DEFAULT_INSTANCE = videoCallerID;
        GeneratedMessageLite.registerDefaultInstance(VideoCallerID.class, videoCallerID);
    }

    private VideoCallerID() {
    }

    public void clearDisabled() {
        this.disabled_ = false;
    }

    public void clearVersion() {
        this.version_ = 0;
    }

    public static VideoCallerID getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3348b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3348b newBuilder(VideoCallerID videoCallerID) {
        return DEFAULT_INSTANCE.createBuilder(videoCallerID);
    }

    public static VideoCallerID parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static VideoCallerID parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static VideoCallerID parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static VideoCallerID parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static VideoCallerID parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static VideoCallerID parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static VideoCallerID parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static VideoCallerID parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static VideoCallerID parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static VideoCallerID parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static VideoCallerID parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static VideoCallerID parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<VideoCallerID> parser() {
        return DEFAULT_INSTANCE.getParserForType();
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
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0007\u0002\u0004", new Object[]{"disabled_", "version_"});
            case 3:
                return new VideoCallerID();
            case 4:
                return new C3348b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (VideoCallerID.class) {
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

    public boolean getDisabled() {
        return this.disabled_;
    }

    public int getVersion() {
        return this.version_;
    }
}
