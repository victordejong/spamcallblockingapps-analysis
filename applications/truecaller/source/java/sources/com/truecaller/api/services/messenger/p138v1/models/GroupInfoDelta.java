package com.truecaller.api.services.messenger.p138v1.models;

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
/* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoDelta */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoDelta.class */
public final class GroupInfoDelta extends GeneratedMessageLite<GroupInfoDelta, C3174b> implements Object {
    public static final int AVATARUNCHANGED_FIELD_NUMBER = 4;
    public static final int AVATAR_FIELD_NUMBER = 2;
    private static final GroupInfoDelta DEFAULT_INSTANCE;
    private static volatile Parser<GroupInfoDelta> PARSER;
    public static final int TITLEUNCHANGED_FIELD_NUMBER = 3;
    public static final int TITLE_FIELD_NUMBER = 1;
    private Object avatarInfo_;
    private Object titleInfo_;
    private int titleInfoCase_ = 0;
    private int avatarInfoCase_ = 0;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoDelta$AvatarInfoCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase.class */
    public enum AvatarInfoCase {
        AVATAR(2),
        AVATARUNCHANGED(4),
        AVATARINFO_NOT_SET(0);
        
        private final int value;

        AvatarInfoCase(int i) {
            this.value = i;
        }

        public static AvatarInfoCase forNumber(int i) {
            if (i != 0) {
                if (i == 2) {
                    return AVATAR;
                }
                if (i == 4) {
                    return AVATARUNCHANGED;
                }
                return null;
            }
            return AVATARINFO_NOT_SET;
        }

        @Deprecated
        public static AvatarInfoCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoDelta$TitleInfoCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase.class */
    public enum TitleInfoCase {
        TITLE(1),
        TITLEUNCHANGED(3),
        TITLEINFO_NOT_SET(0);
        
        private final int value;

        TitleInfoCase(int i) {
            this.value = i;
        }

