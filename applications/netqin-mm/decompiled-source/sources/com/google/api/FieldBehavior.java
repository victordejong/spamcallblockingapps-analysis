package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/FieldBehavior.class */
public enum FieldBehavior implements C6381y.AbstractC6384c {
    FIELD_BEHAVIOR_UNSPECIFIED(0),
    OPTIONAL(1),
    REQUIRED(2),
    OUTPUT_ONLY(3),
    INPUT_ONLY(4),
    IMMUTABLE(5),
    UNRECOGNIZED(-1);
    
    public static final int FIELD_BEHAVIOR_UNSPECIFIED_VALUE = 0;
    public static final int IMMUTABLE_VALUE = 5;
    public static final int INPUT_ONLY_VALUE = 4;
    public static final int OPTIONAL_VALUE = 1;
    public static final int OUTPUT_ONLY_VALUE = 3;
    public static final int REQUIRED_VALUE = 2;
    public static final C6381y.AbstractC6385d<FieldBehavior> internalValueMap = new C6381y.AbstractC6385d<FieldBehavior>() { // from class: com.google.api.FieldBehavior.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public FieldBehavior mo6797a(int i) {
            return FieldBehavior.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.FieldBehavior$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/FieldBehavior$b.class */
    public static final class C7300b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30260a = new C7300b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return FieldBehavior.forNumber(i) != null;
        }
    }

    FieldBehavior(int i) {
        this.value = i;
    }

    public static FieldBehavior forNumber(int i) {
        if (i == 0) {
            return FIELD_BEHAVIOR_UNSPECIFIED;
        }
        if (i == 1) {
            return OPTIONAL;
        }
        if (i == 2) {
            return REQUIRED;
        }
        if (i == 3) {
            return OUTPUT_ONLY;
        }
        if (i == 4) {
            return INPUT_ONLY;
        }
        if (i != 5) {
            return null;
        }
        return IMMUTABLE;
    }

    public static C6381y.AbstractC6385d<FieldBehavior> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7300b.f30260a;
    }

    @Deprecated
    public static FieldBehavior valueOf(int i) {
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
