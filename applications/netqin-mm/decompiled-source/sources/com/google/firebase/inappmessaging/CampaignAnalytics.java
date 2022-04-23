package com.google.firebase.inappmessaging;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p315q.AbstractC5478a;
import p131c.p161d.p282e.p315q.C5480b;
import p131c.p161d.p367h.AbstractC6376v0;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CampaignAnalytics.class */
public final class CampaignAnalytics extends GeneratedMessageLite<CampaignAnalytics, C7822b> implements AbstractC5478a {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 2;
    public static final int CLIENT_APP_FIELD_NUMBER = 3;
    public static final int CLIENT_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
    public static final CampaignAnalytics DEFAULT_INSTANCE;
    public static final int DISMISS_TYPE_FIELD_NUMBER = 6;
    public static final int ENGAGEMENTMETRICS_DELIVERY_RETRY_COUNT_FIELD_NUMBER = 10;
    public static final int EVENT_TYPE_FIELD_NUMBER = 5;
    public static final int FETCH_ERROR_REASON_FIELD_NUMBER = 8;
    public static final int FIAM_SDK_VERSION_FIELD_NUMBER = 9;
    public static volatile AbstractC6376v0<CampaignAnalytics> PARSER;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int RENDER_ERROR_REASON_FIELD_NUMBER = 7;
    public int bitField0_;
    public C5480b clientApp_;
    public long clientTimestampMillis_;
    public int engagementMetricsDeliveryRetryCount_;
    public Object event_;
    public int eventCase_ = 0;
    public String projectNumber_ = "";
    public String campaignId_ = "";
    public String fiamSdkVersion_ = "";

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CampaignAnalytics$EventCase.class */
    public enum EventCase {
        EVENT_TYPE(5),
        DISMISS_TYPE(6),
        RENDER_ERROR_REASON(7),
        FETCH_ERROR_REASON(8),
        EVENT_NOT_SET(0);
        
        public final int value;

        EventCase(int i) {
            this.value = i;
        }

        public static EventCase forNumber(int i) {
            if (i == 0) {
                return EVENT_NOT_SET;
            }
            if (i == 5) {
                return EVENT_TYPE;
            }
            if (i == 6) {
                return DISMISS_TYPE;
            }
            if (i == 7) {
                return RENDER_ERROR_REASON;
            }
            if (i != 8) {
                return null;
            }
            return FETCH_ERROR_REASON;
        }

        @Deprecated
        public static EventCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.CampaignAnalytics$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CampaignAnalytics$a.class */
    public static /* synthetic */ class C7821a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30955a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f30955a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30955a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30955a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30955a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f30955a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f30955a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f30955a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.CampaignAnalytics$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CampaignAnalytics$b.class */
    public static final class C7822b extends GeneratedMessageLite.AbstractC7946a<CampaignAnalytics, C7822b> implements AbstractC5478a {
        public C7822b() {
            super(CampaignAnalytics.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7822b(C7821a aVar) {
            this();
        }

        /* renamed from: a */
        public C7822b m7341a(long j) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7359a(j);
            return this;
        }

        /* renamed from: a */
        public C7822b m7340a(C5480b.C5482b bVar) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7358a(bVar.mo6937a());
            return this;
        }

        /* renamed from: a */
        public C7822b m7339a(DismissType dismissType) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7351a(dismissType);
            return this;
        }

        /* renamed from: a */
        public C7822b m7338a(EventType eventType) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7350a(eventType);
            return this;
        }

        /* renamed from: a */
        public C7822b m7337a(RenderErrorReason renderErrorReason) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7349a(renderErrorReason);
            return this;
        }

        /* renamed from: a */
        public C7822b m7336a(String str) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7347b(str);
            return this;
        }

        /* renamed from: b */
        public C7822b m7335b(String str) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7345c(str);
            return this;
        }

        /* renamed from: c */
        public C7822b m7334c(String str) {
            m6930s();
            ((CampaignAnalytics) this.f31129b).m7344d(str);
            return this;
        }
    }

    static {
        CampaignAnalytics campaignAnalytics = new CampaignAnalytics();
        DEFAULT_INSTANCE = campaignAnalytics;
        GeneratedMessageLite.m6949a(CampaignAnalytics.class, campaignAnalytics);
    }

    /* renamed from: w */
    public static C7822b m7342w() {
        return DEFAULT_INSTANCE.m6945i();
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C7821a.f30955a[methodToInvoke.ordinal()]) {
            case 1:
                return new CampaignAnalytics();
            case 2:
                return new C7822b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\n\u0001\u0001\u0001\n\n������\u0001\b��\u0002\b\u0001\u0003\t\u0002\u0004\u0002\u0003\u0005?��\u0006?��\u0007?��\b?��\t\b\b\n\u0004\t", new Object[]{"event_", "eventCase_", "bitField0_", "projectNumber_", "campaignId_", "clientApp_", "clientTimestampMillis_", EventType.internalGetVerifier(), DismissType.internalGetVerifier(), RenderErrorReason.internalGetVerifier(), FetchErrorReason.internalGetVerifier(), "fiamSdkVersion_", "engagementMetricsDeliveryRetryCount_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<CampaignAnalytics> v0Var = PARSER;
                AbstractC6376v0<CampaignAnalytics> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (CampaignAnalytics.class) {
                        try {
                            AbstractC6376v0<CampaignAnalytics> v0Var3 = PARSER;
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

    /* renamed from: a */
    public final void m7359a(long j) {
        this.bitField0_ |= 8;
        this.clientTimestampMillis_ = j;
    }

    /* renamed from: a */
    public final void m7358a(C5480b bVar) {
        bVar.getClass();
        this.clientApp_ = bVar;
        this.bitField0_ |= 4;
    }

    /* renamed from: a */
    public final void m7351a(DismissType dismissType) {
        this.event_ = Integer.valueOf(dismissType.getNumber());
        this.eventCase_ = 6;
    }

    /* renamed from: a */
    public final void m7350a(EventType eventType) {
        this.event_ = Integer.valueOf(eventType.getNumber());
        this.eventCase_ = 5;
    }

    /* renamed from: a */
    public final void m7349a(RenderErrorReason renderErrorReason) {
        this.event_ = Integer.valueOf(renderErrorReason.getNumber());
        this.eventCase_ = 7;
    }

    /* renamed from: b */
    public final void m7347b(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.campaignId_ = str;
    }

    /* renamed from: c */
    public final void m7345c(String str) {
        str.getClass();
        this.bitField0_ |= 256;
        this.fiamSdkVersion_ = str;
    }

    /* renamed from: d */
    public final void m7344d(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.projectNumber_ = str;
    }
}
