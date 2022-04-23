package com.google.protobuf;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FieldOptions$CType.class */
public enum DescriptorProtos$FieldOptions$CType implements C6381y.AbstractC6384c {
    STRING(0),
    CORD(1),
    STRING_PIECE(2);
    
    public static final int CORD_VALUE = 1;
    public static final int STRING_PIECE_VALUE = 2;
    public static final int STRING_VALUE = 0;
    public static final C6381y.AbstractC6385d<DescriptorProtos$FieldOptions$CType> internalValueMap = new C6381y.AbstractC6385d<DescriptorProtos$FieldOptions$CType>() { // from class: com.google.protobuf.DescriptorProtos$FieldOptions$CType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DescriptorProtos$FieldOptions$CType mo6797a(int i) {
            return DescriptorProtos$FieldOptions$CType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.protobuf.DescriptorProtos$FieldOptions$CType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/DescriptorProtos$FieldOptions$CType$b.class */
    public static final class C7934b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31119a = new C7934b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DescriptorProtos$FieldOptions$CType.forNumber(i) != null;
        }
    }

    DescriptorProtos$FieldOptions$CType(int i) {
        this.value = i;
    }

    public static DescriptorProtos$FieldOptions$CType forNumber(int i) {
        if (i == 0) {
            return STRING;
        }
        if (i == 1) {
            return CORD;
        }
        if (i != 2) {
            return null;
        }
        return STRING_PIECE;
    }

    public static C6381y.AbstractC6385d<DescriptorProtos$FieldOptions$CType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7934b.f31119a;
    }

    @Deprecated
    public static DescriptorProtos$FieldOptions$CType valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
