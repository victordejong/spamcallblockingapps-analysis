package com.truecaller.api.services.messenger.p138v1.models.input;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent.class */
public final class InputMessageContent extends GeneratedMessageLite<InputMessageContent, C3271b> implements Object {
    public static final int ANIMATION_FIELD_NUMBER = 7;
    public static final int AUDIO_FIELD_NUMBER = 6;
    private static final InputMessageContent DEFAULT_INSTANCE;
    public static final int FILE_FIELD_NUMBER = 8;
    public static final int FORWARD_INFO_FIELD_NUMBER = 11;
    public static final int IMAGE_FIELD_NUMBER = 2;
    public static final int LOCATION_FIELD_NUMBER = 4;
    public static final int MESSAGE_ENTITIES_FIELD_NUMBER = 9;
    private static volatile Parser<InputMessageContent> PARSER;
    public static final int REF_MESSAGE_ID_FIELD_NUMBER = 999;
    public static final int REF_SEQ_FIELD_NUMBER = 998;
    public static final int TEXT_FIELD_NUMBER = 1;
    public static final int TEXT_FORMAT_FIELD_NUMBER = 10;
    public static final int VCARD_FIELD_NUMBER = 3;
    public static final int VIDEO_FIELD_NUMBER = 5;
    private Object attachment_;
    private ForwardInfo forwardInfo_;
    private long refSeq_;
    private int textFormat_;
    private int attachmentCase_ = 0;
    private String text_ = "";
    private String refMessageId_ = "";
    private Internal.ProtobufList<MessageEntity> messageEntities_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Animation */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation.class */
    public static final class Animation extends GeneratedMessageLite<Animation, C3251a> implements Object {
        private static final Animation DEFAULT_INSTANCE;
        public static final int GIF_NANO_FIELD_NUMBER = 3;
        public static final int GIF_TINY_FIELD_NUMBER = 2;
        private static volatile Parser<Animation> PARSER;
        public static final int THUMBNAIL_FIELD_NUMBER = 1;
        private AnimationVariant gifNano_;
        private AnimationVariant gifTiny_;
        private ByteString thumbnail_ = ByteString.EMPTY;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Animation$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a.class */
        public static final class C3251a extends GeneratedMessageLite.Builder<Animation, C3251a> implements Object {
            public C3251a() {
                super(Animation.DEFAULT_INSTANCE);
            }

            public C3251a(C3270a c3270a) {
                super(Animation.DEFAULT_INSTANCE);
            }
        }

        static {
            Animation animation = new Animation();
            DEFAULT_INSTANCE = animation;
            GeneratedMessageLite.registerDefaultInstance(Animation.class, animation);
        }

        private Animation() {
        }

        public void clearGifNano() {
            this.gifNano_ = null;
        }

        public void clearGifTiny() {
            this.gifTiny_ = null;
        }

        public void clearThumbnail() {
            this.thumbnail_ = getDefaultInstance().getThumbnail();
        }

        public static Animation getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeGifNano(AnimationVariant animationVariant) {
            animationVariant.getClass();
            AnimationVariant animationVariant2 = this.gifNano_;
            if (animationVariant2 == null || animationVariant2 == AnimationVariant.getDefaultInstance()) {
                this.gifNano_ = animationVariant;
            } else {
                this.gifNano_ = AnimationVariant.newBuilder(this.gifNano_).mergeFrom(animationVariant).buildPartial();
            }
        }

        public void mergeGifTiny(AnimationVariant animationVariant) {
            animationVariant.getClass();
            AnimationVariant animationVariant2 = this.gifTiny_;
            if (animationVariant2 == null || animationVariant2 == AnimationVariant.getDefaultInstance()) {
                this.gifTiny_ = animationVariant;
            } else {
                this.gifTiny_ = AnimationVariant.newBuilder(this.gifTiny_).mergeFrom(animationVariant).buildPartial();
            }
        }

        public static C3251a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3251a newBuilder(Animation animation) {
            return DEFAULT_INSTANCE.createBuilder(animation);
        }

        public static Animation parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Animation parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Animation parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Animation parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Animation parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Animation parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Animation parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Animation parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Animation parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Animation parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Animation parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Animation parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Animation> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setGifNano(AnimationVariant animationVariant) {
            animationVariant.getClass();
            this.gifNano_ = animationVariant;
        }

        public void setGifTiny(AnimationVariant animationVariant) {
            animationVariant.getClass();
            this.gifTiny_ = animationVariant;
        }

