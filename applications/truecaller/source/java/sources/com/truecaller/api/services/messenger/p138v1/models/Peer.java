package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Int64Value;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20467f;
/* renamed from: com.truecaller.api.services.messenger.v1.models.Peer */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer.class */
public final class Peer extends GeneratedMessageLite<Peer, C3226b> implements AbstractC20467f {
    private static final Peer DEFAULT_INSTANCE;
    public static final int GROUP_FIELD_NUMBER = 2;
    private static volatile Parser<Peer> PARSER;
    public static final int USER_FIELD_NUMBER = 1;
    private int typeCase_ = 0;
    private Object type_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Peer$Group */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer$Group.class */
    public static final class Group extends GeneratedMessageLite<Group, C3223a> implements Object {
        private static final Group DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<Group> PARSER;
        private String id_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.Peer$Group$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer$Group$a.class */
        public static final class C3223a extends GeneratedMessageLite.Builder<Group, C3223a> implements Object {
            public C3223a() {
                super(Group.DEFAULT_INSTANCE);
            }

            public C3223a(C3225a c3225a) {
                super(Group.DEFAULT_INSTANCE);
            }
        }

        static {
            Group group = new Group();
            DEFAULT_INSTANCE = group;
            GeneratedMessageLite.registerDefaultInstance(Group.class, group);
        }

        private Group() {
        }

        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        public static Group getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3223a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3223a newBuilder(Group group) {
            return DEFAULT_INSTANCE.createBuilder(group);
        }

        public static Group parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Group parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Group parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Group parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Group parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Group parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Group parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Group parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Group parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Group parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Group parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Group parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Group> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setId(String str) {
            str.getClass();
            this.id_ = str;
        }

