package com.google.protobuf;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel.class */
public enum DescriptorProtos$MethodOptions$IdempotencyLevel implements C6381y.AbstractC6384c {
    IDEMPOTENCY_UNKNOWN(0),
    NO_SIDE_EFFECTS(1),
    IDEMPOTENT(2);
    
    public static final int IDEMPOTENCY_UNKNOWN_VALUE = 0;
    public static final int IDEMPOTENT_VALUE = 2;
    public static final int NO_SIDE_EFFECTS_VALUE = 1;
    public static final C6381y.AbstractC6385d<DescriptorProtos$MethodOptions$IdempotencyLevel> internalValueMap = new C6381y.AbstractC6385d<DescriptorProtos$MethodOptions$IdempotencyLevel>() { // from class: com.google.protobuf.DescriptorProtos$MethodOptions$IdempotencyLevel.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DescriptorProtos$MethodOptions$IdempotencyLevel mo6797a(int i) {
            return DescriptorProtos$MethodOptions$IdempotencyLevel.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.protobuf.DescriptorProtos$MethodOptions$IdempotencyLevel$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel$b.class */
    public static final class C7940b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31122a = new C7940b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DescriptorProtos$MethodOptions$IdempotencyLevel.forNumber(i) != null;
        }
    }

    DescriptorProtos$MethodOptions$IdempotencyLevel(int i) {
        this.value = i;
    }

    public static DescriptorProtos$MethodOptions$IdempotencyLevel forNumber(int i) {
        if (i == 0) {
            return IDEMPOTENCY_UNKNOWN;
        }
        if (i == 1) {
            return NO_SIDE_EFFECTS;
        }
        if (i != 2) {
            return null;
        }
        return IDEMPOTENT;
    }

    public static C6381y.AbstractC6385d<DescriptorProtos$MethodOptions$IdempotencyLevel> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7940b.f31122a;
    }

    @Deprecated
    public static DescriptorProtos$MethodOptions$IdempotencyLevel valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
