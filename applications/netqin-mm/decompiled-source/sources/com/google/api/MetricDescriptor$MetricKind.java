package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/MetricDescriptor$MetricKind.class */
public enum MetricDescriptor$MetricKind implements C6381y.AbstractC6384c {
    METRIC_KIND_UNSPECIFIED(0),
    GAUGE(1),
    DELTA(2),
    CUMULATIVE(3),
    UNRECOGNIZED(-1);
    
    public static final int CUMULATIVE_VALUE = 3;
    public static final int DELTA_VALUE = 2;
    public static final int GAUGE_VALUE = 1;
    public static final int METRIC_KIND_UNSPECIFIED_VALUE = 0;
    public static final C6381y.AbstractC6385d<MetricDescriptor$MetricKind> internalValueMap = new C6381y.AbstractC6385d<MetricDescriptor$MetricKind>() { // from class: com.google.api.MetricDescriptor$MetricKind.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public MetricDescriptor$MetricKind mo6797a(int i) {
            return MetricDescriptor$MetricKind.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.MetricDescriptor$MetricKind$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/MetricDescriptor$MetricKind$b.class */
    public static final class C7306b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30264a = new C7306b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return MetricDescriptor$MetricKind.forNumber(i) != null;
        }
    }

    MetricDescriptor$MetricKind(int i) {
        this.value = i;
    }

    public static MetricDescriptor$MetricKind forNumber(int i) {
        if (i == 0) {
            return METRIC_KIND_UNSPECIFIED;
        }
        if (i == 1) {
            return GAUGE;
        }
        if (i == 2) {
            return DELTA;
        }
        if (i != 3) {
            return null;
        }
        return CUMULATIVE;
    }

    public static C6381y.AbstractC6385d<MetricDescriptor$MetricKind> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7306b.f30264a;
    }

    @Deprecated
    public static MetricDescriptor$MetricKind valueOf(int i) {
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
