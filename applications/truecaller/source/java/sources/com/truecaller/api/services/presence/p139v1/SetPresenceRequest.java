package com.truecaller.api.services.presence.p139v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.google.protobuf.StringValue;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.api.services.presence.p139v1.models.CallContext;
import com.truecaller.api.services.presence.p139v1.models.CovidMedicalSupply;
import com.truecaller.api.services.presence.p139v1.models.Cred;
import com.truecaller.api.services.presence.p139v1.models.Flash;
import com.truecaller.api.services.presence.p139v1.models.InstantMessaging;
import com.truecaller.api.services.presence.p139v1.models.Payment;
import com.truecaller.api.services.presence.p139v1.models.Premium;
import com.truecaller.api.services.presence.p139v1.models.VideoCallerID;
import com.truecaller.api.services.presence.p139v1.models.Voip;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.presence.v1.SetPresenceRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/SetPresenceRequest.class */
public final class SetPresenceRequest extends GeneratedMessageLite<SetPresenceRequest, C3318b> implements Object {
    public static final int AVAILABILITY_FIELD_NUMBER = 1;
    public static final int CALLCONTEXT_FIELD_NUMBER = 9;
    public static final int COVID_MEDICAL_SUPPLY_FIELD_NUMBER = 11;
    public static final int CRED_FIELD_NUMBER = 10;
    private static final SetPresenceRequest DEFAULT_INSTANCE;
    public static final int FLASH_FIELD_NUMBER = 2;
    public static final int IM_FIELD_NUMBER = 4;
    private static volatile Parser<SetPresenceRequest> PARSER;
    public static final int PAYMENT_FIELD_NUMBER = 8;
    public static final int PREMIUM_FIELD_NUMBER = 7;
    public static final int REFERRAL_FIELD_NUMBER = 3;
    public static final int UPDATELASTSEEN_FIELD_NUMBER = 5;
    public static final int VIDEO_CALLER_ID_FIELD_NUMBER = 12;
    public static final int VOIP_FIELD_NUMBER = 6;
    private Availability availability_;
    private CallContext callContext_;
    private CovidMedicalSupply covidMedicalSupply_;
    private Cred cred_;
    private Flash flash_;
    private InstantMessaging im_;
    private Payment payment_;
    private Premium premium_;
    private StringValue referral_;
    private boolean updateLastSeen_;
    private VideoCallerID videoCallerId_;
    private Voip voip_;

    /* renamed from: com.truecaller.api.services.presence.v1.SetPresenceRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/SetPresenceRequest$b.class */
    public static final class C3318b extends GeneratedMessageLite.Builder<SetPresenceRequest, C3318b> implements Object {
        public C3318b() {
            super(SetPresenceRequest.DEFAULT_INSTANCE);
        }

