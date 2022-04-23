package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/LabelDescriptor$ValueType.class */
public enum LabelDescriptor$ValueType implements C6381y.AbstractC6384c {
    STRING(0),
    BOOL(1),
    INT64(2),
    UNRECOGNIZED(-1);
    
    public static final int BOOL_VALUE = 1;
    public static final int INT64_VALUE = 2;
    public static final int STRING_VALUE = 0;
    public static final C6381y.AbstractC6385d<LabelDescriptor$ValueType> internalValueMap = new C6381y.AbstractC6385d<LabelDescriptor$ValueType>() { // from class: com.google.api.LabelDescriptor$ValueType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public LabelDescriptor$ValueType mo6797a(int i) {
            return LabelDescriptor$ValueType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.LabelDescriptor$ValueType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/LabelDescriptor$ValueType$b.class */
    public static final class C7302b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30261a = new C7302b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return LabelDescriptor$ValueType.forNumber(i) != null;
        }
    }

    LabelDescriptor$ValueType(int i) {
        this.value = i;
    }

    public static LabelDescriptor$ValueType forNumber(int i) {
        if (i == 0) {
            return STRING;
        }
        if (i == 1) {
            return BOOL;
        }
        if (i != 2) {
            return null;
        }
        return INT64;
    }

    public static C6381y.AbstractC6385d<LabelDescriptor$ValueType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7302b.f30261a;
    }

    @Deprecated
    public static LabelDescriptor$ValueType valueOf(int i) {
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
