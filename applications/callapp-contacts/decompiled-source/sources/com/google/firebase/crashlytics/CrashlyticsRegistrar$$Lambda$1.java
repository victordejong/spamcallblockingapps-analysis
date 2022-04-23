package com.google.firebase.crashlytics;

import com.google.firebase.components.e;
import com.google.firebase.components.h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1.class */
final /* synthetic */ class CrashlyticsRegistrar$$Lambda$1 implements h {
    private final CrashlyticsRegistrar arg$1;

    private CrashlyticsRegistrar$$Lambda$1(CrashlyticsRegistrar crashlyticsRegistrar) {
        this.arg$1 = crashlyticsRegistrar;
    }

    public static h lambdaFactory$(CrashlyticsRegistrar crashlyticsRegistrar) {
        return new CrashlyticsRegistrar$$Lambda$1(crashlyticsRegistrar);
    }

    @Override // com.google.firebase.components.h
    public final Object create(e eVar) {
        return CrashlyticsRegistrar.access$lambda$0(this.arg$1, eVar);
    }
}
