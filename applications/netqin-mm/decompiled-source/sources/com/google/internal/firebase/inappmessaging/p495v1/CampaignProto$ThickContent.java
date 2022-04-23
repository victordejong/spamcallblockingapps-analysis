package com.google.internal.firebase.inappmessaging.p495v1;

import com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition;
import com.google.firebase.inappmessaging.MessagesProto$Content;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p131c.p161d.p282e.p315q.C5496g;
import p131c.p161d.p362g.p363a.p364a.p365a.AbstractC6247d;
import p131c.p161d.p362g.p363a.p364a.p365a.C6243a;
import p131c.p161d.p362g.p363a.p364a.p365a.C6244b;
import p131c.p161d.p362g.p363a.p364a.p365a.C6248e;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6319h0;
import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent */
/* loaded from: classes2-dex2jar.jar:com/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent.class */
public final class CampaignProto$ThickContent extends GeneratedMessageLite<CampaignProto$ThickContent, C7912a> implements AbstractC6247d {
    public static final int CONTENT_FIELD_NUMBER = 3;
    public static final int DATA_BUNDLE_FIELD_NUMBER = 8;
    public static final CampaignProto$ThickContent DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_PAYLOAD_FIELD_NUMBER = 2;
    public static final int IS_TEST_CAMPAIGN_FIELD_NUMBER = 7;
    public static volatile AbstractC6376v0<CampaignProto$ThickContent> PARSER;
    public static final int PRIORITY_FIELD_NUMBER = 4;
    public static final int TRIGGERING_CONDITIONS_FIELD_NUMBER = 5;
    public static final int VANILLA_PAYLOAD_FIELD_NUMBER = 1;
    public MessagesProto$Content content_;
    public boolean isTestCampaign_;
    public Object payload_;
    public C5496g priority_;
    public int payloadCase_ = 0;
    public MapFieldLite<String, String> dataBundle_ = MapFieldLite.emptyMapField();
    public C6381y.AbstractC6390i<CommonTypesProto$TriggeringCondition> triggeringConditions_ = GeneratedMessageLite.m6940u();

    /* renamed from: com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent$PayloadCase */
    /* loaded from: classes2-dex2jar.jar:com/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase.class */
    public enum PayloadCase {
        VANILLA_PAYLOAD(1),
        EXPERIMENTAL_PAYLOAD(2),
        PAYLOAD_NOT_SET(0);
        
        public final int value;

        PayloadCase(int i) {
            this.value = i;
        }

        public static PayloadCase forNumber(int i) {
            if (i == 0) {
                return PAYLOAD_NOT_SET;
            }
            if (i == 1) {
                return VANILLA_PAYLOAD;
            }
            if (i != 2) {
                return null;
            }
            return EXPERIMENTAL_PAYLOAD;
        }

        @Deprecated
        public static PayloadCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent$a */
    /* loaded from: classes2-dex2jar.jar:com/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$a.class */
    public static final class C7912a extends GeneratedMessageLite.AbstractC7946a<CampaignProto$ThickContent, C7912a> implements AbstractC6247d {
        public C7912a() {
            super(CampaignProto$ThickContent.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7912a(C6243a aVar) {
            this();
        }
    }

    /* renamed from: com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent$b */
    /* loaded from: classes2-dex2jar.jar:com/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$b.class */
    public static final class C7913b {

        /* renamed from: a */
        public static final C6319h0<String, String> f31093a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f31093a = C6319h0.m21476a(fieldType, "", fieldType, "");
        }
    }

    static {
        CampaignProto$ThickContent campaignProto$ThickContent = new CampaignProto$ThickContent();
        DEFAULT_INSTANCE = campaignProto$ThickContent;
        GeneratedMessageLite.m6949a(CampaignProto$ThickContent.class, campaignProto$ThickContent);
    }

    /* renamed from: A */
    public C5496g m7099A() {
        C5496g gVar = this.priority_;
        C5496g gVar2 = gVar;
        if (gVar == null) {
            gVar2 = C5496g.m23662x();
        }
        return gVar2;
    }

    /* renamed from: C */
    public List<CommonTypesProto$TriggeringCondition> m7098C() {
        return this.triggeringConditions_;
    }

    /* renamed from: D */
    public C6248e m7097D() {
        return this.payloadCase_ == 1 ? (C6248e) this.payload_ : C6248e.m21760A();
    }

    /* renamed from: E */
    public final MapFieldLite<String, String> m7096E() {
        return this.dataBundle_;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C6243a.f19844a[methodToInvoke.ordinal()]) {
            case 1:
                return new CampaignProto$ThickContent();
            case 2:
                return new C7912a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0007\u0001��\u0001\b\u0007\u0001\u0001��\u0001<��\u0002<��\u0003\t\u0004\t\u0005\u001b\u0007\u0007\b2", new Object[]{"payload_", "payloadCase_", C6248e.class, C6244b.class, "content_", "priority_", "triggeringConditions_", CommonTypesProto$TriggeringCondition.class, "isTestCampaign_", "dataBundle_", C7913b.f31093a});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<CampaignProto$ThickContent> v0Var = PARSER;
                AbstractC6376v0<CampaignProto$ThickContent> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (CampaignProto$ThickContent.class) {
                        try {
                            AbstractC6376v0<CampaignProto$ThickContent> v0Var3 = PARSER;
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
    public MessagesProto$Content m7094v() {
        MessagesProto$Content messagesProto$Content = this.content_;
        MessagesProto$Content messagesProto$Content2 = messagesProto$Content;
        if (messagesProto$Content == null) {
            messagesProto$Content2 = MessagesProto$Content.m7317C();
        }
        return messagesProto$Content2;
    }

    /* renamed from: w */
    public Map<String, String> m7093w() {
        return Collections.unmodifiableMap(m7096E());
    }

    /* renamed from: x */
    public C6244b m7092x() {
        return this.payloadCase_ == 2 ? (C6244b) this.payload_ : C6244b.m21766C();
    }

    /* renamed from: y */
    public boolean m7091y() {
        return this.isTestCampaign_;
    }

    /* renamed from: z */
    public PayloadCase m7090z() {
        return PayloadCase.forNumber(this.payloadCase_);
    }
}
