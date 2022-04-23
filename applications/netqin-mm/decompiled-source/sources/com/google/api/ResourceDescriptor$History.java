package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/ResourceDescriptor$History.class */
public enum ResourceDescriptor$History implements C6381y.AbstractC6384c {
    HISTORY_UNSPECIFIED(0),
    ORIGINALLY_SINGLE_PATTERN(1),
    FUTURE_MULTI_PATTERN(2),
    UNRECOGNIZED(-1);
    
    public static final int FUTURE_MULTI_PATTERN_VALUE = 2;
    public static final int HISTORY_UNSPECIFIED_VALUE = 0;
    public static final int ORIGINALLY_SINGLE_PATTERN_VALUE = 1;
    public static final C6381y.AbstractC6385d<ResourceDescriptor$History> internalValueMap = new C6381y.AbstractC6385d<ResourceDescriptor$History>() { // from class: com.google.api.ResourceDescriptor$History.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public ResourceDescriptor$History mo6797a(int i) {
            return ResourceDescriptor$History.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.ResourceDescriptor$History$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/ResourceDescriptor$History$b.class */
    public static final class C7312b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30267a = new C7312b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return ResourceDescriptor$History.forNumber(i) != null;
        }
    }

    ResourceDescriptor$History(int i) {
        this.value = i;
    }

    public static ResourceDescriptor$History forNumber(int i) {
        if (i == 0) {
            return HISTORY_UNSPECIFIED;
        }
        if (i == 1) {
            return ORIGINALLY_SINGLE_PATTERN;
        }
        if (i != 2) {
            return null;
        }
        return FUTURE_MULTI_PATTERN;
    }

    public static C6381y.AbstractC6385d<ResourceDescriptor$History> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7312b.f30267a;
    }

    @Deprecated
    public static ResourceDescriptor$History valueOf(int i) {
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
