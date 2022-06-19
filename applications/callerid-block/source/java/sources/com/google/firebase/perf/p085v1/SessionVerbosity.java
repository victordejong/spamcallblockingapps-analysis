package com.google.firebase.perf.p085v1;

import com.google.protobuf.C2665x;
/* renamed from: com.google.firebase.perf.v1.SessionVerbosity */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/SessionVerbosity.class */
public enum SessionVerbosity implements C2665x.AbstractC2668c {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);
    

    /* renamed from: d */
    private static final C2665x.AbstractC2669d<SessionVerbosity> f10740d = new C2665x.AbstractC2669d<SessionVerbosity>() { // from class: com.google.firebase.perf.v1.SessionVerbosity.a
        /* renamed from: b */
        public SessionVerbosity mo2241a(int i) {
            return SessionVerbosity.forNumber(i);
        }
    };
    private final int value;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.perf.v1.SessionVerbosity$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/SessionVerbosity$b.class */
    public static final class C2462b implements C2665x.AbstractC2670e {

        /* renamed from: a */
        static final C2665x.AbstractC2670e f10742a = new C2462b();

        private C2462b() {
        }

        @Override // com.google.protobuf.C2665x.AbstractC2670e
        /* renamed from: a */
        public boolean mo2240a(int i) {
            return SessionVerbosity.forNumber(i) != null;
        }
    }

    SessionVerbosity(int i) {
        this.value = i;
    }

    public static SessionVerbosity forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return GAUGES_AND_SYSTEM_EVENTS;
            }
            return null;
        }
        return SESSION_VERBOSITY_NONE;
    }

    public static C2665x.AbstractC2669d<SessionVerbosity> internalGetValueMap() {
        return f10740d;
    }

    public static C2665x.AbstractC2670e internalGetVerifier() {
        return C2462b.f10742a;
    }

    @Deprecated
    public static SessionVerbosity valueOf(int i) {
        return forNumber(i);
    }

    @Override // com.google.protobuf.C2665x.AbstractC2668c
    public final int getNumber() {
        return this.value;
    }
}
