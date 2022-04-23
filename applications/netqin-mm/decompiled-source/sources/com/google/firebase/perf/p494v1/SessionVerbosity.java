package com.google.firebase.perf.p494v1;

import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.SessionVerbosity */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/SessionVerbosity.class */
public enum SessionVerbosity implements C6381y.AbstractC6384c {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);
    
    public static final int GAUGES_AND_SYSTEM_EVENTS_VALUE = 1;
    public static final int SESSION_VERBOSITY_NONE_VALUE = 0;
    public static final C6381y.AbstractC6385d<SessionVerbosity> internalValueMap = new C6381y.AbstractC6385d<SessionVerbosity>() { // from class: com.google.firebase.perf.v1.SessionVerbosity.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public SessionVerbosity mo6797a(int i) {
            return SessionVerbosity.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.perf.v1.SessionVerbosity$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/SessionVerbosity$b.class */
    public static final class C7881b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31046a = new C7881b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return SessionVerbosity.forNumber(i) != null;
        }
    }

    SessionVerbosity(int i) {
        this.value = i;
    }

    public static SessionVerbosity forNumber(int i) {
        if (i == 0) {
            return SESSION_VERBOSITY_NONE;
        }
        if (i != 1) {
            return null;
        }
        return GAUGES_AND_SYSTEM_EVENTS;
    }

    public static C6381y.AbstractC6385d<SessionVerbosity> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7881b.f31046a;
    }

    @Deprecated
    public static SessionVerbosity valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
