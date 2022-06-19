package com.truecaller.api.services.callerid.p135v1.model;

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
/* renamed from: com.truecaller.api.services.callerid.v1.model.VideoCallerId */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/VideoCallerId.class */
public final class VideoCallerId extends GeneratedMessageLite<VideoCallerId, C2936b> implements Object {
    public static final int CALLID_FIELD_NUMBER = 4;
    private static final VideoCallerId DEFAULT_INSTANCE;
    public static final int DURATION_FIELD_NUMBER = 3;
    public static final int MIRROR_PLAYBACK_FIELD_NUMBER = 5;
    private static volatile Parser<VideoCallerId> PARSER;
    public static final int SIZEBYTES_FIELD_NUMBER = 2;
    public static final int VIDEOID_FIELD_NUMBER = 1;
    private long duration_;
    private boolean mirrorPlayback_;
    private long sizeBytes_;
    private String videoId_ = "";
    private String callId_ = "";

    /* renamed from: com.truecaller.api.services.callerid.v1.model.VideoCallerId$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/VideoCallerId$b.class */
    public static final class C2936b extends GeneratedMessageLite.Builder<VideoCallerId, C2936b> implements Object {
        public C2936b() {
            super(VideoCallerId.DEFAULT_INSTANCE);
        }

        public C2936b(C2935a c2935a) {
            super(VideoCallerId.DEFAULT_INSTANCE);
        }
    }

    static {
        VideoCallerId videoCallerId = new VideoCallerId();
        DEFAULT_INSTANCE = videoCallerId;
        GeneratedMessageLite.registerDefaultInstance(VideoCallerId.class, videoCallerId);
    }

    private VideoCallerId() {
    }

    public void clearCallId() {
        this.callId_ = getDefaultInstance().getCallId();
    }

    public void clearDuration() {
        this.duration_ = 0L;
    }

    public void clearMirrorPlayback() {
        this.mirrorPlayback_ = false;
    }

    public void clearSizeBytes() {
        this.sizeBytes_ = 0L;
    }

    public void clearVideoId() {
        this.videoId_ = getDefaultInstance().getVideoId();
    }

    public static VideoCallerId getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2936b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2936b newBuilder(VideoCallerId videoCallerId) {
        return DEFAULT_INSTANCE.createBuilder(videoCallerId);
    }

    public static VideoCallerId parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static VideoCallerId parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static VideoCallerId parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static VideoCallerId parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static VideoCallerId parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static VideoCallerId parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static VideoCallerId parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static VideoCallerId parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static VideoCallerId parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static VideoCallerId parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static VideoCallerId parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static VideoCallerId parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<VideoCallerId> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setCallId(String str) {
        str.getClass();
        this.callId_ = str;
    }

    public void setCallIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.callId_ = byteString.toStringUtf8();
    }

    public void setDuration(long j) {
        this.duration_ = j;
    }

    public void setMirrorPlayback(boolean z) {
        this.mirrorPlayback_ = z;
    }

    public void setSizeBytes(long j) {
        this.sizeBytes_ = j;
    }

    public void setVideoId(String str) {
        str.getClass();
        this.videoId_ = str;
    }

    public void setVideoIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.videoId_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002\u0005\u0003\u0002\u0004Ȉ\u0005\u0007", new Object[]{"videoId_", "sizeBytes_", "duration_", "callId_", "mirrorPlayback_"});
            case 3:
                return new VideoCallerId();
            case 4:
                return new C2936b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (VideoCallerId.class) {
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

    public String getCallId() {
        return this.callId_;
    }

    public ByteString getCallIdBytes() {
        return ByteString.copyFromUtf8(this.callId_);
    }

    public long getDuration() {
        return this.duration_;
    }

    public boolean getMirrorPlayback() {
        return this.mirrorPlayback_;
    }

    public long getSizeBytes() {
        return this.sizeBytes_;
    }

    public String getVideoId() {
        return this.videoId_;
    }

    public ByteString getVideoIdBytes() {
        return ByteString.copyFromUtf8(this.videoId_);
    }
}
