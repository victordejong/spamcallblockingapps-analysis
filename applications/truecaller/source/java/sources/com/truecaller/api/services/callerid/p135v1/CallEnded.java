package com.truecaller.api.services.callerid.p135v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.callerid.p135v1.model.Phone;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.callerid.v1.CallEnded */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallEnded.class */
public final class CallEnded extends GeneratedMessageLite<CallEnded, C2900b> implements Object {
    private static final CallEnded DEFAULT_INSTANCE;
    private static volatile Parser<CallEnded> PARSER;

    /* renamed from: com.truecaller.api.services.callerid.v1.CallEnded$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallEnded$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2898a> implements Object {
        public static final int BUSINESSCARD_FIELD_NUMBER = 2;
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int PHONE_FIELD_NUMBER = 1;
        private SignedBusinessCard businessCard_;
        private Phone phone_;

        /* renamed from: com.truecaller.api.services.callerid.v1.CallEnded$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallEnded$Request$a.class */
        public static final class C2898a extends GeneratedMessageLite.Builder<Request, C2898a> implements Object {
            public C2898a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2898a(C2899a c2899a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void clearBusinessCard() {
            this.businessCard_ = null;
        }

        public void clearPhone() {
            this.phone_ = null;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeBusinessCard(SignedBusinessCard signedBusinessCard) {
            signedBusinessCard.getClass();
            SignedBusinessCard signedBusinessCard2 = this.businessCard_;
            if (signedBusinessCard2 == null || signedBusinessCard2 == SignedBusinessCard.getDefaultInstance()) {
                this.businessCard_ = signedBusinessCard;
            } else {
                this.businessCard_ = SignedBusinessCard.newBuilder(this.businessCard_).mergeFrom(signedBusinessCard).buildPartial();
            }
        }

        public void mergePhone(Phone phone) {
            phone.getClass();
            Phone phone2 = this.phone_;
            if (phone2 == null || phone2 == Phone.getDefaultInstance()) {
                this.phone_ = phone;
            } else {
                this.phone_ = Phone.newBuilder(this.phone_).mergeFrom(phone).buildPartial();
            }
        }

        public static C2898a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2898a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setBusinessCard(SignedBusinessCard signedBusinessCard) {
            signedBusinessCard.getClass();
            this.businessCard_ = signedBusinessCard;
        }

        public void setPhone(Phone phone) {
            phone.getClass();
            this.phone_ = phone;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"phone_", "businessCard_"});
                case 3:
                    return new Request();
                case 4:
                    return new C2898a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
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

        public SignedBusinessCard getBusinessCard() {
            SignedBusinessCard signedBusinessCard = this.businessCard_;
            SignedBusinessCard signedBusinessCard2 = signedBusinessCard;
            if (signedBusinessCard == null) {
                signedBusinessCard2 = SignedBusinessCard.getDefaultInstance();
            }
            return signedBusinessCard2;
        }

        public Phone getPhone() {
            Phone phone = this.phone_;
            Phone phone2 = phone;
            if (phone == null) {
                phone2 = Phone.getDefaultInstance();
            }
            return phone2;
        }

        public boolean hasBusinessCard() {
            return this.businessCard_ != null;
        }

        public boolean hasPhone() {
            return this.phone_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.CallEnded$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallEnded$b.class */
    public static final class C2900b extends GeneratedMessageLite.Builder<CallEnded, C2900b> implements Object {
        public C2900b() {
            super(CallEnded.DEFAULT_INSTANCE);
        }

        public C2900b(C2899a c2899a) {
            super(CallEnded.DEFAULT_INSTANCE);
        }
    }

    static {
        CallEnded callEnded = new CallEnded();
        DEFAULT_INSTANCE = callEnded;
        GeneratedMessageLite.registerDefaultInstance(CallEnded.class, callEnded);
    }

    private CallEnded() {
    }

    public static CallEnded getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2900b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2900b newBuilder(CallEnded callEnded) {
        return DEFAULT_INSTANCE.createBuilder(callEnded);
    }

    public static CallEnded parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallEnded parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallEnded parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CallEnded parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CallEnded parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CallEnded parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CallEnded parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallEnded parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallEnded parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CallEnded parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CallEnded parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CallEnded parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CallEnded> parser() {
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
                return new CallEnded();
            case 4:
                return new C2900b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CallEnded.class) {
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
