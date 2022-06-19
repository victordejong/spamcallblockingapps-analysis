package com.google.firebase.perf.p085v1;

import com.google.protobuf.C2665x;
/* renamed from: com.google.firebase.perf.v1.ApplicationProcessState */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/ApplicationProcessState.class */
public enum ApplicationProcessState implements C2665x.AbstractC2668c {
    APPLICATION_PROCESS_STATE_UNKNOWN(0),
    FOREGROUND(1),
    BACKGROUND(2),
    FOREGROUND_BACKGROUND(3);
    

    /* renamed from: f */
    private static final C2665x.AbstractC2669d<ApplicationProcessState> f10715f = new C2665x.AbstractC2669d<ApplicationProcessState>() { // from class: com.google.firebase.perf.v1.ApplicationProcessState.a
        /* renamed from: b */
        public ApplicationProcessState mo2241a(int i) {
            return ApplicationProcessState.forNumber(i);
        }
    };
    private final int value;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.perf.v1.ApplicationProcessState$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/ApplicationProcessState$b.class */
    public static final class C2453b implements C2665x.AbstractC2670e {

        /* renamed from: a */
        static final C2665x.AbstractC2670e f10717a = new C2453b();

        private C2453b() {
        }

        @Override // com.google.protobuf.C2665x.AbstractC2670e
        /* renamed from: a */
        public boolean mo2240a(int i) {
            return ApplicationProcessState.forNumber(i) != null;
        }
    }

    ApplicationProcessState(int i) {
        this.value = i;
    }

    public static ApplicationProcessState forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return FOREGROUND;
            }
            if (i == 2) {
                return BACKGROUND;
            }
            if (i == 3) {
                return FOREGROUND_BACKGROUND;
            }
            return null;
        }
        return APPLICATION_PROCESS_STATE_UNKNOWN;
    }

    public static C2665x.AbstractC2669d<ApplicationProcessState> internalGetValueMap() {
        return f10715f;
    }

    public static C2665x.AbstractC2670e internalGetVerifier() {
        return C2453b.f10717a;
    }

    @Deprecated
    public static ApplicationProcessState valueOf(int i) {
        return forNumber(i);
    }

    @Override // com.google.protobuf.C2665x.AbstractC2668c
    public final int getNumber() {
        return this.value;
    }
}
