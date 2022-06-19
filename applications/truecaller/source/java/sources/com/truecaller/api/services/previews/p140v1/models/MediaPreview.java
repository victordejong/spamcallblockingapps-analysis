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
/* renamed from: com.truecaller.api.services.previews.v1.models.MediaPreview */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/MediaPreview.class */
public final class MediaPreview extends GeneratedMessageLite<MediaPreview, C3366b> implements Object {
    private static final MediaPreview DEFAULT_INSTANCE;
    public static final int DESCRIPTION_FIELD_NUMBER = 2;
    public static final int MEDIA_TYPE_FIELD_NUMBER = 4;
    private static volatile Parser<MediaPreview> PARSER;
    public static final int PREVIEW_URI_FIELD_NUMBER = 3;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int mediaType_;
    private String title_ = "";
    private String description_ = "";
    private String previewUri_ = "";

    /* renamed from: com.truecaller.api.services.previews.v1.models.MediaPreview$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/MediaPreview$b.class */
    public static final class C3366b extends GeneratedMessageLite.Builder<MediaPreview, C3366b> implements Object {
        public C3366b() {
            super(MediaPreview.DEFAULT_INSTANCE);
        }

        public C3366b(C3365a c3365a) {
            super(MediaPreview.DEFAULT_INSTANCE);
        }
    }

    static {
        MediaPreview mediaPreview = new MediaPreview();
        DEFAULT_INSTANCE = mediaPreview;
        GeneratedMessageLite.registerDefaultInstance(MediaPreview.class, mediaPreview);
    }

    private MediaPreview() {
    }

    public void clearDescription() {
        this.description_ = getDefaultInstance().getDescription();
    }

    public void clearMediaType() {
        this.mediaType_ = 0;
    }

    public void clearPreviewUri() {
        this.previewUri_ = getDefaultInstance().getPreviewUri();
    }

    public void clearTitle() {
        this.title_ = getDefaultInstance().getTitle();
    }

    public static MediaPreview getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3366b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3366b newBuilder(MediaPreview mediaPreview) {
        return DEFAULT_INSTANCE.createBuilder(mediaPreview);
    }

    public static MediaPreview parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MediaPreview parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MediaPreview parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static MediaPreview parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static MediaPreview parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static MediaPreview parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static MediaPreview parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MediaPreview parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MediaPreview parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static MediaPreview parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static MediaPreview parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MediaPreview parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<MediaPreview> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setDescription(String str) {
        str.getClass();
        this.description_ = str;
    }

    public void setDescriptionBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.description_ = byteString.toStringUtf8();
    }

    public void setMediaType(MediaType mediaType) {
        this.mediaType_ = mediaType.getNumber();
    }

    public void setMediaTypeValue(int i) {
        this.mediaType_ = i;
    }

    public void setPreviewUri(String str) {
        str.getClass();
        this.previewUri_ = str;
    }

    public void setPreviewUriBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.previewUri_ = byteString.toStringUtf8();
    }

    public void setTitle(String str) {
        str.getClass();
        this.title_ = str;
    }

    public void setTitleBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.title_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004\f", new Object[]{"title_", "description_", "previewUri_", "mediaType_"});
            case 3:
                return new MediaPreview();
            case 4:
                return new C3366b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (MediaPreview.class) {
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

    public String getDescription() {
        return this.description_;
    }

    public ByteString getDescriptionBytes() {
        return ByteString.copyFromUtf8(this.description_);
    }

    public MediaType getMediaType() {
        MediaType forNumber = MediaType.forNumber(this.mediaType_);
        MediaType mediaType = forNumber;
        if (forNumber == null) {
            mediaType = MediaType.UNRECOGNIZED;
        }
        return mediaType;
    }

    public int getMediaTypeValue() {
        return this.mediaType_;
    }

    public String getPreviewUri() {
        return this.previewUri_;
    }

    public ByteString getPreviewUriBytes() {
        return ByteString.copyFromUtf8(this.previewUri_);
    }

    public String getTitle() {
        return this.title_;
    }

    public ByteString getTitleBytes() {
        return ByteString.copyFromUtf8(this.title_);
    }
}
