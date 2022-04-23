package com.google.firebase.inappmessaging;

import com.google.protobuf.GeneratedMessageLite;
import p131c.p161d.p282e.p315q.AbstractC5507k;
import p131c.p161d.p282e.p315q.C5487d;
import p131c.p161d.p282e.p315q.C5490e;
import p131c.p161d.p367h.AbstractC6376v0;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition.class */
public final class CommonTypesProto$TriggeringCondition extends GeneratedMessageLite<CommonTypesProto$TriggeringCondition, C7829a> implements AbstractC5507k {
    public static final CommonTypesProto$TriggeringCondition DEFAULT_INSTANCE;
    public static final int EVENT_FIELD_NUMBER = 2;
    public static final int FIAM_TRIGGER_FIELD_NUMBER = 1;
    public static volatile AbstractC6376v0<CommonTypesProto$TriggeringCondition> PARSER;
    public int conditionCase_ = 0;
    public Object condition_;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase.class */
    public enum ConditionCase {
        FIAM_TRIGGER(1),
        EVENT(2),
        CONDITION_NOT_SET(0);
        
        public final int value;

        ConditionCase(int i) {
            this.value = i;
        }

        public static ConditionCase forNumber(int i) {
            if (i == 0) {
                return CONDITION_NOT_SET;
            }
            if (i == 1) {
                return FIAM_TRIGGER;
            }
            if (i != 2) {
                return null;
            }
            return EVENT;
        }

        @Deprecated
        public static ConditionCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$a.class */
    public static final class C7829a extends GeneratedMessageLite.AbstractC7946a<CommonTypesProto$TriggeringCondition, C7829a> implements AbstractC5507k {
        public C7829a() {
            super(CommonTypesProto$TriggeringCondition.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7829a(C5487d dVar) {
            this();
        }
    }

    static {
        CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition = new CommonTypesProto$TriggeringCondition();
        DEFAULT_INSTANCE = commonTypesProto$TriggeringCondition;
        GeneratedMessageLite.m6949a(CommonTypesProto$TriggeringCondition.class, commonTypesProto$TriggeringCondition);
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C5487d.f18464a[methodToInvoke.ordinal()]) {
            case 1:
                return new CommonTypesProto$TriggeringCondition();
            case 2:
                return new C7829a(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "��\u0002\u0001��\u0001\u0002\u0002������\u0001?��\u0002<��", new Object[]{"condition_", "conditionCase_", C5490e.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<CommonTypesProto$TriggeringCondition> v0Var = PARSER;
                AbstractC6376v0<CommonTypesProto$TriggeringCondition> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (CommonTypesProto$TriggeringCondition.class) {
                        try {
                            AbstractC6376v0<CommonTypesProto$TriggeringCondition> v0Var3 = PARSER;
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
    public C5490e m7333v() {
        return this.conditionCase_ == 2 ? (C5490e) this.condition_ : C5490e.m23682x();
    }

    /* renamed from: w */
    public CommonTypesProto$Trigger m7332w() {
        if (this.conditionCase_ != 1) {
            return CommonTypesProto$Trigger.UNKNOWN_TRIGGER;
        }
        CommonTypesProto$Trigger forNumber = CommonTypesProto$Trigger.forNumber(((Integer) this.condition_).intValue());
        CommonTypesProto$Trigger commonTypesProto$Trigger = forNumber;
        if (forNumber == null) {
            commonTypesProto$Trigger = CommonTypesProto$Trigger.UNRECOGNIZED;
        }
        return commonTypesProto$Trigger;
    }
}
