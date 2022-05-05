package com.crashlytics.android.answers.shim;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/shim/NoopKitEventLogger.class */
class NoopKitEventLogger implements KitEventLogger {
    NoopKitEventLogger() {
    }

    public static KitEventLogger create() {
        return new NoopKitEventLogger();
    }

    @Override // com.crashlytics.android.answers.shim.KitEventLogger
    public void logKitEvent(KitEvent kitEvent) {
    }
}
