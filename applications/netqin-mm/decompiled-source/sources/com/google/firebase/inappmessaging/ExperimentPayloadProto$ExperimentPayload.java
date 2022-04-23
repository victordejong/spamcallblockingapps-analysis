package com.google.firebase.inappmessaging;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p315q.AbstractC5518o;
import p131c.p161d.p282e.p315q.C5510l;
import p131c.p161d.p282e.p315q.C5512m;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload.class */
public final class ExperimentPayloadProto$ExperimentPayload extends GeneratedMessageLite<ExperimentPayloadProto$ExperimentPayload, C7836a> implements AbstractC5518o {
    public static final int ACTIVATE_EVENT_TO_LOG_FIELD_NUMBER = 8;
    public static final int CLEAR_EVENT_TO_LOG_FIELD_NUMBER = 9;
    public static final ExperimentPayloadProto$ExperimentPayload DEFAULT_INSTANCE;
    public static final int EXPERIMENT_ID_FIELD_NUMBER = 1;
    public static final int EXPERIMENT_START_TIME_MILLIS_FIELD_NUMBER = 3;
    public static final int ONGOING_EXPERIMENTS_FIELD_NUMBER = 13;
    public static final int OVERFLOW_POLICY_FIELD_NUMBER = 12;
    public static volatile AbstractC6376v0<ExperimentPayloadProto$ExperimentPayload> PARSER;
    public static final int SET_EVENT_TO_LOG_FIELD_NUMBER = 7;
    public static final int TIMEOUT_EVENT_TO_LOG_FIELD_NUMBER = 10;
    public static final int TIME_TO_LIVE_MILLIS_FIELD_NUMBER = 6;
    public static final int TRIGGER_EVENT_FIELD_NUMBER = 4;
    public static final int TRIGGER_TIMEOUT_MILLIS_FIELD_NUMBER = 5;
    public static final int TTL_EXPIRY_EVENT_TO_LOG_FIELD_NUMBER = 11;
    public static final int VARIANT_ID_FIELD_NUMBER = 2;
    public long experimentStartTimeMillis_;
    public int overflowPolicy_;
    public long timeToLiveMillis_;
    public long triggerTimeoutMillis_;
    public String experimentId_ = "";
    public String variantId_ = "";
    public String triggerEvent_ = "";
    public String setEventToLog_ = "";
    public String activateEventToLog_ = "";
    public String clearEventToLog_ = "";
    public String timeoutEventToLog_ = "";
    public String ttlExpiryEventToLog_ = "";
    public C6381y.AbstractC6390i<C5512m> ongoingExperiments_ = GeneratedMessageLite.m6940u();

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy.class */
    public enum ExperimentOverflowPolicy implements C6381y.AbstractC6384c {
        POLICY_UNSPECIFIED(0),
        DISCARD_OLDEST(1),
        IGNORE_NEWEST(2),
        UNRECOGNIZED(-1);
        
        public static final int DISCARD_OLDEST_VALUE = 1;
        public static final int IGNORE_NEWEST_VALUE = 2;
        public static final int POLICY_UNSPECIFIED_VALUE = 0;
        public static final C6381y.AbstractC6385d<ExperimentOverflowPolicy> internalValueMap = new C7834a();
        public final int value;

        /* renamed from: com.google.firebase.inappmessaging.ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy$a.class */
        public class C7834a implements C6381y.AbstractC6385d<ExperimentOverflowPolicy> {
            @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public ExperimentOverflowPolicy mo6797a(int i) {
                return ExperimentOverflowPolicy.forNumber(i);
            }
        }

        /* renamed from: com.google.firebase.inappmessaging.ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy$b.class */
        public static final class C7835b implements C6381y.AbstractC6386e {

            /* renamed from: a */
            public static final C6381y.AbstractC6386e f30961a = new C7835b();

            @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
            /* renamed from: a */
            public boolean mo6796a(int i) {
                return ExperimentOverflowPolicy.forNumber(i) != null;
            }
        }

        ExperimentOverflowPolicy(int i) {
            this.value = i;
        }

        public static ExperimentOverflowPolicy forNumber(int i) {
            if (i == 0) {
                return POLICY_UNSPECIFIED;
            }
            if (i == 1) {
                return DISCARD_OLDEST;
            }
            if (i != 2) {
                return null;
            }
            return IGNORE_NEWEST;
        }

        public static C6381y.AbstractC6385d<ExperimentOverflowPolicy> internalGetValueMap() {
            return internalValueMap;
        }

        public static C6381y.AbstractC6386e internalGetVerifier() {
            return C7835b.f30961a;
        }

        @Deprecated
        public static ExperimentOverflowPolicy valueOf(int i) {
            return forNumber(i);
        }

        @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.ExperimentPayloadProto$ExperimentPayload$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$a.class */
    public static final class C7836a extends GeneratedMessageLite.AbstractC7946a<ExperimentPayloadProto$ExperimentPayload, C7836a> implements AbstractC5518o {
        public C7836a() {
            super(ExperimentPayloadProto$ExperimentPayload.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7836a(C5510l lVar) {
            this();
        }
    }

    static {
        ExperimentPayloadProto$ExperimentPayload experimentPayloadProto$ExperimentPayload = new ExperimentPayloadProto$ExperimentPayload();
        DEFAULT_INSTANCE = experimentPayloadProto$ExperimentPayload;
        GeneratedMessageLite.m6949a(ExperimentPayloadProto$ExperimentPayload.class, experimentPayloadProto$ExperimentPayload);
    }

    /* renamed from: D */
    public static ExperimentPayloadProto$ExperimentPayload m7328D() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: A */
    public String m7330A() {
        return this.variantId_;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5510l.f18465a[methodToInvoke.ordinal()]) {
            case 1:
                return new ExperimentPayloadProto$ExperimentPayload();
            case 2:
                return new C7836a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\r����\u0001\r\r��\u0001��\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004Ȉ\u0005\u0002\u0006\u0002\u0007Ȉ\bȈ\tȈ\nȈ\u000bȈ\f\f\r\u001b", new Object[]{"experimentId_", "variantId_", "experimentStartTimeMillis_", "triggerEvent_", "triggerTimeoutMillis_", "timeToLiveMillis_", "setEventToLog_", "activateEventToLog_", "clearEventToLog_", "timeoutEventToLog_", "ttlExpiryEventToLog_", "overflowPolicy_", "ongoingExperiments_", C5512m.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<ExperimentPayloadProto$ExperimentPayload> v0Var = PARSER;
                AbstractC6376v0<ExperimentPayloadProto$ExperimentPayload> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (ExperimentPayloadProto$ExperimentPayload.class) {
                        try {
                            AbstractC6376v0<ExperimentPayloadProto$ExperimentPayload> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: v */
    public String m7327v() {
        return this.experimentId_;
    }

    /* renamed from: w */
    public long m7326w() {
        return this.experimentStartTimeMillis_;
    }

    /* renamed from: x */
    public long m7325x() {
        return this.timeToLiveMillis_;
    }

    /* renamed from: y */
    public String m7324y() {
        return this.triggerEvent_;
    }

    /* renamed from: z */
    public long m7323z() {
        return this.triggerTimeoutMillis_;
    }
}
