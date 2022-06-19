package com.truecaller.api.services.messenger.p138v1.models.input;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Int64Value;
import com.google.protobuf.Int64ValueOrBuilder;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20470b;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer.class */
public final class InputPeer extends GeneratedMessageLite<InputPeer, C3289b> implements AbstractC20470b {
    private static final InputPeer DEFAULT_INSTANCE;
    public static final int GROUP_FIELD_NUMBER = 2;
    private static volatile Parser<InputPeer> PARSER;
    public static final int USER_FIELD_NUMBER = 1;
    private int typeCase_ = 0;
    private Object type_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer$Group */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer$Group.class */
    public static final class Group extends GeneratedMessageLite<Group, C3286a> implements Object {
        private static final Group DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 1;
        private static volatile Parser<Group> PARSER;
        private String id_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer$Group$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a.class */
        public static final class C3286a extends GeneratedMessageLite.Builder<Group, C3286a> implements Object {
            public C3286a() {
                super(Group.DEFAULT_INSTANCE);
            }

            public C3286a(C3288a c3288a) {
                super(Group.DEFAULT_INSTANCE);
            }

            /* renamed from: a */
            public C3286a m35899a(String str) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setId(str);
                return this;
            }
        }

        static {
            Group group = new Group();
            DEFAULT_INSTANCE = group;
            GeneratedMessageLite.registerDefaultInstance(Group.class, group);
        }

        private Group() {
        }

        public static /* synthetic */ void access$1200(Group group, String str) {
            group.setId(str);
        }

        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        public static Group getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3286a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3286a newBuilder(Group group) {
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
                    return new C3286a(null);
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer$TypeCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase.class */
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer$User */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer$User.class */
    public static final class User extends GeneratedMessageLite<User, C3287a> implements Object {
        private static final User DEFAULT_INSTANCE;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int KNOWN_PHONE_NUMBERS_FIELD_NUMBER = 2;
        private static volatile Parser<User> PARSER;
        private String id_ = "";
        private Internal.ProtobufList<Int64Value> knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer$User$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer$User$a.class */
        public static final class C3287a extends GeneratedMessageLite.Builder<User, C3287a> implements Object {
            public C3287a() {
                super(User.DEFAULT_INSTANCE);
            }

            public C3287a(C3288a c3288a) {
                super(User.DEFAULT_INSTANCE);
            }

            /* renamed from: a */
            public C3287a m35898a(String str) {
                copyOnWrite();
                ((GeneratedMessageLite.Builder) this).instance.setId(str);
                return this;
            }
        }

        static {
            User user = new User();
            DEFAULT_INSTANCE = user;
            GeneratedMessageLite.registerDefaultInstance(User.class, user);
        }

        private User() {
        }

        public static /* synthetic */ void access$100(User user, String str) {
            user.setId(str);
        }

        public void addAllKnownPhoneNumbers(Iterable<? extends Int64Value> iterable) {
            ensureKnownPhoneNumbersIsMutable();
            AbstractMessageLite.addAll(iterable, this.knownPhoneNumbers_);
        }

        public void addKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(i, int64Value);
        }

        public void addKnownPhoneNumbers(Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(int64Value);
        }

        public void clearId() {
            this.id_ = getDefaultInstance().getId();
        }

        public void clearKnownPhoneNumbers() {
            this.knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureKnownPhoneNumbersIsMutable() {
            Internal.ProtobufList<Int64Value> protobufList = this.knownPhoneNumbers_;
            if (!protobufList.isModifiable()) {
                this.knownPhoneNumbers_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3287a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3287a newBuilder(User user) {
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

        public void removeKnownPhoneNumbers(int i) {
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.remove(i);
        }

        public void setId(String str) {
            str.getClass();
            this.id_ = str;
        }

        public void setIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.id_ = byteString.toStringUtf8();
        }

        public void setKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.set(i, int64Value);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"id_", "knownPhoneNumbers_", Int64Value.class});
                case 3:
                    return new User();
                case 4:
                    return new C3287a(null);
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

        public Int64Value getKnownPhoneNumbers(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public int getKnownPhoneNumbersCount() {
            return this.knownPhoneNumbers_.size();
        }

        public List<Int64Value> getKnownPhoneNumbersList() {
            return this.knownPhoneNumbers_;
        }

        public Int64ValueOrBuilder getKnownPhoneNumbersOrBuilder(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public List<? extends Int64ValueOrBuilder> getKnownPhoneNumbersOrBuilderList() {
            return this.knownPhoneNumbers_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputPeer$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputPeer$b.class */
    public static final class C3289b extends GeneratedMessageLite.Builder<InputPeer, C3289b> implements AbstractC20470b {
        public C3289b() {
            super(InputPeer.DEFAULT_INSTANCE);
        }

        public C3289b(C3288a c3288a) {
            super(InputPeer.DEFAULT_INSTANCE);
        }

        /* renamed from: a */
        public C3289b m35897a(Group.C3286a c3286a) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setGroup(c3286a.build());
            return this;
        }

        /* renamed from: b */
        public C3289b m35896b(User user) {
            copyOnWrite();
            ((GeneratedMessageLite.Builder) this).instance.setUser(user);
            return this;
        }

        @Override // p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20470b
        public TypeCase getTypeCase() {
            return ((GeneratedMessageLite.Builder) this).instance.getTypeCase();
        }

        @Override // p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20470b
        public User getUser() {
            return ((GeneratedMessageLite.Builder) this).instance.getUser();
        }
    }

    static {
        InputPeer inputPeer = new InputPeer();
        DEFAULT_INSTANCE = inputPeer;
        GeneratedMessageLite.registerDefaultInstance(InputPeer.class, inputPeer);
    }

    private InputPeer() {
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

    public static InputPeer getDefaultInstance() {
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

    public static C3289b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3289b newBuilder(InputPeer inputPeer) {
        return DEFAULT_INSTANCE.createBuilder(inputPeer);
    }

    public static InputPeer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputPeer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputPeer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputPeer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputPeer parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputPeer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputPeer parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputPeer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputPeer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputPeer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputPeer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputPeer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputPeer> parser() {
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
                return new InputPeer();
            case 4:
                return new C3289b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputPeer.class) {
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

    @Override // p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20470b
    public TypeCase getTypeCase() {
        return TypeCase.forNumber(this.typeCase_);
    }

    @Override // p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20470b
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
