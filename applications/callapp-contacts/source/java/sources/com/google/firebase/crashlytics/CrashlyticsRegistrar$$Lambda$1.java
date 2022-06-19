package com.google.firebase.crashlytics;

import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15633h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1.class */
final /* synthetic */ class CrashlyticsRegistrar$$Lambda$1 implements AbstractC15633h {
    private final CrashlyticsRegistrar arg$1;

    private CrashlyticsRegistrar$$Lambda$1(CrashlyticsRegistrar crashlyticsRegistrar) {
        this.arg$1 = crashlyticsRegistrar;
    }

    public static AbstractC15633h lambdaFactory$(CrashlyticsRegistrar crashlyticsRegistrar) {
        return new CrashlyticsRegistrar$$Lambda$1(crashlyticsRegistrar);
    }

    @Override // com.google.firebase.components.AbstractC15633h
    public final Object create(AbstractC15627e abstractC15627e) {
        FirebaseCrashlytics buildCrashlytics;
        buildCrashlytics = this.arg$1.buildCrashlytics(abstractC15627e);
        return buildCrashlytics;
    }
}