        public void setIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.id_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"id_"});
                case 3:
                    return new Group();
                case 4:
                    return new C3223a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Group.class) {
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

        public String getId() {
            return this.id_;
        }

        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Peer$TypeCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer$TypeCase.class */
    public enum TypeCase {
        USER(1),
        GROUP(2),
        TYPE_NOT_SET(0);
        
        private final int value;

        TypeCase(int i) {
            this.value = i;
        }

        public static TypeCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return USER;
                }
                if (i == 2) {
                    return GROUP;
                }
                return null;
            }
            return TYPE_NOT_SET;
        }

        @Deprecated
        public static TypeCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Peer$User */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer$User.class */
    public static final class User extends GeneratedMessageLite<User, C3224a> implements Object {
        private static final User DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<User> PARSER;
        public static final int PHONE_NUMBER_FIELD_NUMBER = 2;
        private String id_ = "";
        private Int64Value phoneNumber_;

        /* renamed from: com.truecaller.api.services.messenger.v1.models.Peer$User$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer$User$a.class */
        public static final class C3224a extends GeneratedMessageLite.Builder<User, C3224a> implements Object {
            public C3224a() {
                super(User.DEFAULT_INSTANCE);
            }

            public C3224a(C3225a c3225a) {
                super(User.DEFAULT_INSTANCE);
            }
        }

        static {
            User user = new User();
            DEFAULT_INSTANCE = user;
            GeneratedMessageLite.registerDefaultInstance(User.class, user);
        }

        private User() {
        }

        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        public void clearPhoneNumber() {
            this.phoneNumber_ = null;
        }

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergePhoneNumber(Int64Value int64Value) {
            int64Value.getClass();
            Int64Value int64Value2 = this.phoneNumber_;
            if (int64Value2 == null || int64Value2 == Int64Value.getDefaultInstance()) {
                this.phoneNumber_ = int64Value;
            } else {
                this.phoneNumber_ = Int64Value.newBuilder(this.phoneNumber_).mergeFrom(int64Value).buildPartial();
            }
        }

        public static C3224a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3224a newBuilder(User user) {
            return DEFAULT_INSTANCE.createBuilder(user);
        }

        public static User parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static User parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static User parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static User parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static User parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static User parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static User parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static User parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static User parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static User parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static User parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static User parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<User> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setId(String str) {
            str.getClass();
            this.id_ = str;
        }

        public void setIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.id_ = byteString.toStringUtf8();
        }

        public void setPhoneNumber(Int64Value int64Value) {
            int64Value.getClass();
            this.phoneNumber_ = int64Value;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"id_", "phoneNumber_"});
                case 3:
                    return new User();
                case 4:
                    return new C3224a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (User.class) {
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

        public String getId() {
            return this.id_;
        }

        public ByteString getIdBytes() {
            return ByteString.copyFromUtf8(this.id_);
        }

        public Int64Value getPhoneNumber() {
            Int64Value int64Value = this.phoneNumber_;
            Int64Value int64Value2 = int64Value;
            if (int64Value == null) {
                int64Value2 = Int64Value.getDefaultInstance();
            }
            return int64Value2;
        }

        public boolean hasPhoneNumber() {
            return this.phoneNumber_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.Peer$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/Peer$b.class */
    public static final class C3226b extends GeneratedMessageLite.Builder<Peer, C3226b> implements AbstractC20467f {
        public C3226b() {
            super(Peer.DEFAULT_INSTANCE);
        }

        public C3226b(C3225a c3225a) {
            super(Peer.DEFAULT_INSTANCE);
        }
    }

    static {
        Peer peer = new Peer();
        DEFAULT_INSTANCE = peer;
        GeneratedMessageLite.registerDefaultInstance(Peer.class, peer);
    }

    private Peer() {
    }

    public void clearGroup() {
        if (this.typeCase_ == 2) {
            this.typeCase_ = 0;
            this.type_ = null;
        }
    }

    public void clearType() {
        this.typeCase_ = 0;
        this.type_ = null;
    }

    public void clearUser() {
        if (this.typeCase_ == 1) {
            this.typeCase_ = 0;
            this.type_ = null;
        }
    }

    public static Peer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeGroup(Group group) {
        group.getClass();
        if (this.typeCase_ != 2 || this.type_ == Group.getDefaultInstance()) {
            this.type_ = group;
        } else {
            this.type_ = Group.newBuilder((Group) this.type_).mergeFrom(group).buildPartial();
        }
        this.typeCase_ = 2;
    }

    public void mergeUser(User user) {
        user.getClass();
        if (this.typeCase_ != 1 || this.type_ == User.getDefaultInstance()) {
            this.type_ = user;
        } else {
            this.type_ = User.newBuilder((User) this.type_).mergeFrom(user).buildPartial();
        }
        this.typeCase_ = 1;
    }

    public static C3226b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3226b newBuilder(Peer peer) {
        return DEFAULT_INSTANCE.createBuilder(peer);
    }

    public static Peer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Peer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Peer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Peer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Peer parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Peer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Peer parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Peer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Peer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Peer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Peer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Peer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Peer> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setGroup(Group group) {
        group.getClass();
        this.type_ = group;
        this.typeCase_ = 2;
    }

    public void setUser(User user) {
        user.getClass();
        this.type_ = user;
        this.typeCase_ = 1;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002\u0001��\u0001\u0002\u0002������\u0001<��\u0002<��", new Object[]{"type_", "typeCase_", User.class, Group.class});
            case 3:
                return new Peer();
            case 4:
                return new C3226b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Peer.class) {
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

    public Group getGroup() {
        return this.typeCase_ == 2 ? (Group) this.type_ : Group.getDefaultInstance();
    }

    public TypeCase getTypeCase() {
        return TypeCase.forNumber(this.typeCase_);
    }

    public User getUser() {
        return this.typeCase_ == 1 ? (User) this.type_ : User.getDefaultInstance();
    }

    public boolean hasGroup() {
        return this.typeCase_ == 2;
    }

    public boolean hasUser() {
        boolean z = true;
        if (this.typeCase_ != 1) {
            z = false;
        }
        return z;
    }
}
