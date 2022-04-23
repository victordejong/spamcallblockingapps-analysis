package com.google.firebase.perf.p494v1;

import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.ServiceWorkerStatus */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/ServiceWorkerStatus.class */
public enum ServiceWorkerStatus implements C6381y.AbstractC6384c {
    SERVICE_WORKER_STATUS_UNKNOWN(0),
    UNSUPPORTED(1),
    CONTROLLED(2),
    UNCONTROLLED(3);
    
    public static final int CONTROLLED_VALUE = 2;
    public static final int SERVICE_WORKER_STATUS_UNKNOWN_VALUE = 0;
    public static final int UNCONTROLLED_VALUE = 3;
    public static final int UNSUPPORTED_VALUE = 1;
    public static final C6381y.AbstractC6385d<ServiceWorkerStatus> internalValueMap = new C6381y.AbstractC6385d<ServiceWorkerStatus>() { // from class: com.google.firebase.perf.v1.ServiceWorkerStatus.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public ServiceWorkerStatus mo6797a(int i) {
            return ServiceWorkerStatus.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.perf.v1.ServiceWorkerStatus$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/ServiceWorkerStatus$b.class */
    public static final class C7879b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31045a = new C7879b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return ServiceWorkerStatus.forNumber(i) != null;
        }
    }

    ServiceWorkerStatus(int i) {
        this.value = i;
    }

    public static ServiceWorkerStatus forNumber(int i) {
        if (i == 0) {
            return SERVICE_WORKER_STATUS_UNKNOWN;
        }
        if (i == 1) {
            return UNSUPPORTED;
        }
        if (i == 2) {
            return CONTROLLED;
        }
        if (i != 3) {
            return null;
        }
        return UNCONTROLLED;
    }

    public static C6381y.AbstractC6385d<ServiceWorkerStatus> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7879b.f31045a;
    }

    @Deprecated
    public static ServiceWorkerStatus valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
