package p131c.p161d.p362g.p363a.p364a.p365a;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p367h.AbstractC6376v0;
/* renamed from: c.d.g.a.a.a.e */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/e.class */
public final class C6248e extends GeneratedMessageLite<C6248e, C6249a> implements AbstractC6250f {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    public static final C6248e DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_CAMPAIGN_ID_FIELD_NUMBER = 2;
    public static volatile AbstractC6376v0<C6248e> PARSER;
    public long campaignEndTimeMillis_;
    public long campaignStartTimeMillis_;
    public String campaignId_ = "";
    public String experimentalCampaignId_ = "";
    public String campaignName_ = "";

    /* renamed from: c.d.g.a.a.a.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/e$a.class */
    public static final class C6249a extends GeneratedMessageLite.AbstractC7946a<C6248e, C6249a> implements AbstractC6250f {
        public C6249a() {
            super(C6248e.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C6249a(C6243a aVar) {
            this();
        }
    }

    static {
        C6248e eVar = new C6248e();
        DEFAULT_INSTANCE = eVar;
        GeneratedMessageLite.m6949a(C6248e.class, eVar);
    }

    /* renamed from: A */
    public static C6248e m21760A() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6243a.f19844a[methodToInvoke.ordinal()]) {
            case 1:
                return new C6248e();
            case 2:
                return new C6249a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"campaignId_", "experimentalCampaignId_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<C6248e> v0Var = PARSER;
                AbstractC6376v0<C6248e> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (C6248e.class) {
                        try {
                            AbstractC6376v0<C6248e> v0Var3 = PARSER;
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
    public long m21759v() {
        return this.campaignEndTimeMillis_;
    }

    /* renamed from: w */
    public String m21758w() {
        return this.campaignId_;
    }

    /* renamed from: x */
    public String m21757x() {
        return this.campaignName_;
    }

    /* renamed from: y */
    public long m21756y() {
        return this.campaignStartTimeMillis_;
    }
}
