package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/MetricDescriptor$ValueType.class */
public enum MetricDescriptor$ValueType implements C6381y.AbstractC6384c {
    VALUE_TYPE_UNSPECIFIED(0),
    BOOL(1),
    INT64(2),
    DOUBLE(3),
    STRING(4),
    DISTRIBUTION(5),
    MONEY(6),
    UNRECOGNIZED(-1);
    
    public static final int BOOL_VALUE = 1;
    public static final int DISTRIBUTION_VALUE = 5;
    public static final int DOUBLE_VALUE = 3;
    public static final int INT64_VALUE = 2;
    public static final int MONEY_VALUE = 6;
    public static final int STRING_VALUE = 4;
    public static final int VALUE_TYPE_UNSPECIFIED_VALUE = 0;
    public static final C6381y.AbstractC6385d<MetricDescriptor$ValueType> internalValueMap = new C6381y.AbstractC6385d<MetricDescriptor$ValueType>() { // from class: com.google.api.MetricDescriptor$ValueType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public MetricDescriptor$ValueType mo6797a(int i) {
            return MetricDescriptor$ValueType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.MetricDescriptor$ValueType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/MetricDescriptor$ValueType$b.class */
    public static final class C7308b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30265a = new C7308b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return MetricDescriptor$ValueType.forNumber(i) != null;
        }
    }

    MetricDescriptor$ValueType(int i) {
        this.value = i;
    }

    public static MetricDescriptor$ValueType forNumber(int i) {
        switch (i) {
            case 0:
                return VALUE_TYPE_UNSPECIFIED;
            case 1:
                return BOOL;
            case 2:
                return INT64;
            case 3:
                return DOUBLE;
            case 4:
                return STRING;
            case 5:
                return DISTRIBUTION;
            case 6:
                return MONEY;
            default:
                return null;
        }
    }

    public static C6381y.AbstractC6385d<MetricDescriptor$ValueType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7308b.f30265a;
    }

    @Deprecated
    public static MetricDescriptor$ValueType valueOf(int i) {
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
