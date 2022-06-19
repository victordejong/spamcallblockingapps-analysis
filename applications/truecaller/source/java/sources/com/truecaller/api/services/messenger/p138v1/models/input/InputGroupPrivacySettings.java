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
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupPrivacySettings */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings.class */
public final class InputGroupPrivacySettings extends GeneratedMessageLite<InputGroupPrivacySettings, C3250b> implements Object {
    private static final InputGroupPrivacySettings DEFAULT_INSTANCE;
    public static final int INVITE_ONLY_FIELD_NUMBER = 1;
    private static volatile Parser<InputGroupPrivacySettings> PARSER;
    private int valueCase_ = 0;
    private Object value_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupPrivacySettings$InviteOnly */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings$InviteOnly.class */
    public static final class InviteOnly extends GeneratedMessageLite<InviteOnly, C3248a> implements Object {
        private static final InviteOnly DEFAULT_INSTANCE;
        private static volatile Parser<InviteOnly> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupPrivacySettings$InviteOnly$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings$InviteOnly$a.class */
        public static final class C3248a extends GeneratedMessageLite.Builder<InviteOnly, C3248a> implements Object {
            public C3248a() {
                super(InviteOnly.DEFAULT_INSTANCE);
            }

            public C3248a(C3249a c3249a) {
                super(InviteOnly.DEFAULT_INSTANCE);
            }
        }

        static {
            InviteOnly inviteOnly = new InviteOnly();
            DEFAULT_INSTANCE = inviteOnly;
            GeneratedMessageLite.registerDefaultInstance(InviteOnly.class, inviteOnly);
        }

        private InviteOnly() {
        }

        public static InviteOnly getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3248a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3248a newBuilder(InviteOnly inviteOnly) {
            return DEFAULT_INSTANCE.createBuilder(inviteOnly);
        }

        public static InviteOnly parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static InviteOnly parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static InviteOnly parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static InviteOnly parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static InviteOnly parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static InviteOnly parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static InviteOnly parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static InviteOnly parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static InviteOnly parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static InviteOnly parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static InviteOnly parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static InviteOnly parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<InviteOnly> parser() {
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
                    return new InviteOnly();
                case 4:
                    return new C3248a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (InviteOnly.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupPrivacySettings$ValueCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings$ValueCase.class */
    public enum ValueCase {
        INVITE_ONLY(1),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i) {
            this.value = i;
        }

        public static ValueCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return INVITE_ONLY;
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputGroupPrivacySettings$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputGroupPrivacySettings$b.class */
    public static final class C3250b extends GeneratedMessageLite.Builder<InputGroupPrivacySettings, C3250b> implements Object {
        public C3250b() {
            super(InputGroupPrivacySettings.DEFAULT_INSTANCE);
        }

        public C3250b(C3249a c3249a) {
            super(InputGroupPrivacySettings.DEFAULT_INSTANCE);
        }
    }

    static {
        InputGroupPrivacySettings inputGroupPrivacySettings = new InputGroupPrivacySettings();
        DEFAULT_INSTANCE = inputGroupPrivacySettings;
        GeneratedMessageLite.registerDefaultInstance(InputGroupPrivacySettings.class, inputGroupPrivacySettings);
    }

    private InputGroupPrivacySettings() {
    }

    public void clearInviteOnly() {
        if (this.valueCase_ == 1) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearValue() {
        this.valueCase_ = 0;
        this.value_ = null;
    }

    public static InputGroupPrivacySettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeInviteOnly(InviteOnly inviteOnly) {
        inviteOnly.getClass();
        if (this.valueCase_ != 1 || this.value_ == InviteOnly.getDefaultInstance()) {
            this.value_ = inviteOnly;
        } else {
            this.value_ = InviteOnly.newBuilder((InviteOnly) this.value_).mergeFrom(inviteOnly).buildPartial();
        }
        this.valueCase_ = 1;
    }

    public static C3250b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3250b newBuilder(InputGroupPrivacySettings inputGroupPrivacySettings) {
        return DEFAULT_INSTANCE.createBuilder(inputGroupPrivacySettings);
    }

    public static InputGroupPrivacySettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputGroupPrivacySettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputGroupPrivacySettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputGroupPrivacySettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputGroupPrivacySettings parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputGroupPrivacySettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputGroupPrivacySettings parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputGroupPrivacySettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputGroupPrivacySettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputGroupPrivacySettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputGroupPrivacySettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputGroupPrivacySettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputGroupPrivacySettings> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setInviteOnly(InviteOnly inviteOnly) {
        inviteOnly.getClass();
        this.value_ = inviteOnly;
        this.valueCase_ = 1;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001\u0001��\u0001\u0001\u0001������\u0001<��", new Object[]{"value_", "valueCase_", InviteOnly.class});
            case 3:
                return new InputGroupPrivacySettings();
            case 4:
                return new C3250b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputGroupPrivacySettings.class) {
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

    public InviteOnly getInviteOnly() {
        return this.valueCase_ == 1 ? (InviteOnly) this.value_ : InviteOnly.getDefaultInstance();
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasInviteOnly() {
        boolean z = true;
        if (this.valueCase_ != 1) {
            z = false;
        }
        return z;
    }
}
