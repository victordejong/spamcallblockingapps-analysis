package com.truecaller.api.services.presence.p139v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.Parser;
import com.google.protobuf.StringValue;
import com.google.protobuf.WireFormat;
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
import java.util.Collections;
import java.util.Map;
/* renamed from: com.truecaller.api.services.presence.v1.GetPresenceResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceResponse.class */
public final class GetPresenceResponse extends GeneratedMessageLite<GetPresenceResponse, C3313b> implements Object {
    public static final int DATA_FIELD_NUMBER = 1;
    private static final GetPresenceResponse DEFAULT_INSTANCE;
    private static volatile Parser<GetPresenceResponse> PARSER;
    private MapFieldLite<String, PresenceData> data_ = MapFieldLite.emptyMapField();

    /* renamed from: com.truecaller.api.services.presence.v1.GetPresenceResponse$PresenceData */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData.class */
    public static final class PresenceData extends GeneratedMessageLite<PresenceData, C3311a> implements Object {
        public static final int AVAILABILITY_FIELD_NUMBER = 1;
        public static final int CALLCONTEXT_FIELD_NUMBER = 8;
        public static final int COVID_MEDICAL_SUPPLY_FIELD_NUMBER = 11;
        public static final int CRED_FIELD_NUMBER = 9;
        private static final PresenceData DEFAULT_INSTANCE;
        public static final int FLASH_FIELD_NUMBER = 3;
        public static final int IM_FIELD_NUMBER = 4;
        public static final int LAST_SEEN_FIELD_NUMBER = 2;
        private static volatile Parser<PresenceData> PARSER;
        public static final int PAYMENT_FIELD_NUMBER = 7;
        public static final int PREMIUM_FIELD_NUMBER = 6;
        public static final int VIDEO_CALLER_ID_FIELD_NUMBER = 12;
        public static final int VOIP_FIELD_NUMBER = 5;
        private Availability availability_;
        private CallContext callContext_;
        private CovidMedicalSupply covidMedicalSupply_;
        private Cred cred_;
        private Flash flash_;
        private InstantMessaging im_;
        private StringValue lastSeen_;
        private Payment payment_;
        private Premium premium_;
        private VideoCallerID videoCallerId_;
        private Voip voip_;

        /* renamed from: com.truecaller.api.services.presence.v1.GetPresenceResponse$PresenceData$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData$a.class */
        public static final class C3311a extends GeneratedMessageLite.Builder<PresenceData, C3311a> implements Object {
            public C3311a() {
                super(PresenceData.DEFAULT_INSTANCE);
            }

            public C3311a(C3312a c3312a) {
                super(PresenceData.DEFAULT_INSTANCE);
            }
        }

        static {
            PresenceData presenceData = new PresenceData();
            DEFAULT_INSTANCE = presenceData;
            GeneratedMessageLite.registerDefaultInstance(PresenceData.class, presenceData);
        }