        public static TitleInfoCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return TITLE;
                }
                if (i == 3) {
                    return TITLEUNCHANGED;
                }
                return null;
            }
            return TITLEINFO_NOT_SET;
        }

        @Deprecated
        public static TitleInfoCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoDelta$Unchanged */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged.class */
    public static final class Unchanged extends GeneratedMessageLite<Unchanged, C3172a> implements Object {
        private static final Unchanged DEFAULT_INSTANCE;
        private static volatile Parser<Unchanged> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoDelta$Unchanged$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged$a.class */
        public static final class C3172a extends GeneratedMessageLite.Builder<Unchanged, C3172a> implements Object {
            public C3172a() {
                super(Unchanged.DEFAULT_INSTANCE);
            }

            public C3172a(C3173a c3173a) {
                super(Unchanged.DEFAULT_INSTANCE);
            }
        }

        static {
            Unchanged unchanged = new Unchanged();
            DEFAULT_INSTANCE = unchanged;
            GeneratedMessageLite.registerDefaultInstance(Unchanged.class, unchanged);
        }

        private Unchanged() {
        }

        public static Unchanged getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3172a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3172a newBuilder(Unchanged unchanged) {
            return DEFAULT_INSTANCE.createBuilder(unchanged);
        }

        public static Unchanged parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Unchanged parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Unchanged parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Unchanged parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Unchanged parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Unchanged parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Unchanged parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Unchanged parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Unchanged parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Unchanged parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Unchanged parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Unchanged parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Unchanged> parser() {
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
                    return new Unchanged();
                case 4:
                    return new C3172a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Unchanged.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupInfoDelta$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b.class */
    public static final class C3174b extends GeneratedMessageLite.Builder<GroupInfoDelta, C3174b> implements Object {
        public C3174b() {
            super(GroupInfoDelta.DEFAULT_INSTANCE);
        }

        public C3174b(C3173a c3173a) {
            super(GroupInfoDelta.DEFAULT_INSTANCE);
        }
    }

    static {
        GroupInfoDelta groupInfoDelta = new GroupInfoDelta();
        DEFAULT_INSTANCE = groupInfoDelta;
        GeneratedMessageLite.registerDefaultInstance(GroupInfoDelta.class, groupInfoDelta);
    }

    private GroupInfoDelta() {
    }

    public void clearAvatar() {
        if (this.avatarInfoCase_ == 2) {
            this.avatarInfoCase_ = 0;
            this.avatarInfo_ = null;
        }
    }

    public void clearAvatarInfo() {
        this.avatarInfoCase_ = 0;
        this.avatarInfo_ = null;
    }

    public void clearAvatarUnchanged() {
        if (this.avatarInfoCase_ == 4) {
            this.avatarInfoCase_ = 0;
            this.avatarInfo_ = null;
        }
    }

    public void clearTitle() {
        if (this.titleInfoCase_ == 1) {
            this.titleInfoCase_ = 0;
            this.titleInfo_ = null;
        }
    }

    public void clearTitleInfo() {
        this.titleInfoCase_ = 0;
        this.titleInfo_ = null;
    }

    public void clearTitleUnchanged() {
        if (this.titleInfoCase_ == 3) {
            this.titleInfoCase_ = 0;
            this.titleInfo_ = null;
        }
    }

    public static GroupInfoDelta getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeAvatarUnchanged(Unchanged unchanged) {
        unchanged.getClass();
        if (this.avatarInfoCase_ != 4 || this.avatarInfo_ == Unchanged.getDefaultInstance()) {
            this.avatarInfo_ = unchanged;
        } else {
            this.avatarInfo_ = Unchanged.newBuilder((Unchanged) this.avatarInfo_).mergeFrom(unchanged).buildPartial();
        }
        this.avatarInfoCase_ = 4;
    }

    public void mergeTitleUnchanged(Unchanged unchanged) {
        unchanged.getClass();
        if (this.titleInfoCase_ != 3 || this.titleInfo_ == Unchanged.getDefaultInstance()) {
            this.titleInfo_ = unchanged;
        } else {
            this.titleInfo_ = Unchanged.newBuilder((Unchanged) this.titleInfo_).mergeFrom(unchanged).buildPartial();
        }
        this.titleInfoCase_ = 3;
    }

    public static C3174b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3174b newBuilder(GroupInfoDelta groupInfoDelta) {
        return DEFAULT_INSTANCE.createBuilder(groupInfoDelta);
    }

    public static GroupInfoDelta parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GroupInfoDelta parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GroupInfoDelta parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GroupInfoDelta parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GroupInfoDelta parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GroupInfoDelta parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GroupInfoDelta parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GroupInfoDelta parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GroupInfoDelta parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GroupInfoDelta parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GroupInfoDelta parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GroupInfoDelta parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GroupInfoDelta> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setAvatar(String str) {
        str.getClass();
        this.avatarInfoCase_ = 2;
        this.avatarInfo_ = str;
    }

    public void setAvatarBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.avatarInfo_ = byteString.toStringUtf8();
        this.avatarInfoCase_ = 2;
    }

    public void setAvatarUnchanged(Unchanged unchanged) {
        unchanged.getClass();
        this.avatarInfo_ = unchanged;
        this.avatarInfoCase_ = 4;
    }

    public void setTitle(String str) {
        str.getClass();
        this.titleInfoCase_ = 1;
        this.titleInfo_ = str;
    }

    public void setTitleBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.titleInfo_ = byteString.toStringUtf8();
        this.titleInfoCase_ = 1;
    }

    public void setTitleUnchanged(Unchanged unchanged) {
        unchanged.getClass();
        this.titleInfo_ = unchanged;
        this.titleInfoCase_ = 3;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004\u0002��\u0001\u0004\u0004������\u0001Ȼ��\u0002Ȼ\u0001\u0003<��\u0004<\u0001", new Object[]{"titleInfo_", "titleInfoCase_", "avatarInfo_", "avatarInfoCase_", Unchanged.class, Unchanged.class});
            case 3:
                return new GroupInfoDelta();
            case 4:
                return new C3174b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GroupInfoDelta.class) {
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

    public String getAvatar() {
        return this.avatarInfoCase_ == 2 ? (String) this.avatarInfo_ : "";
    }

    public ByteString getAvatarBytes() {
        return ByteString.copyFromUtf8(this.avatarInfoCase_ == 2 ? (String) this.avatarInfo_ : "");
    }

    public AvatarInfoCase getAvatarInfoCase() {
        return AvatarInfoCase.forNumber(this.avatarInfoCase_);
    }

    public Unchanged getAvatarUnchanged() {
        return this.avatarInfoCase_ == 4 ? (Unchanged) this.avatarInfo_ : Unchanged.getDefaultInstance();
    }

    public String getTitle() {
        return this.titleInfoCase_ == 1 ? (String) this.titleInfo_ : "";
    }

    public ByteString getTitleBytes() {
        return ByteString.copyFromUtf8(this.titleInfoCase_ == 1 ? (String) this.titleInfo_ : "");
    }

    public TitleInfoCase getTitleInfoCase() {
        return TitleInfoCase.forNumber(this.titleInfoCase_);
    }

    public Unchanged getTitleUnchanged() {
        return this.titleInfoCase_ == 3 ? (Unchanged) this.titleInfo_ : Unchanged.getDefaultInstance();
    }

    public boolean hasAvatar() {
        return this.avatarInfoCase_ == 2;
    }

    public boolean hasAvatarUnchanged() {
        return this.avatarInfoCase_ == 4;
    }

    public boolean hasTitle() {
        boolean z = true;
        if (this.titleInfoCase_ != 1) {
            z = false;
        }
        return z;
    }

    public boolean hasTitleUnchanged() {
        return this.titleInfoCase_ == 3;
    }
}