        public C3318b(C3317a c3317a) {
            super(SetPresenceRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        SetPresenceRequest setPresenceRequest = new SetPresenceRequest();
        DEFAULT_INSTANCE = setPresenceRequest;
        GeneratedMessageLite.registerDefaultInstance(SetPresenceRequest.class, setPresenceRequest);
    }

    private SetPresenceRequest() {
    }

    public void clearAvailability() {
        this.availability_ = null;
    }

    public void clearCallContext() {
        this.callContext_ = null;
    }

    public void clearCovidMedicalSupply() {
        this.covidMedicalSupply_ = null;
    }

    public void clearCred() {
        this.cred_ = null;
    }

    public void clearFlash() {
        this.flash_ = null;
    }

    public void clearIm() {
        this.im_ = null;
    }

    public void clearPayment() {
        this.payment_ = null;
    }

    public void clearPremium() {
        this.premium_ = null;
    }

    public void clearReferral() {
        this.referral_ = null;
    }

    public void clearUpdateLastSeen() {
        this.updateLastSeen_ = false;
    }

    public void clearVideoCallerId() {
        this.videoCallerId_ = null;
    }

    public void clearVoip() {
        this.voip_ = null;
    }

    public static SetPresenceRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeAvailability(Availability availability) {
        availability.getClass();
        Availability availability2 = this.availability_;
        if (availability2 == null || availability2 == Availability.getDefaultInstance()) {
            this.availability_ = availability;
        } else {
            this.availability_ = Availability.newBuilder(this.availability_).mergeFrom(availability).buildPartial();
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

    public void mergeCovidMedicalSupply(CovidMedicalSupply covidMedicalSupply) {
        covidMedicalSupply.getClass();
        CovidMedicalSupply covidMedicalSupply2 = this.covidMedicalSupply_;
        if (covidMedicalSupply2 == null || covidMedicalSupply2 == CovidMedicalSupply.getDefaultInstance()) {
            this.covidMedicalSupply_ = covidMedicalSupply;
        } else {
            this.covidMedicalSupply_ = CovidMedicalSupply.newBuilder(this.covidMedicalSupply_).mergeFrom(covidMedicalSupply).buildPartial();
        }
    }

    public void mergeCred(Cred cred) {
        cred.getClass();
        Cred cred2 = this.cred_;
        if (cred2 == null || cred2 == Cred.getDefaultInstance()) {
            this.cred_ = cred;
        } else {
            this.cred_ = Cred.newBuilder(this.cred_).mergeFrom(cred).buildPartial();
        }
    }

    public void mergeFlash(Flash flash) {
        flash.getClass();
        Flash flash2 = this.flash_;
        if (flash2 == null || flash2 == Flash.getDefaultInstance()) {
            this.flash_ = flash;
        } else {
            this.flash_ = Flash.newBuilder(this.flash_).mergeFrom(flash).buildPartial();
        }
    }

    public void mergeIm(InstantMessaging instantMessaging) {
        instantMessaging.getClass();
        InstantMessaging instantMessaging2 = this.im_;
        if (instantMessaging2 == null || instantMessaging2 == InstantMessaging.getDefaultInstance()) {
            this.im_ = instantMessaging;
        } else {
            this.im_ = InstantMessaging.newBuilder(this.im_).mergeFrom(instantMessaging).buildPartial();
        }
    }

    public void mergePayment(Payment payment) {
        payment.getClass();
        Payment payment2 = this.payment_;
        if (payment2 == null || payment2 == Payment.getDefaultInstance()) {
            this.payment_ = payment;
        } else {
            this.payment_ = Payment.newBuilder(this.payment_).mergeFrom(payment).buildPartial();
        }
    }

    public void mergePremium(Premium premium) {
        premium.getClass();
        Premium premium2 = this.premium_;
        if (premium2 == null || premium2 == Premium.getDefaultInstance()) {
            this.premium_ = premium;
        } else {
            this.premium_ = Premium.newBuilder(this.premium_).mergeFrom(premium).buildPartial();
        }
    }

    public void mergeReferral(StringValue stringValue) {
        stringValue.getClass();
        StringValue stringValue2 = this.referral_;
        if (stringValue2 == null || stringValue2 == StringValue.getDefaultInstance()) {
            this.referral_ = stringValue;
        } else {
            this.referral_ = StringValue.newBuilder(this.referral_).mergeFrom(stringValue).buildPartial();
        }
    }

    public void mergeVideoCallerId(VideoCallerID videoCallerID) {
        videoCallerID.getClass();
        VideoCallerID videoCallerID2 = this.videoCallerId_;
        if (videoCallerID2 == null || videoCallerID2 == VideoCallerID.getDefaultInstance()) {
            this.videoCallerId_ = videoCallerID;
        } else {
            this.videoCallerId_ = VideoCallerID.newBuilder(this.videoCallerId_).mergeFrom(videoCallerID).buildPartial();
        }
    }

    public void mergeVoip(Voip voip) {
        voip.getClass();
        Voip voip2 = this.voip_;
        if (voip2 == null || voip2 == Voip.getDefaultInstance()) {
            this.voip_ = voip;
        } else {
            this.voip_ = Voip.newBuilder(this.voip_).mergeFrom(voip).buildPartial();
        }
    }

    public static C3318b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3318b newBuilder(SetPresenceRequest setPresenceRequest) {
        return DEFAULT_INSTANCE.createBuilder(setPresenceRequest);
    }

    public static SetPresenceRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetPresenceRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetPresenceRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SetPresenceRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SetPresenceRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SetPresenceRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SetPresenceRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SetPresenceRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SetPresenceRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SetPresenceRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SetPresenceRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SetPresenceRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SetPresenceRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setAvailability(Availability availability) {
        availability.getClass();
        this.availability_ = availability;
    }

    public void setCallContext(CallContext callContext) {
        callContext.getClass();
        this.callContext_ = callContext;
    }

    public void setCovidMedicalSupply(CovidMedicalSupply covidMedicalSupply) {
        covidMedicalSupply.getClass();
        this.covidMedicalSupply_ = covidMedicalSupply;
    }

    public void setCred(Cred cred) {
        cred.getClass();
        this.cred_ = cred;
    }

    public void setFlash(Flash flash) {
        flash.getClass();
        this.flash_ = flash;
    }

    public void setIm(InstantMessaging instantMessaging) {
        instantMessaging.getClass();
        this.im_ = instantMessaging;
    }

    public void setPayment(Payment payment) {
        payment.getClass();
        this.payment_ = payment;
    }

    public void setPremium(Premium premium) {
        premium.getClass();
        this.premium_ = premium;
    }

    public void setReferral(StringValue stringValue) {
        stringValue.getClass();
        this.referral_ = stringValue;
    }

    public void setUpdateLastSeen(boolean z) {
        this.updateLastSeen_ = z;
    }

    public void setVideoCallerId(VideoCallerID videoCallerID) {
        videoCallerID.getClass();
        this.videoCallerId_ = videoCallerID;
    }

    public void setVoip(Voip voip) {
        voip.getClass();
        this.voip_ = voip;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\f����\u0001\f\f������\u0001\t\u0002\t\u0003\t\u0004\t\u0005\u0007\u0006\t\u0007\t\b\t\t\t\n\t\u000b\t\f\t", new Object[]{"availability_", "flash_", "referral_", "im_", "updateLastSeen_", "voip_", "premium_", "payment_", "callContext_", "cred_", "covidMedicalSupply_", "videoCallerId_"});
            case 3:
                return new SetPresenceRequest();
            case 4:
                return new C3318b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SetPresenceRequest.class) {
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

    public Availability getAvailability() {
        Availability availability = this.availability_;
        Availability availability2 = availability;
        if (availability == null) {
            availability2 = Availability.getDefaultInstance();
        }
        return availability2;
    }

    public CallContext getCallContext() {
        CallContext callContext = this.callContext_;
        CallContext callContext2 = callContext;
        if (callContext == null) {
            callContext2 = CallContext.getDefaultInstance();
        }
        return callContext2;
    }

    public CovidMedicalSupply getCovidMedicalSupply() {
        CovidMedicalSupply covidMedicalSupply = this.covidMedicalSupply_;
        CovidMedicalSupply covidMedicalSupply2 = covidMedicalSupply;
        if (covidMedicalSupply == null) {
            covidMedicalSupply2 = CovidMedicalSupply.getDefaultInstance();
        }
        return covidMedicalSupply2;
    }

    public Cred getCred() {
        Cred cred = this.cred_;
        Cred cred2 = cred;
        if (cred == null) {
            cred2 = Cred.getDefaultInstance();
        }
        return cred2;
    }

    public Flash getFlash() {
        Flash flash = this.flash_;
        Flash flash2 = flash;
        if (flash == null) {
            flash2 = Flash.getDefaultInstance();
        }
        return flash2;
    }

    public InstantMessaging getIm() {
        InstantMessaging instantMessaging = this.im_;
        InstantMessaging instantMessaging2 = instantMessaging;
        if (instantMessaging == null) {
            instantMessaging2 = InstantMessaging.getDefaultInstance();
        }
        return instantMessaging2;
    }

    public Payment getPayment() {
        Payment payment = this.payment_;
        Payment payment2 = payment;
        if (payment == null) {
            payment2 = Payment.getDefaultInstance();
        }
        return payment2;
    }

    public Premium getPremium() {
        Premium premium = this.premium_;
        Premium premium2 = premium;
        if (premium == null) {
            premium2 = Premium.getDefaultInstance();
        }
        return premium2;
    }

    public StringValue getReferral() {
        StringValue stringValue = this.referral_;
        StringValue stringValue2 = stringValue;
        if (stringValue == null) {
            stringValue2 = StringValue.getDefaultInstance();
        }
        return stringValue2;
    }

    public boolean getUpdateLastSeen() {
        return this.updateLastSeen_;
    }

    public VideoCallerID getVideoCallerId() {
        VideoCallerID videoCallerID = this.videoCallerId_;
        VideoCallerID videoCallerID2 = videoCallerID;
        if (videoCallerID == null) {
            videoCallerID2 = VideoCallerID.getDefaultInstance();
        }
        return videoCallerID2;
    }

    public Voip getVoip() {
        Voip voip = this.voip_;
        Voip voip2 = voip;
        if (voip == null) {
            voip2 = Voip.getDefaultInstance();
        }
        return voip2;
    }

    public boolean hasAvailability() {
        return this.availability_ != null;
    }

    public boolean hasCallContext() {
        return this.callContext_ != null;
    }

    public boolean hasCovidMedicalSupply() {
        return this.covidMedicalSupply_ != null;
    }

    public boolean hasCred() {
        return this.cred_ != null;
    }

    public boolean hasFlash() {
        return this.flash_ != null;
    }

    public boolean hasIm() {
        return this.im_ != null;
    }

    public boolean hasPayment() {
        return this.payment_ != null;
    }

    public boolean hasPremium() {
        return this.premium_ != null;
    }

    public boolean hasReferral() {
        return this.referral_ != null;
    }

    public boolean hasVideoCallerId() {
        return this.videoCallerId_ != null;
    }

    public boolean hasVoip() {
        return this.voip_ != null;
    }
}
