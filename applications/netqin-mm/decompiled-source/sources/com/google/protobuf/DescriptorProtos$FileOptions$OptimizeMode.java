package com.google.protobuf;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode.class */
public enum DescriptorProtos$FileOptions$OptimizeMode implements C6381y.AbstractC6384c {
    SPEED(1),
    CODE_SIZE(2),
    LITE_RUNTIME(3);
    
    public static final int CODE_SIZE_VALUE = 2;
    public static final int LITE_RUNTIME_VALUE = 3;
    public static final int SPEED_VALUE = 1;
    public static final C6381y.AbstractC6385d<DescriptorProtos$FileOptions$OptimizeMode> internalValueMap = new C6381y.AbstractC6385d<DescriptorProtos$FileOptions$OptimizeMode>() { // from class: com.google.protobuf.DescriptorProtos$FileOptions$OptimizeMode.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DescriptorProtos$FileOptions$OptimizeMode mo6797a(int i) {
            return DescriptorProtos$FileOptions$OptimizeMode.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.protobuf.DescriptorProtos$FileOptions$OptimizeMode$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode$b.class */
    public static final class C7938b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31121a = new C7938b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DescriptorProtos$FileOptions$OptimizeMode.forNumber(i) != null;
        }
    }

    DescriptorProtos$FileOptions$OptimizeMode(int i) {
        this.value = i;
    }

    public static DescriptorProtos$FileOptions$OptimizeMode forNumber(int i) {
        if (i == 1) {
            return SPEED;
        }
        if (i == 2) {
            return CODE_SIZE;
        }
        if (i != 3) {
            return null;
        }
        return LITE_RUNTIME;
    }

    public static C6381y.AbstractC6385d<DescriptorProtos$FileOptions$OptimizeMode> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7938b.f31121a;
    }

    @Deprecated
    public static DescriptorProtos$FileOptions$OptimizeMode valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
