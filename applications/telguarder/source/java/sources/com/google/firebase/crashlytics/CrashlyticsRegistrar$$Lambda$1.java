package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar$$Lambda$1.class */
final /* synthetic */ class CrashlyticsRegistrar$$Lambda$1 implements ComponentFactory {
    private final CrashlyticsRegistrar arg$1;

    private CrashlyticsRegistrar$$Lambda$1(CrashlyticsRegistrar crashlyticsRegistrar) {
        this.arg$1 = crashlyticsRegistrar;
    }

    public static ComponentFactory lambdaFactory$(CrashlyticsRegistrar crashlyticsRegistrar) {
        return new CrashlyticsRegistrar$$Lambda$1(crashlyticsRegistrar);
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object create(ComponentContainer componentContainer) {
        FirebaseCrashlytics buildCrashlytics;
        buildCrashlytics = this.arg$1.buildCrashlytics(componentContainer);
        return buildCrashlytics;
    }
}
