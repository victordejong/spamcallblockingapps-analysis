package com.truecaller.api.services.messenger.p138v1.models.input;

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
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings.class */
public final class InputNotificationSettings extends GeneratedMessageLite<InputNotificationSettings, C3285b> implements Object {
    public static final int DEFAULT_FIELD_NUMBER = 1;
    private static final InputNotificationSettings DEFAULT_INSTANCE;
    public static final int MENTION_ONLY_FIELD_NUMBER = 4;
    public static final int MUTED_FIELD_NUMBER = 2;
    private static volatile Parser<InputNotificationSettings> PARSER;
    public static final int WHITELISTED_FIELD_NUMBER = 3;
    private int valueCase_ = 0;
    private Object value_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$Default */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Default.class */
    public static final class Default extends GeneratedMessageLite<Default, C3280a> implements Object {
        private static final Default DEFAULT_INSTANCE;
        private static volatile Parser<Default> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$Default$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Default$a.class */
        public static final class C3280a extends GeneratedMessageLite.Builder<Default, C3280a> implements Object {
            public C3280a() {
                super(Default.DEFAULT_INSTANCE);
            }

            public C3280a(C3284a c3284a) {
                super(Default.DEFAULT_INSTANCE);
            }
        }

        static {
            Default r0 = new Default();
            DEFAULT_INSTANCE = r0;
            GeneratedMessageLite.registerDefaultInstance(Default.class, r0);
        }

        private Default() {
        }

        public static Default getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3280a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3280a newBuilder(Default r3) {
            return DEFAULT_INSTANCE.createBuilder(r3);
        }

