package com.truecaller.api.services.messenger.p138v1.models;

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
/* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings.class */
public final class NotificationSettings extends GeneratedMessageLite<NotificationSettings, C3216b> implements Object {
    private static final NotificationSettings DEFAULT_INSTANCE;
    public static final int MENTION_ONLY_FIELD_NUMBER = 3;
    public static final int MUTED_FIELD_NUMBER = 1;
    private static volatile Parser<NotificationSettings> PARSER;
    public static final int REF_PHONE_NUMBER_FIELD_NUMBER = 100;
    public static final int WHITELISTED_FIELD_NUMBER = 2;
    private long refPhoneNumber_;
    private int valueCase_ = 0;
    private Object value_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$MentionOnly */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly.class */
    public static final class MentionOnly extends GeneratedMessageLite<MentionOnly, C3212a> implements Object {
        private static final MentionOnly DEFAULT_INSTANCE;
        private static volatile Parser<MentionOnly> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$MentionOnly$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly$a.class */
        public static final class C3212a extends GeneratedMessageLite.Builder<MentionOnly, C3212a> implements Object {
            public C3212a() {
                super(MentionOnly.DEFAULT_INSTANCE);
            }

            public C3212a(C3215a c3215a) {
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

        public static C3212a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3212a newBuilder(MentionOnly mentionOnly) {
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
                    return new C3212a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$Muted */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted.class */
    public static final class Muted extends GeneratedMessageLite<Muted, C3213a> implements Object {
        private static final Muted DEFAULT_INSTANCE;
        private static volatile Parser<Muted> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$Muted$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted$a.class */
        public static final class C3213a extends GeneratedMessageLite.Builder<Muted, C3213a> implements Object {
            public C3213a() {
                super(Muted.DEFAULT_INSTANCE);
            }

            public C3213a(C3215a c3215a) {
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

        public static C3213a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3213a newBuilder(Muted muted) {
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
                    return new C3213a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$ValueCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$ValueCase.class */
    public enum ValueCase {
        MUTED(1),
        WHITELISTED(2),
        MENTION_ONLY(3),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i) {
            this.value = i;
        }

        public static ValueCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return MUTED;
                }
                if (i == 2) {
                    return WHITELISTED;
                }
                if (i == 3) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$Whitelisted */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted.class */
    public static final class Whitelisted extends GeneratedMessageLite<Whitelisted, C3214a> implements Object {
        private static final Whitelisted DEFAULT_INSTANCE;
        private static volatile Parser<Whitelisted> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$Whitelisted$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted$a.class */
        public static final class C3214a extends GeneratedMessageLite.Builder<Whitelisted, C3214a> implements Object {
            public C3214a() {
                super(Whitelisted.DEFAULT_INSTANCE);
            }

            public C3214a(C3215a c3215a) {
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

        public static C3214a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3214a newBuilder(Whitelisted whitelisted) {
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
                    return new C3214a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettings$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettings$b.class */
    public static final class C3216b extends GeneratedMessageLite.Builder<NotificationSettings, C3216b> implements Object {
        public C3216b() {
            super(NotificationSettings.DEFAULT_INSTANCE);
        }

        public C3216b(C3215a c3215a) {
            super(NotificationSettings.DEFAULT_INSTANCE);
        }
    }

    static {
        NotificationSettings notificationSettings = new NotificationSettings();
        DEFAULT_INSTANCE = notificationSettings;
        GeneratedMessageLite.registerDefaultInstance(NotificationSettings.class, notificationSettings);
    }

    private NotificationSettings() {
    }

    public void clearMentionOnly() {
        if (this.valueCase_ == 3) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearMuted() {
        if (this.valueCase_ == 1) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearRefPhoneNumber() {
        this.refPhoneNumber_ = 0L;
    }

    public void clearValue() {
        this.valueCase_ = 0;
        this.value_ = null;
    }

    public void clearWhitelisted() {
        if (this.valueCase_ == 2) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public static NotificationSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeMentionOnly(MentionOnly mentionOnly) {
        mentionOnly.getClass();
        if (this.valueCase_ != 3 || this.value_ == MentionOnly.getDefaultInstance()) {
            this.value_ = mentionOnly;
        } else {
            this.value_ = MentionOnly.newBuilder((MentionOnly) this.value_).mergeFrom(mentionOnly).buildPartial();
        }
        this.valueCase_ = 3;
    }

    public void mergeMuted(Muted muted) {
        muted.getClass();
        if (this.valueCase_ != 1 || this.value_ == Muted.getDefaultInstance()) {
            this.value_ = muted;
        } else {
            this.value_ = Muted.newBuilder((Muted) this.value_).mergeFrom(muted).buildPartial();
        }
        this.valueCase_ = 1;
    }

    public void mergeWhitelisted(Whitelisted whitelisted) {
        whitelisted.getClass();
        if (this.valueCase_ != 2 || this.value_ == Whitelisted.getDefaultInstance()) {
            this.value_ = whitelisted;
        } else {
            this.value_ = Whitelisted.newBuilder((Whitelisted) this.value_).mergeFrom(whitelisted).buildPartial();
        }
        this.valueCase_ = 2;
    }

    public static C3216b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3216b newBuilder(NotificationSettings notificationSettings) {
        return DEFAULT_INSTANCE.createBuilder(notificationSettings);
    }

    public static NotificationSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NotificationSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NotificationSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static NotificationSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static NotificationSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static NotificationSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static NotificationSettings parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NotificationSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NotificationSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static NotificationSettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static NotificationSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static NotificationSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<NotificationSettings> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setMentionOnly(MentionOnly mentionOnly) {
        mentionOnly.getClass();
        this.value_ = mentionOnly;
        this.valueCase_ = 3;
    }

    public void setMuted(Muted muted) {
        muted.getClass();
        this.value_ = muted;
        this.valueCase_ = 1;
    }

    public void setRefPhoneNumber(long j) {
        this.refPhoneNumber_ = j;
    }

    public void setWhitelisted(Whitelisted whitelisted) {
        whitelisted.getClass();
        this.value_ = whitelisted;
        this.valueCase_ = 2;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004\u0001��\u0001d\u0004������\u0001<��\u0002<��\u0003<��d\u0002", new Object[]{"value_", "valueCase_", Muted.class, Whitelisted.class, MentionOnly.class, "refPhoneNumber_"});
            case 3:
                return new NotificationSettings();
            case 4:
                return new C3216b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (NotificationSettings.class) {
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

    public MentionOnly getMentionOnly() {
        return this.valueCase_ == 3 ? (MentionOnly) this.value_ : MentionOnly.getDefaultInstance();
    }

    public Muted getMuted() {
        return this.valueCase_ == 1 ? (Muted) this.value_ : Muted.getDefaultInstance();
    }

    public long getRefPhoneNumber() {
        return this.refPhoneNumber_;
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public Whitelisted getWhitelisted() {
        return this.valueCase_ == 2 ? (Whitelisted) this.value_ : Whitelisted.getDefaultInstance();
    }

    public boolean hasMentionOnly() {
        return this.valueCase_ == 3;
    }

    public boolean hasMuted() {
        boolean z = true;
        if (this.valueCase_ != 1) {
            z = false;
        }
        return z;
    }

    public boolean hasWhitelisted() {
        return this.valueCase_ == 2;
    }
}
