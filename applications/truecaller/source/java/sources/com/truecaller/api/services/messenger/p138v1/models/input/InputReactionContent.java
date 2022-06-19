package com.truecaller.api.services.messenger.p138v1.models.input;

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
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReactionContent */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReactionContent.class */
public final class InputReactionContent extends GeneratedMessageLite<InputReactionContent, C3294b> implements Object {
    private static final InputReactionContent DEFAULT_INSTANCE;
    public static final int EMOJI_FIELD_NUMBER = 1;
    private static volatile Parser<InputReactionContent> PARSER;
    public static final int REF_MESSAGE_ID_FIELD_NUMBER = 999;
    public static final int REF_SEQ_FIELD_NUMBER = 998;
    private long refSeq_;
    private Object value_;
    private int valueCase_ = 0;
    private String refMessageId_ = "";

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReactionContent$Emoji */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji.class */
    public static final class Emoji extends GeneratedMessageLite<Emoji, C3292a> implements Object {
        private static final Emoji DEFAULT_INSTANCE;
        private static volatile Parser<Emoji> PARSER;
        public static final int VALUE_FIELD_NUMBER = 1;
        private String value_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReactionContent$Emoji$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReactionContent$Emoji$a.class */
        public static final class C3292a extends GeneratedMessageLite.Builder<Emoji, C3292a> implements Object {
            public C3292a() {
                super(Emoji.DEFAULT_INSTANCE);
            }

            public C3292a(C3293a c3293a) {
                super(Emoji.DEFAULT_INSTANCE);
            }
        }

        static {
            Emoji emoji = new Emoji();
            DEFAULT_INSTANCE = emoji;
            GeneratedMessageLite.registerDefaultInstance(Emoji.class, emoji);
        }

        private Emoji() {
        }

        public void clearValue() {
            this.value_ = getDefaultInstance().getValue();
        }

        public static Emoji getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3292a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3292a newBuilder(Emoji emoji) {
            return DEFAULT_INSTANCE.createBuilder(emoji);
        }

        public static Emoji parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Emoji parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Emoji parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Emoji parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Emoji parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Emoji parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Emoji parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Emoji parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Emoji parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Emoji parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Emoji parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Emoji parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Emoji> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setValue(String str) {
            str.getClass();
            this.value_ = str;
        }

        public void setValueBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.value_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"value_"});
                case 3:
                    return new Emoji();
                case 4:
                    return new C3292a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Emoji.class) {
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

        public String getValue() {
            return this.value_;
        }

        public ByteString getValueBytes() {
            return ByteString.copyFromUtf8(this.value_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReactionContent$ValueCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReactionContent$ValueCase.class */
    public enum ValueCase {
        EMOJI(1),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i) {
            this.value = i;
        }

        public static ValueCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return EMOJI;
                }
                return null;
            }
            return VALUE_NOT_SET;
        }

        @Deprecated
        public static ValueCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputReactionContent$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputReactionContent$b.class */
    public static final class C3294b extends GeneratedMessageLite.Builder<InputReactionContent, C3294b> implements Object {
        public C3294b() {
            super(InputReactionContent.DEFAULT_INSTANCE);
        }

        public C3294b(C3293a c3293a) {
            super(InputReactionContent.DEFAULT_INSTANCE);
        }
    }

    static {
        InputReactionContent inputReactionContent = new InputReactionContent();
        DEFAULT_INSTANCE = inputReactionContent;
        GeneratedMessageLite.registerDefaultInstance(InputReactionContent.class, inputReactionContent);
    }

    private InputReactionContent() {
    }

    public void clearEmoji() {
        if (this.valueCase_ == 1) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearRefMessageId() {
        this.refMessageId_ = getDefaultInstance().getRefMessageId();
    }

    public void clearRefSeq() {
        this.refSeq_ = 0L;
    }

    public void clearValue() {
        this.valueCase_ = 0;
        this.value_ = null;
    }

    public static InputReactionContent getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeEmoji(Emoji emoji) {
        emoji.getClass();
        if (this.valueCase_ != 1 || this.value_ == Emoji.getDefaultInstance()) {
            this.value_ = emoji;
        } else {
            this.value_ = Emoji.newBuilder((Emoji) this.value_).mergeFrom(emoji).buildPartial();
        }
        this.valueCase_ = 1;
    }

    public static C3294b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3294b newBuilder(InputReactionContent inputReactionContent) {
        return DEFAULT_INSTANCE.createBuilder(inputReactionContent);
    }

    public static InputReactionContent parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputReactionContent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputReactionContent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputReactionContent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputReactionContent parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputReactionContent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputReactionContent parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputReactionContent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputReactionContent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputReactionContent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputReactionContent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputReactionContent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputReactionContent> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setEmoji(Emoji emoji) {
        emoji.getClass();
        this.value_ = emoji;
        this.valueCase_ = 1;
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

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003\u0001��\u0001ϧ\u0003������\u0001<��Ϧ\u0002ϧȈ", new Object[]{"value_", "valueCase_", Emoji.class, "refSeq_", "refMessageId_"});
            case 3:
                return new InputReactionContent();
            case 4:
                return new C3294b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputReactionContent.class) {
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

    public Emoji getEmoji() {
        return this.valueCase_ == 1 ? (Emoji) this.value_ : Emoji.getDefaultInstance();
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

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasEmoji() {
        boolean z = true;
        if (this.valueCase_ != 1) {
            z = false;
        }
        return z;
    }
}
