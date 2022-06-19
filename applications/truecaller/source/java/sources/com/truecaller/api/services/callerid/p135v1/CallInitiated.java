package com.truecaller.api.services.callerid.p135v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.callerid.p135v1.model.CallContext;
import com.truecaller.api.services.callerid.p135v1.model.Phone;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import com.truecaller.api.services.callerid.p135v1.model.VideoCallerId;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.callerid.v1.CallInitiated */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallInitiated.class */
public final class CallInitiated extends GeneratedMessageLite<CallInitiated, C2903b> implements Object {
    private static final CallInitiated DEFAULT_INSTANCE;
    private static volatile Parser<CallInitiated> PARSER;

    /* renamed from: com.truecaller.api.services.callerid.v1.CallInitiated$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallInitiated$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C2901a> implements Object {
        public static final int BUSINESSCARD_FIELD_NUMBER = 2;
        public static final int CALLCONTEXT_FIELD_NUMBER = 3;
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int PHONE_FIELD_NUMBER = 1;
        public static final int VIDEOCALLERID_FIELD_NUMBER = 4;
        private SignedBusinessCard businessCard_;
        private CallContext callContext_;
        private Phone phone_;
        private VideoCallerId videoCallerId_;

        /* renamed from: com.truecaller.api.services.callerid.v1.CallInitiated$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallInitiated$Request$a.class */
        public static final class C2901a extends GeneratedMessageLite.Builder<Request, C2901a> implements Object {
            public C2901a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C2901a(C2902a c2902a) {
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

        public void clearCallContext() {
            this.callContext_ = null;
        }

        public void clearPhone() {
            this.phone_ = null;
        }

        public void clearVideoCallerId() {
            this.videoCallerId_ = null;
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

        public void mergeCallContext(CallContext callContext) {
            callContext.getClass();
            CallContext callContext2 = this.callContext_;
            if (callContext2 == null || callContext2 == CallContext.getDefaultInstance()) {
                this.callContext_ = callContext;
            } else {
                this.callContext_ = CallContext.newBuilder(this.callContext_).mergeFrom(callContext).buildPartial();
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

        public void mergeVideoCallerId(VideoCallerId videoCallerId) {
            videoCallerId.getClass();
            VideoCallerId videoCallerId2 = this.videoCallerId_;
            if (videoCallerId2 == null || videoCallerId2 == VideoCallerId.getDefaultInstance()) {
                this.videoCallerId_ = videoCallerId;
            } else {
                this.videoCallerId_ = VideoCallerId.newBuilder(this.videoCallerId_).mergeFrom(videoCallerId).buildPartial();
            }
        }

        public static C2901a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C2901a newBuilder(Request request) {
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

        public void setCallContext(CallContext callContext) {
            callContext.getClass();
            this.callContext_ = callContext;
        }

        public void setPhone(Phone phone) {
            phone.getClass();
            this.phone_ = phone;
        }

        public void setVideoCallerId(VideoCallerId videoCallerId) {
            videoCallerId.getClass();
            this.videoCallerId_ = videoCallerId;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\t\u0003\t\u0004\t", new Object[]{"phone_", "businessCard_", "callContext_", "videoCallerId_"});
                case 3:
                    return new Request();
                case 4:
                    return new C2901a(null);
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

        public CallContext getCallContext() {
            CallContext callContext = this.callContext_;
            CallContext callContext2 = callContext;
            if (callContext == null) {
                callContext2 = CallContext.getDefaultInstance();
            }
            return callContext2;
        }

        public Phone getPhone() {
            Phone phone = this.phone_;
            Phone phone2 = phone;
            if (phone == null) {
                phone2 = Phone.getDefaultInstance();
            }
            return phone2;
        }

        public VideoCallerId getVideoCallerId() {
            VideoCallerId videoCallerId = this.videoCallerId_;
            VideoCallerId videoCallerId2 = videoCallerId;
            if (videoCallerId == null) {
                videoCallerId2 = VideoCallerId.getDefaultInstance();
            }
            return videoCallerId2;
        }

        public boolean hasBusinessCard() {
            return this.businessCard_ != null;
        }

        public boolean hasCallContext() {
            return this.callContext_ != null;
        }

        public boolean hasPhone() {
            return this.phone_ != null;
        }

        public boolean hasVideoCallerId() {
            return this.videoCallerId_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.callerid.v1.CallInitiated$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/CallInitiated$b.class */
    public static final class C2903b extends GeneratedMessageLite.Builder<CallInitiated, C2903b> implements Object {
        public C2903b() {
            super(CallInitiated.DEFAULT_INSTANCE);
        }

        public C2903b(C2902a c2902a) {
            super(CallInitiated.DEFAULT_INSTANCE);
        }
    }

    static {
        CallInitiated callInitiated = new CallInitiated();
        DEFAULT_INSTANCE = callInitiated;
        GeneratedMessageLite.registerDefaultInstance(CallInitiated.class, callInitiated);
    }

    private CallInitiated() {
    }

    public static CallInitiated getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2903b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2903b newBuilder(CallInitiated callInitiated) {
        return DEFAULT_INSTANCE.createBuilder(callInitiated);
    }

    public static CallInitiated parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallInitiated parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallInitiated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CallInitiated parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CallInitiated parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CallInitiated parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CallInitiated parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CallInitiated parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CallInitiated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CallInitiated parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CallInitiated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CallInitiated parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CallInitiated> parser() {
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
                return new CallInitiated();
            case 4:
                return new C2903b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CallInitiated.class) {
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
