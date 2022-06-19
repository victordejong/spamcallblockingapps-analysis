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
/* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationScope */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationScope.class */
public final class NotificationScope extends GeneratedMessageLite<NotificationScope, C3211b> implements Object {
    private static final NotificationScope DEFAULT_INSTANCE;
    public static final int GROUP_ID_FIELD_NUMBER = 2;
    public static final int IM_ID_FIELD_NUMBER = 3;
    private static volatile Parser<NotificationScope> PARSER;
    public static final int PHONE_NUMBER_FIELD_NUMBER = 1;
    private int valueCase_ = 0;
    private Object value_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationScope$ValueCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationScope$ValueCase.class */
    public enum ValueCase {
        PHONE_NUMBER(1),
        GROUP_ID(2),
        IM_ID(3),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i) {
            this.value = i;
        }

        public static ValueCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return PHONE_NUMBER;
                }
                if (i == 2) {
                    return GROUP_ID;
                }
                if (i == 3) {
                    return IM_ID;
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationScope$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationScope$b.class */
    public static final class C3211b extends GeneratedMessageLite.Builder<NotificationScope, C3211b> implements Object {
        public C3211b() {
            super(NotificationScope.DEFAULT_INSTANCE);
        }

        public C3211b(C3210a c3210a) {
            super(NotificationScope.DEFAULT_INSTANCE);
        }
    }

    static {
        NotificationScope notificationScope = new NotificationScope();
        DEFAULT_INSTANCE = notificationScope;
        GeneratedMessageLite.registerDefaultInstance(NotificationScope.class, notificationScope);
    }

    private NotificationScope() {
    }

    public void clearGroupId() {
        if (this.valueCase_ == 2) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearImId() {
        if (this.valueCase_ == 3) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearPhoneNumber() {
        if (this.valueCase_ == 1) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearValue() {
        this.valueCase_ = 0;
        this.value_ = null;
    }

    public static NotificationScope getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergePhoneNumber(Int64Value int64Value) {
        int64Value.getClass();
        if (this.valueCase_ != 1 || this.value_ == Int64Value.getDefaultInstance()) {
            this.value_ = int64Value;
        } else {
            this.value_ = Int64Value.newBuilder((Int64Value) this.value_).mergeFrom(int64Value).buildPartial();
        }
        this.valueCase_ = 1;
    }

    public static C3211b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3211b newBuilder(NotificationScope notificationScope) {
        return DEFAULT_INSTANCE.createBuilder(notificationScope);
    }

    public static NotificationScope parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NotificationScope parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NotificationScope parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static NotificationScope parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static NotificationScope parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static NotificationScope parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static NotificationScope parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NotificationScope parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NotificationScope parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static NotificationScope parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static NotificationScope parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static NotificationScope parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<NotificationScope> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setGroupId(String str) {
        str.getClass();
        this.valueCase_ = 2;
        this.value_ = str;
    }

    public void setGroupIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.value_ = byteString.toStringUtf8();
        this.valueCase_ = 2;
    }

    public void setImId(String str) {
        str.getClass();
        this.valueCase_ = 3;
        this.value_ = str;
    }

    public void setImIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.value_ = byteString.toStringUtf8();
        this.valueCase_ = 3;
    }

    public void setPhoneNumber(Int64Value int64Value) {
        int64Value.getClass();
        this.value_ = int64Value;
        this.valueCase_ = 1;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003\u0001��\u0001\u0003\u0003������\u0001<��\u0002Ȼ��\u0003Ȼ��", new Object[]{"value_", "valueCase_", Int64Value.class});
            case 3:
                return new NotificationScope();
            case 4:
                return new C3211b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (NotificationScope.class) {
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

    public String getGroupId() {
        return this.valueCase_ == 2 ? (String) this.value_ : "";
    }

    public ByteString getGroupIdBytes() {
        return ByteString.copyFromUtf8(this.valueCase_ == 2 ? (String) this.value_ : "");
    }

    public String getImId() {
        return this.valueCase_ == 3 ? (String) this.value_ : "";
    }

    public ByteString getImIdBytes() {
        return ByteString.copyFromUtf8(this.valueCase_ == 3 ? (String) this.value_ : "");
    }

    public Int64Value getPhoneNumber() {
        return this.valueCase_ == 1 ? (Int64Value) this.value_ : Int64Value.getDefaultInstance();
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasGroupId() {
        return this.valueCase_ == 2;
    }

    public boolean hasImId() {
        return this.valueCase_ == 3;
    }

    public boolean hasPhoneNumber() {
        boolean z = true;
        if (this.valueCase_ != 1) {
            z = false;
        }
        return z;
    }
}
