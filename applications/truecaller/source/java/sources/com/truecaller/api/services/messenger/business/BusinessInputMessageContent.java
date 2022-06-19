package com.truecaller.api.services.messenger.business;

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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent.class */
public final class BusinessInputMessageContent extends GeneratedMessageLite<BusinessInputMessageContent, C2988b> implements Object {
    public static final int ACTIONS_FIELD_NUMBER = 12;
    private static final BusinessInputMessageContent DEFAULT_INSTANCE;
    public static final int FILE_FIELD_NUMBER = 8;
    public static final int IMAGE_FIELD_NUMBER = 2;
    private static volatile Parser<BusinessInputMessageContent> PARSER;
    public static final int REF_MESSAGE_ID_FIELD_NUMBER = 999;
    public static final int TEXT_FIELD_NUMBER = 1;
    public static final int VIDEO_FIELD_NUMBER = 5;
    private Object attachment_;
    private int attachmentCase_ = 0;
    private String text_ = "";
    private String refMessageId_ = "";
    private Internal.ProtobufList<QuickAction> actions_ = GeneratedMessageLite.emptyProtobufList();

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase.class */
    public enum AttachmentCase {
        IMAGE(2),
        VIDEO(5),
        FILE(8),
        ATTACHMENT_NOT_SET(0);
        
        private final int value;

        AttachmentCase(int i) {
            this.value = i;
        }

