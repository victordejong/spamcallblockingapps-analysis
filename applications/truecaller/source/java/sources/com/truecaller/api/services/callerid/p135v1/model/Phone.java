package com.truecaller.api.services.callerid.p135v1.model;

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
/* renamed from: com.truecaller.api.services.callerid.v1.model.Phone */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Phone.class */
public final class Phone extends GeneratedMessageLite<Phone, C2926b> implements Object {
    private static final Phone DEFAULT_INSTANCE;
    public static final int NONNORMALIZEDPHONE_FIELD_NUMBER = 2;
    private static volatile Parser<Phone> PARSER;
    public static final int PHONE_FIELD_NUMBER = 1;
    private int valueCase_ = 0;
    private Object value_;

    /* renamed from: com.truecaller.api.services.callerid.v1.model.Phone$NonNormalizedPhone */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone.class */
    public static final class NonNormalizedPhone extends GeneratedMessageLite<NonNormalizedPhone, C2924a> implements Object {
        public static final int COUNTRYCODE_FIELD_NUMBER = 2;
        private static final NonNormalizedPhone DEFAULT_INSTANCE;
        private static volatile Parser<NonNormalizedPhone> PARSER;
        public static final int PHONE_FIELD_NUMBER = 1;
        private String phone_ = "";
        private String countryCode_ = "";

        /* renamed from: com.truecaller.api.services.callerid.v1.model.Phone$NonNormalizedPhone$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Phone$NonNormalizedPhone$a.class */
        public static final class C2924a extends GeneratedMessageLite.Builder<NonNormalizedPhone, C2924a> implements Object {
            public C2924a() {
                super(NonNormalizedPhone.DEFAULT_INSTANCE);
            }

            public C2924a(C2925a c2925a) {
                super(NonNormalizedPhone.DEFAULT_INSTANCE);
            }
        }

        static {
            NonNormalizedPhone nonNormalizedPhone = new NonNormalizedPhone();
            DEFAULT_INSTANCE = nonNormalizedPhone;
            GeneratedMessageLite.registerDefaultInstance(NonNormalizedPhone.class, nonNormalizedPhone);
        }

        private NonNormalizedPhone() {
        }

        public void clearCountryCode() {
            this.countryCode_ = getDefaultInstance().getCountryCode();
        }

        public void clearPhone() {
            this.phone_ = getDefaultInstance().getPhone();
        }

        public static NonNormalizedPhone getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C2924a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2924a newBuilder(NonNormalizedPhone nonNormalizedPhone) {
            return DEFAULT_INSTANCE.createBuilder(nonNormalizedPhone);
        }

        public static NonNormalizedPhone parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static NonNormalizedPhone parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static NonNormalizedPhone parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static NonNormalizedPhone parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static NonNormalizedPhone parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static NonNormalizedPhone parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static NonNormalizedPhone parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static NonNormalizedPhone parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static NonNormalizedPhone parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static NonNormalizedPhone parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static NonNormalizedPhone parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static NonNormalizedPhone parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<NonNormalizedPhone> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setCountryCode(String str) {
            str.getClass();
            this.countryCode_ = str;
        }

        public void setCountryCodeBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.countryCode_ = byteString.toStringUtf8();
        }

        public void setPhone(String str) {
            str.getClass();
            this.phone_ = str;
        }

        public void setPhoneBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.phone_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002Ȉ", new Object[]{"phone_", "countryCode_"});
                case 3:
                    return new NonNormalizedPhone();
                case 4:
                    return new C2924a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (NonNormalizedPhone.class) {
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

        public String getCountryCode() {
            return this.countryCode_;
        }

        public ByteString getCountryCodeBytes() {
            return ByteString.copyFromUtf8(this.countryCode_);
        }

        public String getPhone() {
            return this.phone_;
        }

        public ByteString getPhoneBytes() {
            return ByteString.copyFromUtf8(this.phone_);
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.model.Phone$ValueCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Phone$ValueCase.class */
    public enum ValueCase {
        PHONE(1),
        NONNORMALIZEDPHONE(2),
        VALUE_NOT_SET(0);
        
        private final int value;

        ValueCase(int i) {
            this.value = i;
        }

        public static ValueCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return PHONE;
                }
                if (i == 2) {
                    return NONNORMALIZEDPHONE;
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

    /* renamed from: com.truecaller.api.services.callerid.v1.model.Phone$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/Phone$b.class */
    public static final class C2926b extends GeneratedMessageLite.Builder<Phone, C2926b> implements Object {
        public C2926b() {
            super(Phone.DEFAULT_INSTANCE);
        }

        public C2926b(C2925a c2925a) {
            super(Phone.DEFAULT_INSTANCE);
        }
    }

    static {
        Phone phone = new Phone();
        DEFAULT_INSTANCE = phone;
        GeneratedMessageLite.registerDefaultInstance(Phone.class, phone);
    }

    private Phone() {
    }

    public static /* synthetic */ void access$1000(Phone phone, long j) {
        phone.setPhone(j);
    }

    public void clearNonNormalizedPhone() {
        if (this.valueCase_ == 2) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearPhone() {
        if (this.valueCase_ == 1) {
            this.valueCase_ = 0;
            this.value_ = null;
        }
    }

    public void clearValue() {
        this.valueCase_ = 0;
        this.value_ = null;
    }

    public static Phone getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeNonNormalizedPhone(NonNormalizedPhone nonNormalizedPhone) {
        nonNormalizedPhone.getClass();
        if (this.valueCase_ != 2 || this.value_ == NonNormalizedPhone.getDefaultInstance()) {
            this.value_ = nonNormalizedPhone;
        } else {
            this.value_ = NonNormalizedPhone.newBuilder((NonNormalizedPhone) this.value_).mergeFrom(nonNormalizedPhone).buildPartial();
        }
        this.valueCase_ = 2;
    }

    public static C2926b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2926b newBuilder(Phone phone) {
        return DEFAULT_INSTANCE.createBuilder(phone);
    }

    public static Phone parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Phone parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Phone parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Phone parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Phone parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Phone parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Phone parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Phone parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Phone parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Phone parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Phone parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Phone parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Phone> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setNonNormalizedPhone(NonNormalizedPhone nonNormalizedPhone) {
        nonNormalizedPhone.getClass();
        this.value_ = nonNormalizedPhone;
        this.valueCase_ = 2;
    }

    public void setPhone(long j) {
        this.valueCase_ = 1;
        this.value_ = Long.valueOf(j);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002\u0001��\u0001\u0002\u0002������\u00015��\u0002<��", new Object[]{"value_", "valueCase_", NonNormalizedPhone.class});
            case 3:
                return new Phone();
            case 4:
                return new C2926b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Phone.class) {
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

    public NonNormalizedPhone getNonNormalizedPhone() {
        return this.valueCase_ == 2 ? (NonNormalizedPhone) this.value_ : NonNormalizedPhone.getDefaultInstance();
    }

    public long getPhone() {
        if (this.valueCase_ == 1) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public ValueCase getValueCase() {
        return ValueCase.forNumber(this.valueCase_);
    }

    public boolean hasNonNormalizedPhone() {
        return this.valueCase_ == 2;
    }

    public boolean hasPhone() {
        boolean z = true;
        if (this.valueCase_ != 1) {
            z = false;
        }
        return z;
    }
}
