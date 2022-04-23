package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/BackendRule$PathTranslation.class */
public enum BackendRule$PathTranslation implements C6381y.AbstractC6384c {
    PATH_TRANSLATION_UNSPECIFIED(0),
    CONSTANT_ADDRESS(1),
    APPEND_PATH_TO_ADDRESS(2),
    UNRECOGNIZED(-1);
    
    public static final int APPEND_PATH_TO_ADDRESS_VALUE = 2;
    public static final int CONSTANT_ADDRESS_VALUE = 1;
    public static final int PATH_TRANSLATION_UNSPECIFIED_VALUE = 0;
    public static final C6381y.AbstractC6385d<BackendRule$PathTranslation> internalValueMap = new C6381y.AbstractC6385d<BackendRule$PathTranslation>() { // from class: com.google.api.BackendRule$PathTranslation.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public BackendRule$PathTranslation mo6797a(int i) {
            return BackendRule$PathTranslation.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.BackendRule$PathTranslation$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/BackendRule$PathTranslation$b.class */
    public static final class C7296b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30258a = new C7296b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return BackendRule$PathTranslation.forNumber(i) != null;
        }
    }

    BackendRule$PathTranslation(int i) {
        this.value = i;
    }

    public static BackendRule$PathTranslation forNumber(int i) {
        if (i == 0) {
            return PATH_TRANSLATION_UNSPECIFIED;
        }
        if (i == 1) {
            return CONSTANT_ADDRESS;
        }
        if (i != 2) {
            return null;
        }
        return APPEND_PATH_TO_ADDRESS;
    }

    public static C6381y.AbstractC6385d<BackendRule$PathTranslation> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7296b.f30258a;
    }

    @Deprecated
    public static BackendRule$PathTranslation valueOf(int i) {
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