        public void setThumbnail(ByteString byteString) {
            byteString.getClass();
            this.thumbnail_ = byteString;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\n\u0002\t\u0003\t", new Object[]{"thumbnail_", "gifTiny_", "gifNano_"});
                case 3:
                    return new Animation();
                case 4:
                    return new C3251a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Animation.class) {
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

        public AnimationVariant getGifNano() {
            AnimationVariant animationVariant = this.gifNano_;
            AnimationVariant animationVariant2 = animationVariant;
            if (animationVariant == null) {
                animationVariant2 = AnimationVariant.getDefaultInstance();
            }
            return animationVariant2;
        }

        public AnimationVariant getGifTiny() {
            AnimationVariant animationVariant = this.gifTiny_;
            AnimationVariant animationVariant2 = animationVariant;
            if (animationVariant == null) {
                animationVariant2 = AnimationVariant.getDefaultInstance();
            }
            return animationVariant2;
        }

        public ByteString getThumbnail() {
            return this.thumbnail_;
        }

        public boolean hasGifNano() {
            return this.gifNano_ != null;
        }

        public boolean hasGifTiny() {
            return this.gifTiny_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$AnimationVariant */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant.class */
    public static final class AnimationVariant extends GeneratedMessageLite<AnimationVariant, C3252a> implements Object {
        private static final AnimationVariant DEFAULT_INSTANCE;
        public static final int HEIGHT_FIELD_NUMBER = 5;
        private static volatile Parser<AnimationVariant> PARSER;
        public static final int SIZE_FIELD_NUMBER = 3;
        public static final int URI_FIELD_NUMBER = 1;
        public static final int URI_STATIC_FIELD_NUMBER = 2;
        public static final int WIDTH_FIELD_NUMBER = 4;
        private int height_;
        private int size_;
        private int width_;
        private String uri_ = "";
        private String uriStatic_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$AnimationVariant$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant$a.class */
        public static final class C3252a extends GeneratedMessageLite.Builder<AnimationVariant, C3252a> implements Object {
            public C3252a() {
                super(AnimationVariant.DEFAULT_INSTANCE);
            }

            public C3252a(C3270a c3270a) {
                super(AnimationVariant.DEFAULT_INSTANCE);
            }
        }

        static {
            AnimationVariant animationVariant = new AnimationVariant();
            DEFAULT_INSTANCE = animationVariant;
            GeneratedMessageLite.registerDefaultInstance(AnimationVariant.class, animationVariant);
        }

        private AnimationVariant() {
        }

        public void clearHeight() {
            this.height_ = 0;
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearUri() {
            this.uri_ = getDefaultInstance().getUri();
        }

        public void clearUriStatic() {
            this.uriStatic_ = getDefaultInstance().getUriStatic();
        }

        public void clearWidth() {
            this.width_ = 0;
        }

        public static AnimationVariant getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3252a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3252a newBuilder(AnimationVariant animationVariant) {
            return DEFAULT_INSTANCE.createBuilder(animationVariant);
        }

        public static AnimationVariant parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AnimationVariant parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AnimationVariant parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static AnimationVariant parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static AnimationVariant parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static AnimationVariant parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static AnimationVariant parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static AnimationVariant parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static AnimationVariant parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static AnimationVariant parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static AnimationVariant parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static AnimationVariant parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<AnimationVariant> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setHeight(int i) {
            this.height_ = i;
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setUri(String str) {
            str.getClass();
            this.uri_ = str;
        }

        public void setUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uri_ = byteString.toStringUtf8();
        }

        public void setUriStatic(String str) {
            str.getClass();
            this.uriStatic_ = str;
        }

        public void setUriStaticBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uriStatic_ = byteString.toStringUtf8();
        }

        public void setWidth(int i) {
            this.width_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u0004\u0004\u0004\u0005\u0004", new Object[]{"uri_", "uriStatic_", "size_", "width_", "height_"});
                case 3:
                    return new AnimationVariant();
                case 4:
                    return new C3252a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (AnimationVariant.class) {
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

        public int getHeight() {
            return this.height_;
        }

        public int getSize() {
            return this.size_;
        }

        public String getUri() {
            return this.uri_;
        }

        public ByteString getUriBytes() {
            return ByteString.copyFromUtf8(this.uri_);
        }

        public String getUriStatic() {
            return this.uriStatic_;
        }

        public ByteString getUriStaticBytes() {
            return ByteString.copyFromUtf8(this.uriStatic_);
        }

        public int getWidth() {
            return this.width_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$AttachmentCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AttachmentCase.class */
    public enum AttachmentCase {
        IMAGE(2),
        VCARD(3),
        LOCATION(4),
        VIDEO(5),
        AUDIO(6),
        ANIMATION(7),
        FILE(8),
        ATTACHMENT_NOT_SET(0);
        
        private final int value;

        AttachmentCase(int i) {
            this.value = i;
        }

        public static AttachmentCase forNumber(int i) {
            if (i != 0) {
                switch (i) {
                    case 2:
                        return IMAGE;
                    case 3:
                        return VCARD;
                    case 4:
                        return LOCATION;
                    case 5:
                        return VIDEO;
                    case 6:
                        return AUDIO;
                    case 7:
                        return ANIMATION;
                    case 8:
                        return FILE;
                    default:
                        return null;
                }
            }
            return ATTACHMENT_NOT_SET;
        }

        @Deprecated
        public static AttachmentCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio.class */
    public static final class Audio extends GeneratedMessageLite<Audio, C3257a> implements Object {
        private static final Audio DEFAULT_INSTANCE;
        public static final int DURATION_FIELD_NUMBER = 4;
        public static final int MIMETYPE_FIELD_NUMBER = 1;
        public static final int MUSIC_FIELD_NUMBER = 5;
        private static volatile Parser<Audio> PARSER;
        public static final int PODCAST_FIELD_NUMBER = 6;
        public static final int SIZE_FIELD_NUMBER = 3;
        public static final int URI_FIELD_NUMBER = 2;
        private int duration_;
        private Object ext_;
        private int size_;
        private int extCase_ = 0;
        private String mimeType_ = "";
        private String uri_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$ExtCase */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$ExtCase.class */
        public enum ExtCase {
            MUSIC(5),
            PODCAST(6),
            EXT_NOT_SET(0);
            
            private final int value;

            ExtCase(int i) {
                this.value = i;
            }

            public static ExtCase forNumber(int i) {
                if (i != 0) {
                    if (i == 5) {
                        return MUSIC;
                    }
                    if (i == 6) {
                        return PODCAST;
                    }
                    return null;
                }
                return EXT_NOT_SET;
            }

            @Deprecated
            public static ExtCase valueOf(int i) {
                return forNumber(i);
            }

            public int getNumber() {
                return this.value;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$MusicExt */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$MusicExt.class */
        public static final class MusicExt extends GeneratedMessageLite<MusicExt, C3253a> implements Object {
            public static final int ALBUM_FIELD_NUMBER = 3;
            public static final int ARTIST_FIELD_NUMBER = 2;
            private static final MusicExt DEFAULT_INSTANCE;
            private static volatile Parser<MusicExt> PARSER;
            public static final int TITLE_FIELD_NUMBER = 1;
            private String title_ = "";
            private String artist_ = "";
            private String album_ = "";

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$MusicExt$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$MusicExt$a.class */
            public static final class C3253a extends GeneratedMessageLite.Builder<MusicExt, C3253a> implements Object {
                public C3253a() {
                    super(MusicExt.DEFAULT_INSTANCE);
                }

                public C3253a(C3270a c3270a) {
                    super(MusicExt.DEFAULT_INSTANCE);
                }
            }

            static {
                MusicExt musicExt = new MusicExt();
                DEFAULT_INSTANCE = musicExt;
                GeneratedMessageLite.registerDefaultInstance(MusicExt.class, musicExt);
            }

            private MusicExt() {
            }

            public void clearAlbum() {
                this.album_ = getDefaultInstance().getAlbum();
            }

            public void clearArtist() {
                this.artist_ = getDefaultInstance().getArtist();
            }

            public void clearTitle() {
                this.title_ = getDefaultInstance().getTitle();
            }

            public static MusicExt getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3253a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3253a newBuilder(MusicExt musicExt) {
                return DEFAULT_INSTANCE.createBuilder(musicExt);
            }

            public static MusicExt parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static MusicExt parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static MusicExt parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static MusicExt parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static MusicExt parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static MusicExt parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static MusicExt parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static MusicExt parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static MusicExt parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static MusicExt parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static MusicExt parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static MusicExt parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<MusicExt> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setAlbum(String str) {
                str.getClass();
                this.album_ = str;
            }

            public void setAlbumBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.album_ = byteString.toStringUtf8();
            }

            public void setArtist(String str) {
                str.getClass();
                this.artist_ = str;
            }

            public void setArtistBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.artist_ = byteString.toStringUtf8();
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
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"title_", "artist_", "album_"});
                    case 3:
                        return new MusicExt();
                    case 4:
                        return new C3253a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (MusicExt.class) {
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

            public String getAlbum() {
                return this.album_;
            }

            public ByteString getAlbumBytes() {
                return ByteString.copyFromUtf8(this.album_);
            }

            public String getArtist() {
                return this.artist_;
            }

            public ByteString getArtistBytes() {
                return ByteString.copyFromUtf8(this.artist_);
            }

            public String getTitle() {
                return this.title_;
            }

            public ByteString getTitleBytes() {
                return ByteString.copyFromUtf8(this.title_);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$PodcastExt */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt.class */
        public static final class PodcastExt extends GeneratedMessageLite<PodcastExt, C3256b> implements Object {
            public static final int BOOKMARKS_FIELD_NUMBER = 5;
            private static final PodcastExt DEFAULT_INSTANCE;
            public static final int DESCRIPTION_FIELD_NUMBER = 4;
            public static final int EPISODE_FIELD_NUMBER = 3;
            private static volatile Parser<PodcastExt> PARSER;
            public static final int SEASON_FIELD_NUMBER = 2;
            public static final int TITLE_FIELD_NUMBER = 1;
            private int episode_;
            private int season_;
            private String title_ = "";
            private String description_ = "";
            private Internal.ProtobufList<Bookmark> bookmarks_ = GeneratedMessageLite.emptyProtobufList();

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$PodcastExt$Bookmark */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark.class */
            public static final class Bookmark extends GeneratedMessageLite<Bookmark, C3254a> implements AbstractC3255a {
                private static final Bookmark DEFAULT_INSTANCE;
                public static final int OFFSET_FIELD_NUMBER = 1;
                private static volatile Parser<Bookmark> PARSER;
                public static final int TITLE_FIELD_NUMBER = 2;
                private int offset_;
                private String title_ = "";

                /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$PodcastExt$Bookmark$a */
                /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark$a.class */
                public static final class C3254a extends GeneratedMessageLite.Builder<Bookmark, C3254a> implements AbstractC3255a {
                    public C3254a() {
                        super(Bookmark.DEFAULT_INSTANCE);
                    }

                    public C3254a(C3270a c3270a) {
                        super(Bookmark.DEFAULT_INSTANCE);
                    }
                }

                static {
                    Bookmark bookmark = new Bookmark();
                    DEFAULT_INSTANCE = bookmark;
                    GeneratedMessageLite.registerDefaultInstance(Bookmark.class, bookmark);
                }

                private Bookmark() {
                }

                public void clearOffset() {
                    this.offset_ = 0;
                }

                public void clearTitle() {
                    this.title_ = getDefaultInstance().getTitle();
                }

                public static Bookmark getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static C3254a newBuilder() {
                    return DEFAULT_INSTANCE.createBuilder();
                }

                public static C3254a newBuilder(Bookmark bookmark) {
                    return DEFAULT_INSTANCE.createBuilder(bookmark);
                }

                public static Bookmark parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Bookmark parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Bookmark parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                }

                public static Bookmark parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                }

                public static Bookmark parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                }

                public static Bookmark parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                }

                public static Bookmark parseFrom(InputStream inputStream) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Bookmark parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Bookmark parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                }

                public static Bookmark parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                }

                public static Bookmark parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                }

                public static Bookmark parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                }

                public static Parser<Bookmark> parser() {
                    return DEFAULT_INSTANCE.getParserForType();
                }

                public void setOffset(int i) {
                    this.offset_ = i;
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
                            return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0004\u0002Ȉ", new Object[]{"offset_", "title_"});
                        case 3:
                            return new Bookmark();
                        case 4:
                            return new C3254a(null);
                        case 5:
                            return DEFAULT_INSTANCE;
                        case 6:
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                            if (defaultInstanceBasedParser == null) {
                                synchronized (Bookmark.class) {
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

                public int getOffset() {
                    return this.offset_;
                }

                public String getTitle() {
                    return this.title_;
                }

                public ByteString getTitleBytes() {
                    return ByteString.copyFromUtf8(this.title_);
                }
            }

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$PodcastExt$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$a.class */
            public interface AbstractC3255a extends MessageLiteOrBuilder {
            }

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$PodcastExt$b */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b.class */
            public static final class C3256b extends GeneratedMessageLite.Builder<PodcastExt, C3256b> implements Object {
                public C3256b() {
                    super(PodcastExt.DEFAULT_INSTANCE);
                }

                public C3256b(C3270a c3270a) {
                    super(PodcastExt.DEFAULT_INSTANCE);
                }
            }

            static {
                PodcastExt podcastExt = new PodcastExt();
                DEFAULT_INSTANCE = podcastExt;
                GeneratedMessageLite.registerDefaultInstance(PodcastExt.class, podcastExt);
            }

            private PodcastExt() {
            }

            public void addAllBookmarks(Iterable<? extends Bookmark> iterable) {
                ensureBookmarksIsMutable();
                AbstractMessageLite.addAll(iterable, this.bookmarks_);
            }

            public void addBookmarks(int i, Bookmark bookmark) {
                bookmark.getClass();
                ensureBookmarksIsMutable();
                this.bookmarks_.add(i, bookmark);
            }

            public void addBookmarks(Bookmark bookmark) {
                bookmark.getClass();
                ensureBookmarksIsMutable();
                this.bookmarks_.add(bookmark);
            }

            public void clearBookmarks() {
                this.bookmarks_ = GeneratedMessageLite.emptyProtobufList();
            }

            public void clearDescription() {
                this.description_ = getDefaultInstance().getDescription();
            }

            public void clearEpisode() {
                this.episode_ = 0;
            }

            public void clearSeason() {
                this.season_ = 0;
            }

            public void clearTitle() {
                this.title_ = getDefaultInstance().getTitle();
            }

            private void ensureBookmarksIsMutable() {
                Internal.ProtobufList<Bookmark> protobufList = this.bookmarks_;
                if (!protobufList.isModifiable()) {
                    this.bookmarks_ = GeneratedMessageLite.mutableCopy(protobufList);
                }
            }

            public static PodcastExt getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3256b newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3256b newBuilder(PodcastExt podcastExt) {
                return DEFAULT_INSTANCE.createBuilder(podcastExt);
            }

            public static PodcastExt parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static PodcastExt parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static PodcastExt parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static PodcastExt parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static PodcastExt parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static PodcastExt parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static PodcastExt parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static PodcastExt parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static PodcastExt parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static PodcastExt parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static PodcastExt parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static PodcastExt parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<PodcastExt> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void removeBookmarks(int i) {
                ensureBookmarksIsMutable();
                this.bookmarks_.remove(i);
            }

            public void setBookmarks(int i, Bookmark bookmark) {
                bookmark.getClass();
                ensureBookmarksIsMutable();
                this.bookmarks_.set(i, bookmark);
            }

            public void setDescription(String str) {
                str.getClass();
                this.description_ = str;
            }

            public void setDescriptionBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.description_ = byteString.toStringUtf8();
            }

            public void setEpisode(int i) {
                this.episode_ = i;
            }

            public void setSeason(int i) {
                this.season_ = i;
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
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0001��\u0001Ȉ\u0002\u0004\u0003\u0004\u0004Ȉ\u0005\u001b", new Object[]{"title_", "season_", "episode_", "description_", "bookmarks_", Bookmark.class});
                    case 3:
                        return new PodcastExt();
                    case 4:
                        return new C3256b(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (PodcastExt.class) {
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

            public Bookmark getBookmarks(int i) {
                return this.bookmarks_.get(i);
            }

            public int getBookmarksCount() {
                return this.bookmarks_.size();
            }

            public List<Bookmark> getBookmarksList() {
                return this.bookmarks_;
            }

            public AbstractC3255a getBookmarksOrBuilder(int i) {
                return this.bookmarks_.get(i);
            }

            public List<? extends AbstractC3255a> getBookmarksOrBuilderList() {
                return this.bookmarks_;
            }

            public String getDescription() {
                return this.description_;
            }

            public ByteString getDescriptionBytes() {
                return ByteString.copyFromUtf8(this.description_);
            }

            public int getEpisode() {
                return this.episode_;
            }

            public int getSeason() {
                return this.season_;
            }

            public String getTitle() {
                return this.title_;
            }

            public ByteString getTitleBytes() {
                return ByteString.copyFromUtf8(this.title_);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Audio$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$a.class */
        public static final class C3257a extends GeneratedMessageLite.Builder<Audio, C3257a> implements Object {
            public C3257a() {
                super(Audio.DEFAULT_INSTANCE);
            }

            public C3257a(C3270a c3270a) {
                super(Audio.DEFAULT_INSTANCE);
            }
        }

        static {
            Audio audio = new Audio();
            DEFAULT_INSTANCE = audio;
            GeneratedMessageLite.registerDefaultInstance(Audio.class, audio);
        }

        private Audio() {
        }

        public void clearDuration() {
            this.duration_ = 0;
        }

        public void clearExt() {
            this.extCase_ = 0;
            this.ext_ = null;
        }

        public void clearMimeType() {
            this.mimeType_ = getDefaultInstance().getMimeType();
        }

        public void clearMusic() {
            if (this.extCase_ == 5) {
                this.extCase_ = 0;
                this.ext_ = null;
            }
        }

        public void clearPodcast() {
            if (this.extCase_ == 6) {
                this.extCase_ = 0;
                this.ext_ = null;
            }
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearUri() {
            this.uri_ = getDefaultInstance().getUri();
        }

        public static Audio getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeMusic(MusicExt musicExt) {
            musicExt.getClass();
            if (this.extCase_ != 5 || this.ext_ == MusicExt.getDefaultInstance()) {
                this.ext_ = musicExt;
            } else {
                this.ext_ = MusicExt.newBuilder((MusicExt) this.ext_).mergeFrom(musicExt).buildPartial();
            }
            this.extCase_ = 5;
        }

        public void mergePodcast(PodcastExt podcastExt) {
            podcastExt.getClass();
            if (this.extCase_ != 6 || this.ext_ == PodcastExt.getDefaultInstance()) {
                this.ext_ = podcastExt;
            } else {
                this.ext_ = PodcastExt.newBuilder((PodcastExt) this.ext_).mergeFrom(podcastExt).buildPartial();
            }
            this.extCase_ = 6;
        }

        public static C3257a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3257a newBuilder(Audio audio) {
            return DEFAULT_INSTANCE.createBuilder(audio);
        }

        public static Audio parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Audio parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Audio parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Audio parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Audio parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Audio parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Audio parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Audio parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Audio parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Audio parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Audio parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Audio parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Audio> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setDuration(int i) {
            this.duration_ = i;
        }

        public void setMimeType(String str) {
            str.getClass();
            this.mimeType_ = str;
        }

        public void setMimeTypeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.mimeType_ = byteString.toStringUtf8();
        }

        public void setMusic(MusicExt musicExt) {
            musicExt.getClass();
            this.ext_ = musicExt;
            this.extCase_ = 5;
        }

        public void setPodcast(PodcastExt podcastExt) {
            podcastExt.getClass();
            this.ext_ = podcastExt;
            this.extCase_ = 6;
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setUri(String str) {
            str.getClass();
            this.uri_ = str;
        }

        public void setUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uri_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0006\u0001��\u0001\u0006\u0006������\u0001Ȉ\u0002Ȉ\u0003\u0004\u0004\u0004\u0005<��\u0006<��", new Object[]{"ext_", "extCase_", "mimeType_", "uri_", "size_", "duration_", MusicExt.class, PodcastExt.class});
                case 3:
                    return new Audio();
                case 4:
                    return new C3257a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Audio.class) {
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

        public int getDuration() {
            return this.duration_;
        }

        public ExtCase getExtCase() {
            return ExtCase.forNumber(this.extCase_);
        }

        public String getMimeType() {
            return this.mimeType_;
        }

        public ByteString getMimeTypeBytes() {
            return ByteString.copyFromUtf8(this.mimeType_);
        }

        public MusicExt getMusic() {
            return this.extCase_ == 5 ? (MusicExt) this.ext_ : MusicExt.getDefaultInstance();
        }

        public PodcastExt getPodcast() {
            return this.extCase_ == 6 ? (PodcastExt) this.ext_ : PodcastExt.getDefaultInstance();
        }

        public int getSize() {
            return this.size_;
        }

        public String getUri() {
            return this.uri_;
        }

        public ByteString getUriBytes() {
            return ByteString.copyFromUtf8(this.uri_);
        }

        public boolean hasMusic() {
            return this.extCase_ == 5;
        }

        public boolean hasPodcast() {
            return this.extCase_ == 6;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$File */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File.class */
    public static final class File extends GeneratedMessageLite<File, C3258a> implements Object {
        private static final File DEFAULT_INSTANCE;
        public static final int FILE_NAME_FIELD_NUMBER = 4;
        public static final int MIMETYPE_FIELD_NUMBER = 1;
        private static volatile Parser<File> PARSER;
        public static final int SIZE_FIELD_NUMBER = 3;
        public static final int URI_FIELD_NUMBER = 2;
        private int size_;
        private String mimeType_ = "";
        private String uri_ = "";
        private String fileName_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$File$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$File$a.class */
        public static final class C3258a extends GeneratedMessageLite.Builder<File, C3258a> implements Object {
            public C3258a() {
                super(File.DEFAULT_INSTANCE);
            }

            public C3258a(C3270a c3270a) {
                super(File.DEFAULT_INSTANCE);
            }
        }

        static {
            File file = new File();
            DEFAULT_INSTANCE = file;
            GeneratedMessageLite.registerDefaultInstance(File.class, file);
        }

        private File() {
        }

        public void clearFileName() {
            this.fileName_ = getDefaultInstance().getFileName();
        }

        public void clearMimeType() {
            this.mimeType_ = getDefaultInstance().getMimeType();
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearUri() {
            this.uri_ = getDefaultInstance().getUri();
        }

        public static File getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3258a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3258a newBuilder(File file) {
            return DEFAULT_INSTANCE.createBuilder(file);
        }

        public static File parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static File parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static File parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static File parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static File parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static File parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static File parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static File parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static File parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static File parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static File parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static File parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<File> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setFileName(String str) {
            str.getClass();
            this.fileName_ = str;
        }

        public void setFileNameBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.fileName_ = byteString.toStringUtf8();
        }

        public void setMimeType(String str) {
            str.getClass();
            this.mimeType_ = str;
        }

        public void setMimeTypeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.mimeType_ = byteString.toStringUtf8();
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setUri(String str) {
            str.getClass();
            this.uri_ = str;
        }

        public void setUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uri_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002Ȉ\u0003\u0004\u0004Ȉ", new Object[]{"mimeType_", "uri_", "size_", "fileName_"});
                case 3:
                    return new File();
                case 4:
                    return new C3258a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (File.class) {
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

        public String getFileName() {
            return this.fileName_;
        }

        public ByteString getFileNameBytes() {
            return ByteString.copyFromUtf8(this.fileName_);
        }

        public String getMimeType() {
            return this.mimeType_;
        }

        public ByteString getMimeTypeBytes() {
            return ByteString.copyFromUtf8(this.mimeType_);
        }

        public int getSize() {
            return this.size_;
        }

        public String getUri() {
            return this.uri_;
        }

        public ByteString getUriBytes() {
            return ByteString.copyFromUtf8(this.uri_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$ForwardInfo */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo.class */
    public static final class ForwardInfo extends GeneratedMessageLite<ForwardInfo, C3259a> implements Object {
        private static final ForwardInfo DEFAULT_INSTANCE;
        private static volatile Parser<ForwardInfo> PARSER;
        public static final int REF_FORWARDING_ID_FIELD_NUMBER = 4;
        public static final int SOURCE_CONTEXT_FIELD_NUMBER = 2;
        public static final int SOURCE_MESSAGE_ID_FIELD_NUMBER = 3;
        public static final int SOURCE_SENDER_FIELD_NUMBER = 1;
        private InputPeer sourceContext_;
        private InputPeer sourceSender_;
        private String sourceMessageId_ = "";
        private String refForwardingId_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$ForwardInfo$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$ForwardInfo$a.class */
        public static final class C3259a extends GeneratedMessageLite.Builder<ForwardInfo, C3259a> implements Object {
            public C3259a() {
                super(ForwardInfo.DEFAULT_INSTANCE);
            }

            public C3259a(C3270a c3270a) {
                super(ForwardInfo.DEFAULT_INSTANCE);
            }
        }

        static {
            ForwardInfo forwardInfo = new ForwardInfo();
            DEFAULT_INSTANCE = forwardInfo;
            GeneratedMessageLite.registerDefaultInstance(ForwardInfo.class, forwardInfo);
        }

        private ForwardInfo() {
        }

        public static /* synthetic */ void access$100(ForwardInfo forwardInfo, InputPeer inputPeer) {
            forwardInfo.setSourceSender(inputPeer);
        }

        public static /* synthetic */ void access$1000(ForwardInfo forwardInfo, String str) {
            forwardInfo.setRefForwardingId(str);
        }

        public static /* synthetic */ void access$400(ForwardInfo forwardInfo, InputPeer inputPeer) {
            forwardInfo.setSourceContext(inputPeer);
        }

        public static /* synthetic */ void access$700(ForwardInfo forwardInfo, String str) {
            forwardInfo.setSourceMessageId(str);
        }

        public void clearRefForwardingId() {
            this.refForwardingId_ = getDefaultInstance().getRefForwardingId();
        }

        public void clearSourceContext() {
            this.sourceContext_ = null;
        }

        public void clearSourceMessageId() {
            this.sourceMessageId_ = getDefaultInstance().getSourceMessageId();
        }

        public void clearSourceSender() {
            this.sourceSender_ = null;
        }

        public static ForwardInfo getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeSourceContext(InputPeer inputPeer) {
            inputPeer.getClass();
            InputPeer inputPeer2 = this.sourceContext_;
            if (inputPeer2 == null || inputPeer2 == InputPeer.getDefaultInstance()) {
                this.sourceContext_ = inputPeer;
            } else {
                this.sourceContext_ = InputPeer.newBuilder(this.sourceContext_).mergeFrom(inputPeer).buildPartial();
            }
        }

        public void mergeSourceSender(InputPeer inputPeer) {
            inputPeer.getClass();
            InputPeer inputPeer2 = this.sourceSender_;
            if (inputPeer2 == null || inputPeer2 == InputPeer.getDefaultInstance()) {
                this.sourceSender_ = inputPeer;
            } else {
                this.sourceSender_ = InputPeer.newBuilder(this.sourceSender_).mergeFrom(inputPeer).buildPartial();
            }
        }

        public static C3259a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3259a newBuilder(ForwardInfo forwardInfo) {
            return DEFAULT_INSTANCE.createBuilder(forwardInfo);
        }

        public static ForwardInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ForwardInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ForwardInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ForwardInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ForwardInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ForwardInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static ForwardInfo parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ForwardInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ForwardInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static ForwardInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ForwardInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ForwardInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<ForwardInfo> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setRefForwardingId(String str) {
            str.getClass();
            this.refForwardingId_ = str;
        }

        public void setRefForwardingIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.refForwardingId_ = byteString.toStringUtf8();
        }

        public void setSourceContext(InputPeer inputPeer) {
            inputPeer.getClass();
            this.sourceContext_ = inputPeer;
        }

        public void setSourceMessageId(String str) {
            str.getClass();
            this.sourceMessageId_ = str;
        }

        public void setSourceMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.sourceMessageId_ = byteString.toStringUtf8();
        }

        public void setSourceSender(InputPeer inputPeer) {
            inputPeer.getClass();
            this.sourceSender_ = inputPeer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\t\u0003Ȉ\u0004Ȉ", new Object[]{"sourceSender_", "sourceContext_", "sourceMessageId_", "refForwardingId_"});
                case 3:
                    return new ForwardInfo();
                case 4:
                    return new C3259a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (ForwardInfo.class) {
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

        public String getRefForwardingId() {
            return this.refForwardingId_;
        }

        public ByteString getRefForwardingIdBytes() {
            return ByteString.copyFromUtf8(this.refForwardingId_);
        }

        public InputPeer getSourceContext() {
            InputPeer inputPeer = this.sourceContext_;
            InputPeer inputPeer2 = inputPeer;
            if (inputPeer == null) {
                inputPeer2 = InputPeer.getDefaultInstance();
            }
            return inputPeer2;
        }

        public String getSourceMessageId() {
            return this.sourceMessageId_;
        }

        public ByteString getSourceMessageIdBytes() {
            return ByteString.copyFromUtf8(this.sourceMessageId_);
        }

        public InputPeer getSourceSender() {
            InputPeer inputPeer = this.sourceSender_;
            InputPeer inputPeer2 = inputPeer;
            if (inputPeer == null) {
                inputPeer2 = InputPeer.getDefaultInstance();
            }
            return inputPeer2;
        }

        public boolean hasSourceContext() {
            return this.sourceContext_ != null;
        }

        public boolean hasSourceSender() {
            return this.sourceSender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Image */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image.class */
    public static final class Image extends GeneratedMessageLite<Image, C3260a> implements Object {
        private static final Image DEFAULT_INSTANCE;
        public static final int HEIGHT_FIELD_NUMBER = 5;
        public static final int MIMETYPE_FIELD_NUMBER = 1;
        private static volatile Parser<Image> PARSER;
        public static final int SIZE_FIELD_NUMBER = 3;
        public static final int THUMBNAIL_FIELD_NUMBER = 6;
        public static final int URI_FIELD_NUMBER = 2;
        public static final int WIDTH_FIELD_NUMBER = 4;
        private int height_;
        private int size_;
        private int width_;
        private String mimeType_ = "";
        private String uri_ = "";
        private ByteString thumbnail_ = ByteString.EMPTY;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Image$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Image$a.class */
        public static final class C3260a extends GeneratedMessageLite.Builder<Image, C3260a> implements Object {
            public C3260a() {
                super(Image.DEFAULT_INSTANCE);
            }

            public C3260a(C3270a c3270a) {
                super(Image.DEFAULT_INSTANCE);
            }
        }

        static {
            Image image = new Image();
            DEFAULT_INSTANCE = image;
            GeneratedMessageLite.registerDefaultInstance(Image.class, image);
        }

        private Image() {
        }

        public void clearHeight() {
            this.height_ = 0;
        }

        public void clearMimeType() {
            this.mimeType_ = getDefaultInstance().getMimeType();
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearThumbnail() {
            this.thumbnail_ = getDefaultInstance().getThumbnail();
        }

        public void clearUri() {
            this.uri_ = getDefaultInstance().getUri();
        }

        public void clearWidth() {
            this.width_ = 0;
        }

        public static Image getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3260a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3260a newBuilder(Image image) {
            return DEFAULT_INSTANCE.createBuilder(image);
        }

        public static Image parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Image parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Image parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Image parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Image parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Image parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Image parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Image parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Image parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Image parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Image parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Image parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Image> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setHeight(int i) {
            this.height_ = i;
        }

        public void setMimeType(String str) {
            str.getClass();
            this.mimeType_ = str;
        }

        public void setMimeTypeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.mimeType_ = byteString.toStringUtf8();
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setThumbnail(ByteString byteString) {
            byteString.getClass();
            this.thumbnail_ = byteString;
        }

        public void setUri(String str) {
            str.getClass();
            this.uri_ = str;
        }

        public void setUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uri_ = byteString.toStringUtf8();
        }

        public void setWidth(int i) {
            this.width_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0006����\u0001\u0006\u0006������\u0001Ȉ\u0002Ȉ\u0003\u0004\u0004\u0004\u0005\u0004\u0006\n", new Object[]{"mimeType_", "uri_", "size_", "width_", "height_", "thumbnail_"});
                case 3:
                    return new Image();
                case 4:
                    return new C3260a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Image.class) {
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

        public int getHeight() {
            return this.height_;
        }

        public String getMimeType() {
            return this.mimeType_;
        }

        public ByteString getMimeTypeBytes() {
            return ByteString.copyFromUtf8(this.mimeType_);
        }

        public int getSize() {
            return this.size_;
        }

        public ByteString getThumbnail() {
            return this.thumbnail_;
        }

        public String getUri() {
            return this.uri_;
        }

        public ByteString getUriBytes() {
            return ByteString.copyFromUtf8(this.uri_);
        }

        public int getWidth() {
            return this.width_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Location */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location.class */
    public static final class Location extends GeneratedMessageLite<Location, C3261a> implements Object {
        public static final int ADDRESS_FIELD_NUMBER = 5;
        private static final Location DEFAULT_INSTANCE;
        public static final int LATITUDE_FIELD_NUMBER = 1;
        public static final int LONGITUDE_FIELD_NUMBER = 2;
        private static volatile Parser<Location> PARSER;
        public static final int PREVIEW_STYLE_FIELD_NUMBER = 6;
        public static final int PREVIEW_URI_FIELD_NUMBER = 4;
        private double latitude_;
        private double longitude_;
        private int previewStyle_;
        private String previewUri_ = "";
        private String address_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Location$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a.class */
        public static final class C3261a extends GeneratedMessageLite.Builder<Location, C3261a> implements Object {
            public C3261a() {
                super(Location.DEFAULT_INSTANCE);
            }

            public C3261a(C3270a c3270a) {
                super(Location.DEFAULT_INSTANCE);
            }

            /* renamed from: a */
            public C3261a m35910a(String str) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setAddress(str);
                return this;
            }

            /* renamed from: b */
            public C3261a m35909b(double d) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setLatitude(d);
                return this;
            }

            /* renamed from: c */
            public C3261a m35908c(double d) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setLongitude(d);
                return this;
            }
        }

        static {
            Location location = new Location();
            DEFAULT_INSTANCE = location;
            GeneratedMessageLite.registerDefaultInstance(Location.class, location);
        }

        private Location() {
        }

        public void clearAddress() {
            this.address_ = getDefaultInstance().getAddress();
        }

        public void clearLatitude() {
            this.latitude_ = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        }

        public void clearLongitude() {
            this.longitude_ = PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
        }

        public void clearPreviewStyle() {
            this.previewStyle_ = 0;
        }

        public void clearPreviewUri() {
            this.previewUri_ = getDefaultInstance().getPreviewUri();
        }

        public static Location getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3261a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3261a newBuilder(Location location) {
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

        public void setAddress(String str) {
            str.getClass();
            this.address_ = str;
        }

        public void setAddressBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.address_ = byteString.toStringUtf8();
        }

        public void setLatitude(double d) {
            this.latitude_ = d;
        }

        public void setLongitude(double d) {
            this.longitude_ = d;
        }

        public void setPreviewStyle(InputPreviewStyle inputPreviewStyle) {
            this.previewStyle_ = inputPreviewStyle.getNumber();
        }

        public void setPreviewStyleValue(int i) {
            this.previewStyle_ = i;
        }

        public void setPreviewUri(String str) {
            str.getClass();
            this.previewUri_ = str;
        }

        public void setPreviewUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.previewUri_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0006\u0005������\u0001��\u0002��\u0004Ȉ\u0005Ȉ\u0006\f", new Object[]{"latitude_", "longitude_", "previewUri_", "address_", "previewStyle_"});
                case 3:
                    return new Location();
                case 4:
                    return new C3261a(null);
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

        public String getAddress() {
            return this.address_;
        }

        public ByteString getAddressBytes() {
            return ByteString.copyFromUtf8(this.address_);
        }

        public double getLatitude() {
            return this.latitude_;
        }

        public double getLongitude() {
            return this.longitude_;
        }

        public InputPreviewStyle getPreviewStyle() {
            InputPreviewStyle forNumber = InputPreviewStyle.forNumber(this.previewStyle_);
            InputPreviewStyle inputPreviewStyle = forNumber;
            if (forNumber == null) {
                inputPreviewStyle = InputPreviewStyle.UNRECOGNIZED;
            }
            return inputPreviewStyle;
        }

        public int getPreviewStyleValue() {
            return this.previewStyle_;
        }

        public String getPreviewUri() {
            return this.previewUri_;
        }

        public ByteString getPreviewUriBytes() {
            return ByteString.copyFromUtf8(this.previewUri_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity.class */
    public static final class MessageEntity extends GeneratedMessageLite<MessageEntity, C3265a> implements AbstractC3272c {
        private static final MessageEntity DEFAULT_INSTANCE;
        public static final int LENGTH_FIELD_NUMBER = 2;
        public static final int LINK_PREVIEW_FIELD_NUMBER = 4;
        public static final int MENTION_FIELD_NUMBER = 3;
        public static final int OFFSET_FIELD_NUMBER = 1;
        private static volatile Parser<MessageEntity> PARSER;
        private int entityCase_ = 0;
        private Object entity_;
        private int length_;
        private int offset_;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$EntityCase */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$EntityCase.class */
        public enum EntityCase {
            MENTION(3),
            LINK_PREVIEW(4),
            ENTITY_NOT_SET(0);
            
            private final int value;

            EntityCase(int i) {
                this.value = i;
            }

            public static EntityCase forNumber(int i) {
                if (i != 0) {
                    if (i == 3) {
                        return MENTION;
                    }
                    if (i == 4) {
                        return LINK_PREVIEW;
                    }
                    return null;
                }
                return ENTITY_NOT_SET;
            }

            @Deprecated
            public static EntityCase valueOf(int i) {
                return forNumber(i);
            }

            public int getNumber() {
                return this.value;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$LinkPreview */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview.class */
        public static final class LinkPreview extends GeneratedMessageLite<LinkPreview, C3263a> implements Object {
            private static final LinkPreview DEFAULT_INSTANCE;
            public static final int DESCRIPTION_FIELD_NUMBER = 2;
            public static final int IMAGE_FIELD_NUMBER = 3;
            private static volatile Parser<LinkPreview> PARSER;
            public static final int PLAYABLE_FIELD_NUMBER = 4;
            public static final int TITLE_FIELD_NUMBER = 1;
            private Playable playable_;
            private String title_ = "";
            private String description_ = "";
            private ByteString image_ = ByteString.EMPTY;

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$LinkPreview$Playable */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$Playable.class */
            public static final class Playable extends GeneratedMessageLite<Playable, C3262a> implements Object {
                private static final Playable DEFAULT_INSTANCE;
                private static volatile Parser<Playable> PARSER;

                /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$LinkPreview$Playable$a */
                /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$Playable$a.class */
                public static final class C3262a extends GeneratedMessageLite.Builder<Playable, C3262a> implements Object {
                    public C3262a() {
                        super(Playable.DEFAULT_INSTANCE);
                    }

                    public C3262a(C3270a c3270a) {
                        super(Playable.DEFAULT_INSTANCE);
                    }
                }

                static {
                    Playable playable = new Playable();
                    DEFAULT_INSTANCE = playable;
                    GeneratedMessageLite.registerDefaultInstance(Playable.class, playable);
                }

                private Playable() {
                }

                public static Playable getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static C3262a newBuilder() {
                    return DEFAULT_INSTANCE.createBuilder();
                }

                public static C3262a newBuilder(Playable playable) {
                    return DEFAULT_INSTANCE.createBuilder(playable);
                }

                public static Playable parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Playable parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Playable parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
                }

                public static Playable parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
                }

                public static Playable parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
                }

                public static Playable parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
                }

                public static Playable parseFrom(InputStream inputStream) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
                }

                public static Playable parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
                }

                public static Playable parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
                }

                public static Playable parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
                }

                public static Playable parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
                }

                public static Playable parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
                }

                public static Parser<Playable> parser() {
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
                            return new Playable();
                        case 4:
                            return new C3262a(null);
                        case 5:
                            return DEFAULT_INSTANCE;
                        case 6:
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                            if (defaultInstanceBasedParser == null) {
                                synchronized (Playable.class) {
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

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$LinkPreview$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$LinkPreview$a.class */
            public static final class C3263a extends GeneratedMessageLite.Builder<LinkPreview, C3263a> implements Object {
                public C3263a() {
                    super(LinkPreview.DEFAULT_INSTANCE);
                }

                public C3263a(C3270a c3270a) {
                    super(LinkPreview.DEFAULT_INSTANCE);
                }
            }

            static {
                LinkPreview linkPreview = new LinkPreview();
                DEFAULT_INSTANCE = linkPreview;
                GeneratedMessageLite.registerDefaultInstance(LinkPreview.class, linkPreview);
            }

            private LinkPreview() {
            }

            public void clearDescription() {
                this.description_ = getDefaultInstance().getDescription();
            }

            public void clearImage() {
                this.image_ = getDefaultInstance().getImage();
            }

            public void clearPlayable() {
                this.playable_ = null;
            }

            public void clearTitle() {
                this.title_ = getDefaultInstance().getTitle();
            }

            public static LinkPreview getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public void mergePlayable(Playable playable) {
                playable.getClass();
                Playable playable2 = this.playable_;
                if (playable2 == null || playable2 == Playable.getDefaultInstance()) {
                    this.playable_ = playable;
                } else {
                    this.playable_ = Playable.newBuilder(this.playable_).mergeFrom(playable).buildPartial();
                }
            }

            public static C3263a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3263a newBuilder(LinkPreview linkPreview) {
                return DEFAULT_INSTANCE.createBuilder(linkPreview);
            }

            public static LinkPreview parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static LinkPreview parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static LinkPreview parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static LinkPreview parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static LinkPreview parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static LinkPreview parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static LinkPreview parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static LinkPreview parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static LinkPreview parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static LinkPreview parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static LinkPreview parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static LinkPreview parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<LinkPreview> parser() {
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

            public void setImage(ByteString byteString) {
                byteString.getClass();
                this.image_ = byteString;
            }

            public void setPlayable(Playable playable) {
                playable.getClass();
                this.playable_ = playable;
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
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002Ȉ\u0003\n\u0004\t", new Object[]{"title_", "description_", "image_", "playable_"});
                    case 3:
                        return new LinkPreview();
                    case 4:
                        return new C3263a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (LinkPreview.class) {
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

            public ByteString getImage() {
                return this.image_;
            }

            public Playable getPlayable() {
                Playable playable = this.playable_;
                Playable playable2 = playable;
                if (playable == null) {
                    playable2 = Playable.getDefaultInstance();
                }
                return playable2;
            }

            public String getTitle() {
                return this.title_;
            }

            public ByteString getTitleBytes() {
                return ByteString.copyFromUtf8(this.title_);
            }

            public boolean hasPlayable() {
                return this.playable_ != null;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$Mention */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention.class */
        public static final class Mention extends GeneratedMessageLite<Mention, C3264a> implements Object {
            private static final Mention DEFAULT_INSTANCE;
            public static final int IM_ID_FIELD_NUMBER = 1;
            private static volatile Parser<Mention> PARSER;
            private String imId_ = "";

            /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$Mention$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$Mention$a.class */
            public static final class C3264a extends GeneratedMessageLite.Builder<Mention, C3264a> implements Object {
                public C3264a() {
                    super(Mention.DEFAULT_INSTANCE);
                }

                public C3264a(C3270a c3270a) {
                    super(Mention.DEFAULT_INSTANCE);
                }
            }

            static {
                Mention mention = new Mention();
                DEFAULT_INSTANCE = mention;
                GeneratedMessageLite.registerDefaultInstance(Mention.class, mention);
            }

            private Mention() {
            }

            public static /* synthetic */ void access$17800(Mention mention, String str) {
                mention.setImId(str);
            }

            public void clearImId() {
                this.imId_ = getDefaultInstance().getImId();
            }

            public static Mention getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3264a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3264a newBuilder(Mention mention) {
                return DEFAULT_INSTANCE.createBuilder(mention);
            }

            public static Mention parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Mention parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Mention parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Mention parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Mention parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Mention parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static Mention parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Mention parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Mention parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Mention parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Mention parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Mention parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<Mention> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setImId(String str) {
                str.getClass();
                this.imId_ = str;
            }

            public void setImIdBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.imId_ = byteString.toStringUtf8();
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"imId_"});
                    case 3:
                        return new Mention();
                    case 4:
                        return new C3264a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (Mention.class) {
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

            public String getImId() {
                return this.imId_;
            }

            public ByteString getImIdBytes() {
                return ByteString.copyFromUtf8(this.imId_);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$MessageEntity$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$MessageEntity$a.class */
        public static final class C3265a extends GeneratedMessageLite.Builder<MessageEntity, C3265a> implements AbstractC3272c {
            public C3265a() {
                super(MessageEntity.DEFAULT_INSTANCE);
            }

            public C3265a(C3270a c3270a) {
                super(MessageEntity.DEFAULT_INSTANCE);
            }

            /* renamed from: a */
            public C3265a m35907a(int i) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setLength(i);
                return this;
            }

            /* renamed from: b */
            public C3265a m35906b(int i) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setOffset(i);
                return this;
            }
        }

        static {
            MessageEntity messageEntity = new MessageEntity();
            DEFAULT_INSTANCE = messageEntity;
            GeneratedMessageLite.registerDefaultInstance(MessageEntity.class, messageEntity);
        }

        private MessageEntity() {
        }

        public static /* synthetic */ void access$18800(MessageEntity messageEntity, Mention mention) {
            messageEntity.setMention(mention);
        }

        public void clearEntity() {
            this.entityCase_ = 0;
            this.entity_ = null;
        }

        public void clearLength() {
            this.length_ = 0;
        }

        public void clearLinkPreview() {
            if (this.entityCase_ == 4) {
                this.entityCase_ = 0;
                this.entity_ = null;
            }
        }

        public void clearMention() {
            if (this.entityCase_ == 3) {
                this.entityCase_ = 0;
                this.entity_ = null;
            }
        }

        public void clearOffset() {
            this.offset_ = 0;
        }

        public static MessageEntity getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeLinkPreview(LinkPreview linkPreview) {
            linkPreview.getClass();
            if (this.entityCase_ != 4 || this.entity_ == LinkPreview.getDefaultInstance()) {
                this.entity_ = linkPreview;
            } else {
                this.entity_ = LinkPreview.newBuilder((LinkPreview) this.entity_).mergeFrom(linkPreview).buildPartial();
            }
            this.entityCase_ = 4;
        }

        public void mergeMention(Mention mention) {
            mention.getClass();
            if (this.entityCase_ != 3 || this.entity_ == Mention.getDefaultInstance()) {
                this.entity_ = mention;
            } else {
                this.entity_ = Mention.newBuilder((Mention) this.entity_).mergeFrom(mention).buildPartial();
            }
            this.entityCase_ = 3;
        }

        public static C3265a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3265a newBuilder(MessageEntity messageEntity) {
            return DEFAULT_INSTANCE.createBuilder(messageEntity);
        }

        public static MessageEntity parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessageEntity parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessageEntity parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static MessageEntity parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static MessageEntity parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static MessageEntity parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static MessageEntity parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessageEntity parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessageEntity parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static MessageEntity parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static MessageEntity parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static MessageEntity parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<MessageEntity> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setLength(int i) {
            this.length_ = i;
        }

        public void setLinkPreview(LinkPreview linkPreview) {
            linkPreview.getClass();
            this.entity_ = linkPreview;
            this.entityCase_ = 4;
        }

        public void setMention(Mention mention) {
            mention.getClass();
            this.entity_ = mention;
            this.entityCase_ = 3;
        }

        public void setOffset(int i) {
            this.offset_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004\u0001��\u0001\u0004\u0004������\u0001\u0004\u0002\u0004\u0003<��\u0004<��", new Object[]{"entity_", "entityCase_", "offset_", "length_", Mention.class, LinkPreview.class});
                case 3:
                    return new MessageEntity();
                case 4:
                    return new C3265a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (MessageEntity.class) {
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

        public EntityCase getEntityCase() {
            return EntityCase.forNumber(this.entityCase_);
        }

        public int getLength() {
            return this.length_;
        }

        public LinkPreview getLinkPreview() {
            return this.entityCase_ == 4 ? (LinkPreview) this.entity_ : LinkPreview.getDefaultInstance();
        }

        public Mention getMention() {
            return this.entityCase_ == 3 ? (Mention) this.entity_ : Mention.getDefaultInstance();
        }

        public int getOffset() {
            return this.offset_;
        }

        public boolean hasLinkPreview() {
            return this.entityCase_ == 4;
        }

        public boolean hasMention() {
            return this.entityCase_ == 3;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$TextFormat */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat.class */
    public enum TextFormat implements Internal.EnumLite {
        PLAIN(0),
        RICH(1),
        UNRECOGNIZED(-1);
        
        public static final int PLAIN_VALUE = 0;
        public static final int RICH_VALUE = 1;
        private static final Internal.EnumLiteMap<TextFormat> internalValueMap = new C3266a();
        private final int value;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$TextFormat$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat$a.class */
        public static final class C3266a implements Internal.EnumLiteMap<TextFormat> {
            @Override // com.google.protobuf.Internal.EnumLiteMap
            public TextFormat findValueByNumber(int i) {
                return TextFormat.forNumber(i);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$TextFormat$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$TextFormat$b.class */
        public static final class C3267b implements Internal.EnumVerifier {

            /* renamed from: a */
            public static final Internal.EnumVerifier f10119a = new C3267b();

            @Override // com.google.protobuf.Internal.EnumVerifier
            public boolean isInRange(int i) {
                return TextFormat.forNumber(i) != null;
            }
        }

        TextFormat(int i) {
            this.value = i;
        }

        public static TextFormat forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return RICH;
                }
                return null;
            }
            return PLAIN;
        }

        public static Internal.EnumLiteMap<TextFormat> internalGetValueMap() {
            return internalValueMap;
        }

        public static Internal.EnumVerifier internalGetVerifier() {
            return C3267b.f10119a;
        }

        @Deprecated
        public static TextFormat valueOf(int i) {
            return forNumber(i);
        }

        @Override // com.google.protobuf.Internal.EnumLite
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$VCard */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard.class */
    public static final class VCard extends GeneratedMessageLite<VCard, C3268a> implements Object {
        private static final VCard DEFAULT_INSTANCE;
        private static volatile Parser<VCard> PARSER;
        public static final int SIZE_FIELD_NUMBER = 2;
        public static final int URI_FIELD_NUMBER = 1;
        private int size_;
        private String uri_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$VCard$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$VCard$a.class */
        public static final class C3268a extends GeneratedMessageLite.Builder<VCard, C3268a> implements Object {
            public C3268a() {
                super(VCard.DEFAULT_INSTANCE);
            }

            public C3268a(C3270a c3270a) {
                super(VCard.DEFAULT_INSTANCE);
            }
        }

        static {
            VCard vCard = new VCard();
            DEFAULT_INSTANCE = vCard;
            GeneratedMessageLite.registerDefaultInstance(VCard.class, vCard);
        }

        private VCard() {
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearUri() {
            this.uri_ = getDefaultInstance().getUri();
        }

        public static VCard getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3268a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3268a newBuilder(VCard vCard) {
            return DEFAULT_INSTANCE.createBuilder(vCard);
        }

        public static VCard parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static VCard parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static VCard parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static VCard parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static VCard parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static VCard parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static VCard parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static VCard parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static VCard parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static VCard parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static VCard parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static VCard parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<VCard> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setUri(String str) {
            str.getClass();
            this.uri_ = str;
        }

        public void setUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uri_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\u0004", new Object[]{"uri_", "size_"});
                case 3:
                    return new VCard();
                case 4:
                    return new C3268a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (VCard.class) {
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

        public int getSize() {
            return this.size_;
        }

        public String getUri() {
            return this.uri_;
        }

        public ByteString getUriBytes() {
            return ByteString.copyFromUtf8(this.uri_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Video */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video.class */
    public static final class Video extends GeneratedMessageLite<Video, C3269a> implements Object {
        private static final Video DEFAULT_INSTANCE;
        public static final int DURATION_FIELD_NUMBER = 6;
        public static final int HEIGHT_FIELD_NUMBER = 5;
        public static final int MIMETYPE_FIELD_NUMBER = 1;
        private static volatile Parser<Video> PARSER;
        public static final int SIZE_FIELD_NUMBER = 3;
        public static final int THUMBNAIL_FIELD_NUMBER = 7;
        public static final int URI_FIELD_NUMBER = 2;
        public static final int WIDTH_FIELD_NUMBER = 4;
        private int duration_;
        private int height_;
        private int size_;
        private int width_;
        private String mimeType_ = "";
        private String uri_ = "";
        private ByteString thumbnail_ = ByteString.EMPTY;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$Video$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Video$a.class */
        public static final class C3269a extends GeneratedMessageLite.Builder<Video, C3269a> implements Object {
            public C3269a() {
                super(Video.DEFAULT_INSTANCE);
            }

            public C3269a(C3270a c3270a) {
                super(Video.DEFAULT_INSTANCE);
            }
        }

        static {
            Video video = new Video();
            DEFAULT_INSTANCE = video;
            GeneratedMessageLite.registerDefaultInstance(Video.class, video);
        }

        private Video() {
        }

        public void clearDuration() {
            this.duration_ = 0;
        }

        public void clearHeight() {
            this.height_ = 0;
        }

        public void clearMimeType() {
            this.mimeType_ = getDefaultInstance().getMimeType();
        }

        public void clearSize() {
            this.size_ = 0;
        }

        public void clearThumbnail() {
            this.thumbnail_ = getDefaultInstance().getThumbnail();
        }

        public void clearUri() {
            this.uri_ = getDefaultInstance().getUri();
        }

        public void clearWidth() {
            this.width_ = 0;
        }

        public static Video getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3269a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3269a newBuilder(Video video) {
            return DEFAULT_INSTANCE.createBuilder(video);
        }

        public static Video parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Video parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Video parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Video parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Video parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Video parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Video parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Video parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Video parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Video parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Video parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Video parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Video> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setDuration(int i) {
            this.duration_ = i;
        }

        public void setHeight(int i) {
            this.height_ = i;
        }

        public void setMimeType(String str) {
            str.getClass();
            this.mimeType_ = str;
        }

        public void setMimeTypeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.mimeType_ = byteString.toStringUtf8();
        }

        public void setSize(int i) {
            this.size_ = i;
        }

        public void setThumbnail(ByteString byteString) {
            byteString.getClass();
            this.thumbnail_ = byteString;
        }

        public void setUri(String str) {
            str.getClass();
            this.uri_ = str;
        }

        public void setUriBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.uri_ = byteString.toStringUtf8();
        }

        public void setWidth(int i) {
            this.width_ = i;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0007����\u0001\u0007\u0007������\u0001Ȉ\u0002Ȉ\u0003\u0004\u0004\u0004\u0005\u0004\u0006\u0004\u0007\n", new Object[]{"mimeType_", "uri_", "size_", "width_", "height_", "duration_", "thumbnail_"});
                case 3:
                    return new Video();
                case 4:
                    return new C3269a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Video.class) {
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

        public int getDuration() {
            return this.duration_;
        }

        public int getHeight() {
            return this.height_;
        }

        public String getMimeType() {
            return this.mimeType_;
        }

        public ByteString getMimeTypeBytes() {
            return ByteString.copyFromUtf8(this.mimeType_);
        }

        public int getSize() {
            return this.size_;
        }

        public ByteString getThumbnail() {
            return this.thumbnail_;
        }

        public String getUri() {
            return this.uri_;
        }

        public ByteString getUriBytes() {
            return ByteString.copyFromUtf8(this.uri_);
        }

        public int getWidth() {
            return this.width_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$b.class */
    public static final class C3271b extends GeneratedMessageLite.Builder<InputMessageContent, C3271b> implements Object {
        public C3271b() {
            super(InputMessageContent.DEFAULT_INSTANCE);
        }

        public C3271b(C3270a c3270a) {
            super(InputMessageContent.DEFAULT_INSTANCE);
        }

        /* renamed from: a */
        public C3271b m35905a(MessageEntity messageEntity) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.addMessageEntities(messageEntity);
            return this;
        }

        /* renamed from: b */
        public C3271b m35904b(ForwardInfo forwardInfo) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setForwardInfo(forwardInfo);
            return this;
        }

        /* renamed from: c */
        public C3271b m35903c(Location location) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setLocation(location);
            return this;
        }

        /* renamed from: e */
        public C3271b m35902e(String str) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setRefMessageId(str);
            return this;
        }

        /* renamed from: f */
        public C3271b m35901f(String str) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setText(str);
            return this;
        }

        /* renamed from: g */
        public C3271b m35900g(TextFormat textFormat) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setTextFormat(textFormat);
            return this;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageContent$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageContent$c.class */
    public interface AbstractC3272c extends MessageLiteOrBuilder {
    }

    static {
        InputMessageContent inputMessageContent = new InputMessageContent();
        DEFAULT_INSTANCE = inputMessageContent;
        GeneratedMessageLite.registerDefaultInstance(InputMessageContent.class, inputMessageContent);
    }

    private InputMessageContent() {
    }

    public void addAllMessageEntities(Iterable<? extends MessageEntity> iterable) {
        ensureMessageEntitiesIsMutable();
        AbstractMessageLite.addAll(iterable, this.messageEntities_);
    }

    public void addMessageEntities(int i, MessageEntity messageEntity) {
        messageEntity.getClass();
        ensureMessageEntitiesIsMutable();
        this.messageEntities_.add(i, messageEntity);
    }

    public void addMessageEntities(MessageEntity messageEntity) {
        messageEntity.getClass();
        ensureMessageEntitiesIsMutable();
        this.messageEntities_.add(messageEntity);
    }

    public void clearAnimation() {
        if (this.attachmentCase_ == 7) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearAttachment() {
        this.attachmentCase_ = 0;
        this.attachment_ = null;
    }

    public void clearAudio() {
        if (this.attachmentCase_ == 6) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearFile() {
        if (this.attachmentCase_ == 8) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearForwardInfo() {
        this.forwardInfo_ = null;
    }

    public void clearImage() {
        if (this.attachmentCase_ == 2) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearLocation() {
        if (this.attachmentCase_ == 4) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearMessageEntities() {
        this.messageEntities_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearRefMessageId() {
        this.refMessageId_ = getDefaultInstance().getRefMessageId();
    }

    public void clearRefSeq() {
        this.refSeq_ = 0L;
    }

    public void clearText() {
        this.text_ = getDefaultInstance().getText();
    }

    public void clearTextFormat() {
        this.textFormat_ = 0;
    }

    public void clearVcard() {
        if (this.attachmentCase_ == 3) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearVideo() {
        if (this.attachmentCase_ == 5) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    private void ensureMessageEntitiesIsMutable() {
        Internal.ProtobufList<MessageEntity> protobufList = this.messageEntities_;
        if (!protobufList.isModifiable()) {
            this.messageEntities_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static InputMessageContent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeAnimation(Animation animation) {
        animation.getClass();
        if (this.attachmentCase_ != 7 || this.attachment_ == Animation.getDefaultInstance()) {
            this.attachment_ = animation;
        } else {
            this.attachment_ = Animation.newBuilder((Animation) this.attachment_).mergeFrom(animation).buildPartial();
        }
        this.attachmentCase_ = 7;
    }

    public void mergeAudio(Audio audio) {
        audio.getClass();
        if (this.attachmentCase_ != 6 || this.attachment_ == Audio.getDefaultInstance()) {
            this.attachment_ = audio;
        } else {
            this.attachment_ = Audio.newBuilder((Audio) this.attachment_).mergeFrom(audio).buildPartial();
        }
        this.attachmentCase_ = 6;
    }

    public void mergeFile(File file) {
        file.getClass();
        if (this.attachmentCase_ != 8 || this.attachment_ == File.getDefaultInstance()) {
            this.attachment_ = file;
        } else {
            this.attachment_ = File.newBuilder((File) this.attachment_).mergeFrom(file).buildPartial();
        }
        this.attachmentCase_ = 8;
    }

    public void mergeForwardInfo(ForwardInfo forwardInfo) {
        forwardInfo.getClass();
        ForwardInfo forwardInfo2 = this.forwardInfo_;
        if (forwardInfo2 == null || forwardInfo2 == ForwardInfo.getDefaultInstance()) {
            this.forwardInfo_ = forwardInfo;
        } else {
            this.forwardInfo_ = ForwardInfo.newBuilder(this.forwardInfo_).mergeFrom(forwardInfo).buildPartial();
        }
    }

    public void mergeImage(Image image) {
        image.getClass();
        if (this.attachmentCase_ != 2 || this.attachment_ == Image.getDefaultInstance()) {
            this.attachment_ = image;
        } else {
            this.attachment_ = Image.newBuilder((Image) this.attachment_).mergeFrom(image).buildPartial();
        }
        this.attachmentCase_ = 2;
    }

    public void mergeLocation(Location location) {
        location.getClass();
        if (this.attachmentCase_ != 4 || this.attachment_ == Location.getDefaultInstance()) {
            this.attachment_ = location;
        } else {
            this.attachment_ = Location.newBuilder((Location) this.attachment_).mergeFrom(location).buildPartial();
        }
        this.attachmentCase_ = 4;
    }

    public void mergeVcard(VCard vCard) {
        vCard.getClass();
        if (this.attachmentCase_ != 3 || this.attachment_ == VCard.getDefaultInstance()) {
            this.attachment_ = vCard;
        } else {
            this.attachment_ = VCard.newBuilder((VCard) this.attachment_).mergeFrom(vCard).buildPartial();
        }
        this.attachmentCase_ = 3;
    }

    public void mergeVideo(Video video) {
        video.getClass();
        if (this.attachmentCase_ != 5 || this.attachment_ == Video.getDefaultInstance()) {
            this.attachment_ = video;
        } else {
            this.attachment_ = Video.newBuilder((Video) this.attachment_).mergeFrom(video).buildPartial();
        }
        this.attachmentCase_ = 5;
    }

    public static C3271b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3271b newBuilder(InputMessageContent inputMessageContent) {
        return DEFAULT_INSTANCE.createBuilder(inputMessageContent);
    }

    public static InputMessageContent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputMessageContent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputMessageContent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputMessageContent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputMessageContent parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputMessageContent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputMessageContent parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputMessageContent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputMessageContent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputMessageContent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputMessageContent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputMessageContent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputMessageContent> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeMessageEntities(int i) {
        ensureMessageEntitiesIsMutable();
        this.messageEntities_.remove(i);
    }

    public void setAnimation(Animation animation) {
        animation.getClass();
        this.attachment_ = animation;
        this.attachmentCase_ = 7;
    }

    public void setAudio(Audio audio) {
        audio.getClass();
        this.attachment_ = audio;
        this.attachmentCase_ = 6;
    }

    public void setFile(File file) {
        file.getClass();
        this.attachment_ = file;
        this.attachmentCase_ = 8;
    }

    public void setForwardInfo(ForwardInfo forwardInfo) {
        forwardInfo.getClass();
        this.forwardInfo_ = forwardInfo;
    }

    public void setImage(Image image) {
        image.getClass();
        this.attachment_ = image;
        this.attachmentCase_ = 2;
    }

    public void setLocation(Location location) {
        location.getClass();
        this.attachment_ = location;
        this.attachmentCase_ = 4;
    }

    public void setMessageEntities(int i, MessageEntity messageEntity) {
        messageEntity.getClass();
        ensureMessageEntitiesIsMutable();
        this.messageEntities_.set(i, messageEntity);
    }

    public void setRefMessageId(String str) {
        str.getClass();
        this.refMessageId_ = str;
    }

    public void setRefMessageIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.refMessageId_ = byteString.toStringUtf8();
    }

    public void setRefSeq(long j) {
        this.refSeq_ = j;
    }

    public void setText(String str) {
        str.getClass();
        this.text_ = str;
    }

    public void setTextBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.text_ = byteString.toStringUtf8();
    }

    public void setTextFormat(TextFormat textFormat) {
        this.textFormat_ = textFormat.getNumber();
    }

    public void setTextFormatValue(int i) {
        this.textFormat_ = i;
    }

    public void setVcard(VCard vCard) {
        vCard.getClass();
        this.attachment_ = vCard;
        this.attachmentCase_ = 3;
    }

    public void setVideo(Video video) {
        video.getClass();
        this.attachment_ = video;
        this.attachmentCase_ = 5;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\r\u0001��\u0001ϧ\r��\u0001��\u0001Ȉ\u0002<��\u0003<��\u0004<��\u0005<��\u0006<��\u0007<��\b<��\t\u001b\n\f\u000b\tϦ\u0002ϧȈ", new Object[]{"attachment_", "attachmentCase_", "text_", Image.class, VCard.class, Location.class, Video.class, Audio.class, Animation.class, File.class, "messageEntities_", MessageEntity.class, "textFormat_", "forwardInfo_", "refSeq_", "refMessageId_"});
            case 3:
                return new InputMessageContent();
            case 4:
                return new C3271b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputMessageContent.class) {
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

    public Animation getAnimation() {
        return this.attachmentCase_ == 7 ? (Animation) this.attachment_ : Animation.getDefaultInstance();
    }

    public AttachmentCase getAttachmentCase() {
        return AttachmentCase.forNumber(this.attachmentCase_);
    }

    public Audio getAudio() {
        return this.attachmentCase_ == 6 ? (Audio) this.attachment_ : Audio.getDefaultInstance();
    }

    public File getFile() {
        return this.attachmentCase_ == 8 ? (File) this.attachment_ : File.getDefaultInstance();
    }

    public ForwardInfo getForwardInfo() {
        ForwardInfo forwardInfo = this.forwardInfo_;
        ForwardInfo forwardInfo2 = forwardInfo;
        if (forwardInfo == null) {
            forwardInfo2 = ForwardInfo.getDefaultInstance();
        }
        return forwardInfo2;
    }

    public Image getImage() {
        return this.attachmentCase_ == 2 ? (Image) this.attachment_ : Image.getDefaultInstance();
    }

    public Location getLocation() {
        return this.attachmentCase_ == 4 ? (Location) this.attachment_ : Location.getDefaultInstance();
    }

    public MessageEntity getMessageEntities(int i) {
        return this.messageEntities_.get(i);
    }

    public int getMessageEntitiesCount() {
        return this.messageEntities_.size();
    }

    public List<MessageEntity> getMessageEntitiesList() {
        return this.messageEntities_;
    }

    public AbstractC3272c getMessageEntitiesOrBuilder(int i) {
        return this.messageEntities_.get(i);
    }

    public List<? extends AbstractC3272c> getMessageEntitiesOrBuilderList() {
        return this.messageEntities_;
    }

    public String getRefMessageId() {
        return this.refMessageId_;
    }

    public ByteString getRefMessageIdBytes() {
        return ByteString.copyFromUtf8(this.refMessageId_);
    }

    public long getRefSeq() {
        return this.refSeq_;
    }

    public String getText() {
        return this.text_;
    }

    public ByteString getTextBytes() {
        return ByteString.copyFromUtf8(this.text_);
    }

    public TextFormat getTextFormat() {
        TextFormat forNumber = TextFormat.forNumber(this.textFormat_);
        TextFormat textFormat = forNumber;
        if (forNumber == null) {
            textFormat = TextFormat.UNRECOGNIZED;
        }
        return textFormat;
    }

    public int getTextFormatValue() {
        return this.textFormat_;
    }

    public VCard getVcard() {
        return this.attachmentCase_ == 3 ? (VCard) this.attachment_ : VCard.getDefaultInstance();
    }

    public Video getVideo() {
        return this.attachmentCase_ == 5 ? (Video) this.attachment_ : Video.getDefaultInstance();
    }

    public boolean hasAnimation() {
        return this.attachmentCase_ == 7;
    }

    public boolean hasAudio() {
        return this.attachmentCase_ == 6;
    }

    public boolean hasFile() {
        return this.attachmentCase_ == 8;
    }

    public boolean hasForwardInfo() {
        return this.forwardInfo_ != null;
    }

    public boolean hasImage() {
        return this.attachmentCase_ == 2;
    }

    public boolean hasLocation() {
        return this.attachmentCase_ == 4;
    }

    public boolean hasVcard() {
        return this.attachmentCase_ == 3;
    }

    public boolean hasVideo() {
        return this.attachmentCase_ == 5;
    }
}