        public static AttachmentCase forNumber(int i) {
            if (i != 0) {
                if (i == 2) {
                    return IMAGE;
                }
                if (i == 5) {
                    return VIDEO;
                }
                if (i == 8) {
                    return FILE;
                }
                return null;
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

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$File.class */
    public static final class File extends GeneratedMessageLite<File, C2983a> implements Object {
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

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputMessageContent$File$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$File$a.class */
        public static final class C2983a extends GeneratedMessageLite.Builder<File, C2983a> implements Object {
            public C2983a() {
                super(File.DEFAULT_INSTANCE);
            }

            public C2983a(C2987a c2987a) {
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

        public static C2983a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2983a newBuilder(File file) {
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
                    return new C2983a(null);
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

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image.class */
    public static final class Image extends GeneratedMessageLite<Image, C2984a> implements Object {
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

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputMessageContent$Image$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$Image$a.class */
        public static final class C2984a extends GeneratedMessageLite.Builder<Image, C2984a> implements Object {
            public C2984a() {
                super(Image.DEFAULT_INSTANCE);
            }

            public C2984a(C2987a c2987a) {
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

        public static C2984a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2984a newBuilder(Image image) {
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
                    return new C2984a(null);
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

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction.class */
    public static final class QuickAction extends GeneratedMessageLite<QuickAction, C2985a> implements AbstractC2989c {
        private static final QuickAction DEFAULT_INSTANCE;
        private static volatile Parser<QuickAction> PARSER;
        public static final int REPLY_FIELD_NUMBER = 11;
        private int actionCase_ = 0;
        private Object action_;

        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$ActionCase.class */
        public enum ActionCase {
            REPLY(11),
            ACTION_NOT_SET(0);
            
            private final int value;

            ActionCase(int i) {
                this.value = i;
            }

            public static ActionCase forNumber(int i) {
                if (i != 0) {
                    if (i == 11) {
                        return REPLY;
                    }
                    return null;
                }
                return ACTION_NOT_SET;
            }

            @Deprecated
            public static ActionCase valueOf(int i) {
                return forNumber(i);
            }

            public int getNumber() {
                return this.value;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputMessageContent$QuickAction$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a.class */
        public static final class C2985a extends GeneratedMessageLite.Builder<QuickAction, C2985a> implements AbstractC2989c {
            public C2985a() {
                super(QuickAction.DEFAULT_INSTANCE);
            }

            public C2985a(C2987a c2987a) {
                super(QuickAction.DEFAULT_INSTANCE);
            }
        }

        static {
            QuickAction quickAction = new QuickAction();
            DEFAULT_INSTANCE = quickAction;
            GeneratedMessageLite.registerDefaultInstance(QuickAction.class, quickAction);
        }

        private QuickAction() {
        }

        public void clearAction() {
            this.actionCase_ = 0;
            this.action_ = null;
        }

        public void clearReply() {
            if (this.actionCase_ == 11) {
                this.actionCase_ = 0;
                this.action_ = null;
            }
        }

        public static QuickAction getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2985a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2985a newBuilder(QuickAction quickAction) {
            return DEFAULT_INSTANCE.createBuilder(quickAction);
        }

        public static QuickAction parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static QuickAction parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static QuickAction parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static QuickAction parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static QuickAction parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static QuickAction parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static QuickAction parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static QuickAction parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static QuickAction parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static QuickAction parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static QuickAction parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static QuickAction parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<QuickAction> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setReply(String str) {
            str.getClass();
            this.actionCase_ = 11;
            this.action_ = str;
        }

        public void setReplyBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.action_ = byteString.toStringUtf8();
            this.actionCase_ = 11;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001\u0001��\u000b\u000b\u0001������\u000bȻ��", new Object[]{"action_", "actionCase_"});
                case 3:
                    return new QuickAction();
                case 4:
                    return new C2985a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (QuickAction.class) {
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

        public ActionCase getActionCase() {
            return ActionCase.forNumber(this.actionCase_);
        }

        public String getReply() {
            return this.actionCase_ == 11 ? (String) this.action_ : "";
        }

        public ByteString getReplyBytes() {
            return ByteString.copyFromUtf8(this.actionCase_ == 11 ? (String) this.action_ : "");
        }

        public boolean hasReply() {
            return this.actionCase_ == 11;
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video.class */
    public static final class Video extends GeneratedMessageLite<Video, C2986a> implements Object {
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

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputMessageContent$Video$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$Video$a.class */
        public static final class C2986a extends GeneratedMessageLite.Builder<Video, C2986a> implements Object {
            public C2986a() {
                super(Video.DEFAULT_INSTANCE);
            }

            public C2986a(C2987a c2987a) {
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

        public static C2986a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2986a newBuilder(Video video) {
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
                    return new C2986a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputMessageContent$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$b.class */
    public static final class C2988b extends GeneratedMessageLite.Builder<BusinessInputMessageContent, C2988b> implements Object {
        public C2988b() {
            super(BusinessInputMessageContent.DEFAULT_INSTANCE);
        }

        public C2988b(C2987a c2987a) {
            super(BusinessInputMessageContent.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputMessageContent$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputMessageContent$c.class */
    public interface AbstractC2989c extends MessageLiteOrBuilder {
    }

    static {
        BusinessInputMessageContent businessInputMessageContent = new BusinessInputMessageContent();
        DEFAULT_INSTANCE = businessInputMessageContent;
        GeneratedMessageLite.registerDefaultInstance(BusinessInputMessageContent.class, businessInputMessageContent);
    }

    private BusinessInputMessageContent() {
    }

    public void addActions(int i, QuickAction quickAction) {
        quickAction.getClass();
        ensureActionsIsMutable();
        this.actions_.add(i, quickAction);
    }

    public void addActions(QuickAction quickAction) {
        quickAction.getClass();
        ensureActionsIsMutable();
        this.actions_.add(quickAction);
    }

    public void addAllActions(Iterable<? extends QuickAction> iterable) {
        ensureActionsIsMutable();
        AbstractMessageLite.addAll(iterable, this.actions_);
    }

    public void clearActions() {
        this.actions_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearAttachment() {
        this.attachmentCase_ = 0;
        this.attachment_ = null;
    }

    public void clearFile() {
        if (this.attachmentCase_ == 8) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearImage() {
        if (this.attachmentCase_ == 2) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    public void clearRefMessageId() {
        this.refMessageId_ = getDefaultInstance().getRefMessageId();
    }

    public void clearText() {
        this.text_ = getDefaultInstance().getText();
    }

    public void clearVideo() {
        if (this.attachmentCase_ == 5) {
            this.attachmentCase_ = 0;
            this.attachment_ = null;
        }
    }

    private void ensureActionsIsMutable() {
        Internal.ProtobufList<QuickAction> protobufList = this.actions_;
        if (!protobufList.isModifiable()) {
            this.actions_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static BusinessInputMessageContent getDefaultInstance() {
        return DEFAULT_INSTANCE;
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

    public void mergeImage(Image image) {
        image.getClass();
        if (this.attachmentCase_ != 2 || this.attachment_ == Image.getDefaultInstance()) {
            this.attachment_ = image;
        } else {
            this.attachment_ = Image.newBuilder((Image) this.attachment_).mergeFrom(image).buildPartial();
        }
        this.attachmentCase_ = 2;
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

    public static C2988b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2988b newBuilder(BusinessInputMessageContent businessInputMessageContent) {
        return DEFAULT_INSTANCE.createBuilder(businessInputMessageContent);
    }

    public static BusinessInputMessageContent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessInputMessageContent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessInputMessageContent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BusinessInputMessageContent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BusinessInputMessageContent parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BusinessInputMessageContent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static BusinessInputMessageContent parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessInputMessageContent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessInputMessageContent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BusinessInputMessageContent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BusinessInputMessageContent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BusinessInputMessageContent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<BusinessInputMessageContent> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeActions(int i) {
        ensureActionsIsMutable();
        this.actions_.remove(i);
    }

    public void setActions(int i, QuickAction quickAction) {
        quickAction.getClass();
        ensureActionsIsMutable();
        this.actions_.set(i, quickAction);
    }

    public void setFile(File file) {
        file.getClass();
        this.attachment_ = file;
        this.attachmentCase_ = 8;
    }

    public void setImage(Image image) {
        image.getClass();
        this.attachment_ = image;
        this.attachmentCase_ = 2;
    }

    public void setRefMessageId(String str) {
        str.getClass();
        this.refMessageId_ = str;
    }

    public void setRefMessageIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.refMessageId_ = byteString.toStringUtf8();
    }

    public void setText(String str) {
        str.getClass();
        this.text_ = str;
    }

    public void setTextBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.text_ = byteString.toStringUtf8();
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
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0006\u0001��\u0001ϧ\u0006��\u0001��\u0001Ȉ\u0002<��\u0005<��\b<��\f\u001bϧȈ", new Object[]{"attachment_", "attachmentCase_", "text_", Image.class, Video.class, File.class, "actions_", QuickAction.class, "refMessageId_"});
            case 3:
                return new BusinessInputMessageContent();
            case 4:
                return new C2988b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (BusinessInputMessageContent.class) {
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

    public QuickAction getActions(int i) {
        return this.actions_.get(i);
    }

    public int getActionsCount() {
        return this.actions_.size();
    }

    public List<QuickAction> getActionsList() {
        return this.actions_;
    }

    public AbstractC2989c getActionsOrBuilder(int i) {
        return this.actions_.get(i);
    }

    public List<? extends AbstractC2989c> getActionsOrBuilderList() {
        return this.actions_;
    }

    public AttachmentCase getAttachmentCase() {
        return AttachmentCase.forNumber(this.attachmentCase_);
    }

    public File getFile() {
        return this.attachmentCase_ == 8 ? (File) this.attachment_ : File.getDefaultInstance();
    }

    public Image getImage() {
        return this.attachmentCase_ == 2 ? (Image) this.attachment_ : Image.getDefaultInstance();
    }

    public String getRefMessageId() {
        return this.refMessageId_;
    }

    public ByteString getRefMessageIdBytes() {
        return ByteString.copyFromUtf8(this.refMessageId_);
    }

    public String getText() {
        return this.text_;
    }

    public ByteString getTextBytes() {
        return ByteString.copyFromUtf8(this.text_);
    }

    public Video getVideo() {
        return this.attachmentCase_ == 5 ? (Video) this.attachment_ : Video.getDefaultInstance();
    }

    public boolean hasFile() {
        return this.attachmentCase_ == 8;
    }

    public boolean hasImage() {
        return this.attachmentCase_ == 2;
    }

    public boolean hasVideo() {
        return this.attachmentCase_ == 5;
    }
}