        private PresenceData() {
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

        public void clearLastSeen() {
            this.lastSeen_ = null;
        }

        public void clearPayment() {
            this.payment_ = null;
        }

        public void clearPremium() {
            this.premium_ = null;
        }

        public void clearVideoCallerId() {
            this.videoCallerId_ = null;
        }

        public void clearVoip() {
            this.voip_ = null;
        }

        public static PresenceData getDefaultInstance() {
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

        public void mergeLastSeen(StringValue stringValue) {
            stringValue.getClass();
            StringValue stringValue2 = this.lastSeen_;
            if (stringValue2 == null || stringValue2 == StringValue.getDefaultInstance()) {
                this.lastSeen_ = stringValue;
            } else {
                this.lastSeen_ = StringValue.newBuilder(this.lastSeen_).mergeFrom(stringValue).buildPartial();
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

        public static C3311a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3311a newBuilder(PresenceData presenceData) {
            return DEFAULT_INSTANCE.createBuilder(presenceData);
        }

        public static PresenceData parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static PresenceData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static PresenceData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static PresenceData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static PresenceData parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static PresenceData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static PresenceData parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static PresenceData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static PresenceData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static PresenceData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static PresenceData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static PresenceData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<PresenceData> parser() {
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

        public void setLastSeen(StringValue stringValue) {
            stringValue.getClass();
            this.lastSeen_ = stringValue;
        }

        public void setPayment(Payment payment) {
            payment.getClass();
            this.payment_ = payment;
        }

        public void setPremium(Premium premium) {
            premium.getClass();
            this.premium_ = premium;
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
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u000b����\u0001\f\u000b������\u0001\t\u0002\t\u0003\t\u0004\t\u0005\t\u0006\t\u0007\t\b\t\t\t\u000b\t\f\t", new Object[]{"availability_", "lastSeen_", "flash_", "im_", "voip_", "premium_", "payment_", "callContext_", "cred_", "covidMedicalSupply_", "videoCallerId_"});
                case 3:
                    return new PresenceData();
                case 4:
                    return new C3311a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (PresenceData.class) {
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

        public StringValue getLastSeen() {
            StringValue stringValue = this.lastSeen_;
            StringValue stringValue2 = stringValue;
            if (stringValue == null) {
                stringValue2 = StringValue.getDefaultInstance();
            }
            return stringValue2;
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

        public boolean hasLastSeen() {
            return this.lastSeen_ != null;
        }

        public boolean hasPayment() {
            return this.payment_ != null;
        }

        public boolean hasPremium() {
            return this.premium_ != null;
        }

        public boolean hasVideoCallerId() {
            return this.videoCallerId_ != null;
        }

        public boolean hasVoip() {
            return this.voip_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.presence.v1.GetPresenceResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceResponse$b.class */
    public static final class C3313b extends GeneratedMessageLite.Builder<GetPresenceResponse, C3313b> implements Object {
        public C3313b() {
            super(GetPresenceResponse.DEFAULT_INSTANCE);
        }

        public C3313b(C3312a c3312a) {
            super(GetPresenceResponse.DEFAULT_INSTANCE);
        }
    }

    /* renamed from: com.truecaller.api.services.presence.v1.GetPresenceResponse$c */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/presence/v1/GetPresenceResponse$c.class */
    public static final class C3314c {

        /* renamed from: a */
        public static final MapEntryLite<String, PresenceData> f10125a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, PresenceData.getDefaultInstance());
    }

    static {
        GetPresenceResponse getPresenceResponse = new GetPresenceResponse();
        DEFAULT_INSTANCE = getPresenceResponse;
        GeneratedMessageLite.registerDefaultInstance(GetPresenceResponse.class, getPresenceResponse);
    }

    private GetPresenceResponse() {
    }

    public static GetPresenceResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public Map<String, PresenceData> getMutableDataMap() {
        return internalGetMutableData();
    }

    private MapFieldLite<String, PresenceData> internalGetData() {
        return this.data_;
    }

    private MapFieldLite<String, PresenceData> internalGetMutableData() {
        if (!this.data_.isMutable()) {
            this.data_ = this.data_.mutableCopy();
        }
        return this.data_;
    }

    public static C3313b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3313b newBuilder(GetPresenceResponse getPresenceResponse) {
        return DEFAULT_INSTANCE.createBuilder(getPresenceResponse);
    }

    public static GetPresenceResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetPresenceResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetPresenceResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetPresenceResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetPresenceResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetPresenceResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetPresenceResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetPresenceResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetPresenceResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetPresenceResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetPresenceResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetPresenceResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetPresenceResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public boolean containsData(String str) {
        str.getClass();
        return internalGetData().containsKey(str);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001\u0001����\u00012", new Object[]{"data_", C3314c.f10125a});
            case 3:
                return new GetPresenceResponse();
            case 4:
                return new C3313b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetPresenceResponse.class) {
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

    @Deprecated
    public Map<String, PresenceData> getData() {
        return getDataMap();
    }

    public int getDataCount() {
        return internalGetData().size();
    }

    public Map<String, PresenceData> getDataMap() {
        return Collections.unmodifiableMap(internalGetData());
    }

    public PresenceData getDataOrDefault(String str, PresenceData presenceData) {
        str.getClass();
        MapFieldLite<String, PresenceData> internalGetData = internalGetData();
        if (internalGetData.containsKey(str)) {
            presenceData = internalGetData.get(str);
        }
        return presenceData;
    }

    public PresenceData getDataOrThrow(String str) {
        str.getClass();
        MapFieldLite<String, PresenceData> internalGetData = internalGetData();
        if (internalGetData.containsKey(str)) {
            return internalGetData.get(str);
        }
        throw new IllegalArgumentException();
    }
}