        public static Default parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Default parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Default parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Default parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Default parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Default parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Default parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Default parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Default parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Default parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Default parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Default parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Default> parser() {
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
                    return new Default();
                case 4:
                    return new C3280a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Default.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$MentionOnly */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$MentionOnly.class */
    public static final class MentionOnly extends GeneratedMessageLite<MentionOnly, C3281a> implements Object {
        private static final MentionOnly DEFAULT_INSTANCE;
        private static volatile Parser<MentionOnly> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$MentionOnly$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$MentionOnly$a.class */
        public static final class C3281a extends GeneratedMessageLite.Builder<MentionOnly, C3281a> implements Object {
            public C3281a() {
                super(MentionOnly.DEFAULT_INSTANCE);
            }

            public C3281a(C3284a c3284a) {
                super(MentionOnly.DEFAULT_INSTANCE);
            }
        }

        static {
            MentionOnly mentionOnly = new MentionOnly();
            DEFAULT_INSTANCE = mentionOnly;
            GeneratedMessageLite.registerDefaultInstance(MentionOnly.class, mentionOnly);
        }

        private MentionOnly() {
        }

        public static MentionOnly getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3281a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3281a newBuilder(MentionOnly mentionOnly) {
            return DEFAULT_INSTANCE.createBuilder(mentionOnly);
        }

        public static MentionOnly parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MentionOnly parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MentionOnly parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static MentionOnly parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static MentionOnly parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static MentionOnly parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static MentionOnly parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MentionOnly parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MentionOnly parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static MentionOnly parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static MentionOnly parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static MentionOnly parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<MentionOnly> parser() {
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
                    return new MentionOnly();
                case 4:
                    return new C3281a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (MentionOnly.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$Muted */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Muted.class */
    public static final class Muted extends GeneratedMessageLite<Muted, C3282a> implements Object {
        private static final Muted DEFAULT_INSTANCE;
        private static volatile Parser<Muted> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$Muted$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Muted$a.class */
        public static final class C3282a extends GeneratedMessageLite.Builder<Muted, C3282a> implements Object {
            public C3282a() {
                super(Muted.DEFAULT_INSTANCE);
            }

            public C3282a(C3284a c3284a) {
                super(Muted.DEFAULT_INSTANCE);
            }
        }

        static {
            Muted muted = new Muted();
            DEFAULT_INSTANCE = muted;
            GeneratedMessageLite.registerDefaultInstance(Muted.class, muted);
        }

        private Muted() {
        }

        public static Muted getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3282a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3282a newBuilder(Muted muted) {
            return DEFAULT_INSTANCE.createBuilder(muted);
        }

        public static Muted parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Muted parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Muted parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Muted parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Muted parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Muted parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Muted parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Muted parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Muted parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Muted parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Muted parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Muted parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Muted> parser() {
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
                    return new Muted();
                case 4:
                    return new C3282a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Muted.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$ValueCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$ValueCase.class */
    public enum ValueCase {
        DEFAULT(1),
        MUTED(2),
        WHITELISTED(3),
        MENTION_ONLY(4),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i) {
            this.value = i;
        }

        public static ValueCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return DEFAULT;
                }
                if (i == 2) {
                    return MUTED;
                }
                if (i == 3) {
                    return WHITELISTED;
                }
                if (i == 4) {
                    return MENTION_ONLY;
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$Whitelisted */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Whitelisted.class */
    public static final class Whitelisted extends GeneratedMessageLite<Whitelisted, C3283a> implements Object {
        private static final Whitelisted DEFAULT_INSTANCE;
        private static volatile Parser<Whitelisted> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$Whitelisted$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$Whitelisted$a.class */
        public static final class C3283a extends GeneratedMessageLite.Builder<Whitelisted, C3283a> implements Object {
            public C3283a() {
                super(Whitelisted.DEFAULT_INSTANCE);
            }

            public C3283a(C3284a c3284a) {
                super(Whitelisted.DEFAULT_INSTANCE);
            }
        }

        static {
            Whitelisted whitelisted = new Whitelisted();
            DEFAULT_INSTANCE = whitelisted;
            GeneratedMessageLite.registerDefaultInstance(Whitelisted.class, whitelisted);
        }

        private Whitelisted() {
        }

        public static Whitelisted getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3283a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3283a newBuilder(Whitelisted whitelisted) {
            return DEFAULT_INSTANCE.createBuilder(whitelisted);
        }

        public static Whitelisted parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Whitelisted parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Whitelisted parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Whitelisted parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Whitelisted parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Whitelisted parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Whitelisted parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Whitelisted parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Whitelisted parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Whitelisted parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Whitelisted parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Whitelisted parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Whitelisted> parser() {
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
                    return new Whitelisted();
                case 4:
                    return new C3283a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Whitelisted.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputNotificationSettings$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$b.class */
    public static final class C3285b extends GeneratedMessageLite.Builder<InputNotificationSettings, C3285b> implements Object {
        public C3285b() {
            super(InputNotificationSettings.DEFAULT_INSTANCE);
        }

        public C3285b(C3284a c3284a) {
            super(InputNotificationSettings.DEFAULT_INSTANCE);
        }
    }

    static {
        InputNotificationSettings inputNotificationSettings = new InputNotificationSettings();
        DEFAULT_INSTANCE = inputNotificationSettings;
        GeneratedMessageLite.registerDefaultInstance(InputNotificationSettings.class, inputNotificationSettings);
    }

    private InputNotificationSettings() {
    }

    public void clearDefault() {
        if (this.valueCase_ == 1) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearMentionOnly() {
        if (this.valueCase_ == 4) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearMuted() {
        if (this.valueCase_ == 2) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearValue() {
        this.valueCase_ = 0;
        this.value_ = null;
    }

    public void clearWhitelisted() {
        if (this.valueCase_ == 3) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public static InputNotificationSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeDefault(Default r5) {
        r5.getClass();
        if (this.valueCase_ != 1 || this.value_ == Default.getDefaultInstance()) {
            this.value_ = r5;
        } else {
            this.value_ = Default.newBuilder((Default) this.value_).mergeFrom(r5).buildPartial();
        }
        this.valueCase_ = 1;
    }

    public void mergeMentionOnly(MentionOnly mentionOnly) {
        mentionOnly.getClass();
        if (this.valueCase_ != 4 || this.value_ == MentionOnly.getDefaultInstance()) {
            this.value_ = mentionOnly;
        } else {
            this.value_ = MentionOnly.newBuilder((MentionOnly) this.value_).mergeFrom(mentionOnly).buildPartial();
        }
        this.valueCase_ = 4;
    }

    public void mergeMuted(Muted muted) {
        muted.getClass();
        if (this.valueCase_ != 2 || this.value_ == Muted.getDefaultInstance()) {
            this.value_ = muted;
        } else {
            this.value_ = Muted.newBuilder((Muted) this.value_).mergeFrom(muted).buildPartial();
        }
        this.valueCase_ = 2;
    }

    public void mergeWhitelisted(Whitelisted whitelisted) {
        whitelisted.getClass();
        if (this.valueCase_ != 3 || this.value_ == Whitelisted.getDefaultInstance()) {
            this.value_ = whitelisted;
        } else {
            this.value_ = Whitelisted.newBuilder((Whitelisted) this.value_).mergeFrom(whitelisted).buildPartial();
        }
        this.valueCase_ = 3;
    }

    public static C3285b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3285b newBuilder(InputNotificationSettings inputNotificationSettings) {
        return DEFAULT_INSTANCE.createBuilder(inputNotificationSettings);
    }

    public static InputNotificationSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputNotificationSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputNotificationSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputNotificationSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputNotificationSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputNotificationSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputNotificationSettings parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputNotificationSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputNotificationSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputNotificationSettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputNotificationSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputNotificationSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputNotificationSettings> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setDefault(Default r4) {
        r4.getClass();
        this.value_ = r4;
        this.valueCase_ = 1;
    }

    public void setMentionOnly(MentionOnly mentionOnly) {
        mentionOnly.getClass();
        this.value_ = mentionOnly;
        this.valueCase_ = 4;
    }

    public void setMuted(Muted muted) {
        muted.getClass();
        this.value_ = muted;
        this.valueCase_ = 2;
    }

    public void setWhitelisted(Whitelisted whitelisted) {
        whitelisted.getClass();
        this.value_ = whitelisted;
        this.valueCase_ = 3;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004\u0001��\u0001\u0004\u0004������\u0001<��\u0002<��\u0003<��\u0004<��", new Object[]{"value_", "valueCase_", Default.class, Muted.class, Whitelisted.class, MentionOnly.class});
            case 3:
                return new InputNotificationSettings();
            case 4:
                return new C3285b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputNotificationSettings.class) {
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

    public Default getDefault() {
        return this.valueCase_ == 1 ? (Default) this.value_ : Default.getDefaultInstance();
    }

    public MentionOnly getMentionOnly() {
        return this.valueCase_ == 4 ? (MentionOnly) this.value_ : MentionOnly.getDefaultInstance();
    }

    public Muted getMuted() {
        return this.valueCase_ == 2 ? (Muted) this.value_ : Muted.getDefaultInstance();
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public Whitelisted getWhitelisted() {
        return this.valueCase_ == 3 ? (Whitelisted) this.value_ : Whitelisted.getDefaultInstance();
    }

    public boolean hasDefault() {
        boolean z = true;
        if (this.valueCase_ != 1) {
            z = false;
        }
        return z;
    }

    public boolean hasMentionOnly() {
        return this.valueCase_ == 4;
    }

    public boolean hasMuted() {
        return this.valueCase_ == 2;
    }

    public boolean hasWhitelisted() {
        return this.valueCase_ == 3;
    }
}
