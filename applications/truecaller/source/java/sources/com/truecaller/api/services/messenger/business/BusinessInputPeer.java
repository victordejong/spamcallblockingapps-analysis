package com.truecaller.api.services.messenger.business;

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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputPeer.class */
public final class BusinessInputPeer extends GeneratedMessageLite<BusinessInputPeer, C2992b> implements Object {
    private static final BusinessInputPeer DEFAULT_INSTANCE;
    private static volatile Parser<BusinessInputPeer> PARSER;
    public static final int USER_FIELD_NUMBER = 1;
    private User user_;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputPeer$User.class */
    public static final class User extends GeneratedMessageLite<User, C2990a> implements Object {
        private static final User DEFAULT_INSTANCE;
        private static volatile Parser<User> PARSER;
        public static final int PHONE_NUMBER_FIELD_NUMBER = 3;
        private long phoneNumber_;

        /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputPeer$User$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputPeer$User$a.class */
        public static final class C2990a extends GeneratedMessageLite.Builder<User, C2990a> implements Object {
            public C2990a() {
                super(User.DEFAULT_INSTANCE);
            }

            public C2990a(C2991a c2991a) {
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

        public void clearPhoneNumber() {
            this.phoneNumber_ = 0L;
        }

        public static User getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2990a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2990a newBuilder(User user) {
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

        public void setPhoneNumber(long j) {
            this.phoneNumber_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0003\u0003\u0001������\u0003\u0002", new Object[]{"phoneNumber_"});
                case 3:
                    return new User();
                case 4:
                    return new C2990a(null);
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

        public long getPhoneNumber() {
            return this.phoneNumber_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.business.BusinessInputPeer$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/business/BusinessInputPeer$b.class */
    public static final class C2992b extends GeneratedMessageLite.Builder<BusinessInputPeer, C2992b> implements Object {
        public C2992b() {
            super(BusinessInputPeer.DEFAULT_INSTANCE);
        }

        public C2992b(C2991a c2991a) {
            super(BusinessInputPeer.DEFAULT_INSTANCE);
        }
    }

    static {
        BusinessInputPeer businessInputPeer = new BusinessInputPeer();
        DEFAULT_INSTANCE = businessInputPeer;
        GeneratedMessageLite.registerDefaultInstance(BusinessInputPeer.class, businessInputPeer);
    }

    private BusinessInputPeer() {
    }

    public void clearUser() {
        this.user_ = null;
    }

    public static BusinessInputPeer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeUser(User user) {
        user.getClass();
        User user2 = this.user_;
        if (user2 == null || user2 == User.getDefaultInstance()) {
            this.user_ = user;
        } else {
            this.user_ = User.newBuilder(this.user_).mergeFrom(user).buildPartial();
        }
    }

    public static C2992b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2992b newBuilder(BusinessInputPeer businessInputPeer) {
        return DEFAULT_INSTANCE.createBuilder(businessInputPeer);
    }

    public static BusinessInputPeer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessInputPeer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessInputPeer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static BusinessInputPeer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static BusinessInputPeer parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static BusinessInputPeer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static BusinessInputPeer parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static BusinessInputPeer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static BusinessInputPeer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static BusinessInputPeer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static BusinessInputPeer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static BusinessInputPeer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<BusinessInputPeer> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setUser(User user) {
        user.getClass();
        this.user_ = user;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"user_"});
            case 3:
                return new BusinessInputPeer();
            case 4:
                return new C2992b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (BusinessInputPeer.class) {
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

    public User getUser() {
        User user = this.user_;
        User user2 = user;
        if (user == null) {
            user2 = User.getDefaultInstance();
        }
        return user2;
    }

    public boolean hasUser() {
        return this.user_ != null;
    }
}
