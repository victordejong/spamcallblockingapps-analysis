package com.google.firebase.crashlytics;

import com.google.android.gms.tasks.h;
import com.google.firebase.analytics.connector.a;
import com.google.firebase.b;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/FirebaseCrashlytics.class */
public class FirebaseCrashlytics {
    private static final int APP_EXCEPTION_CALLBACK_TIMEOUT_MS = 500;
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    private static final String FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN = "clx";
    private static final String LEGACY_CRASH_ANALYTICS_ORIGIN = "crash";
    private final CrashlyticsCore core;

    private FirebaseCrashlytics(CrashlyticsCore crashlyticsCore) {
        this.core = crashlyticsCore;
    }

    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) b.d().a(FirebaseCrashlytics.class);
        Objects.requireNonNull(firebaseCrashlytics, "FirebaseCrashlytics component is not present.");
        return firebaseCrashlytics;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [com.google.firebase.crashlytics.CrashlyticsAnalyticsListener] */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.google.firebase.crashlytics.internal.analytics.CrashlyticsOriginAnalyticsEventLogger] */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver, com.google.firebase.crashlytics.internal.analytics.BlockingAnalyticsEventLogger] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.crashlytics.FirebaseCrashlytics init(com.google.firebase.b r10, com.google.firebase.installations.h r11, com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent r12, com.google.firebase.analytics.connector.a r13) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.FirebaseCrashlytics.init(com.google.firebase.b, com.google.firebase.installations.h, com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent, com.google.firebase.analytics.connector.a):com.google.firebase.crashlytics.FirebaseCrashlytics");
    }

    private static a.AbstractC0513a subscribeToAnalyticsEvents(a aVar, CrashlyticsAnalyticsListener crashlyticsAnalyticsListener) {
        a.AbstractC0513a a2 = aVar.a(FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN, crashlyticsAnalyticsListener);
        a.AbstractC0513a aVar2 = a2;
        if (a2 == null) {
            Logger.getLogger().d("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            a.AbstractC0513a a3 = aVar.a(LEGACY_CRASH_ANALYTICS_ORIGIN, crashlyticsAnalyticsListener);
            aVar2 = a3;
            if (a3 != null) {
                Logger.getLogger().w("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
                aVar2 = a3;
            }
        }
        return aVar2;
    }

    public h<Boolean> checkForUnsentReports() {
        return this.core.checkForUnsentReports();
    }

    public void deleteUnsentReports() {
        this.core.deleteUnsentReports();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.core.didCrashOnPreviousExecution();
    }

    public void log(String str) {
        this.core.log(str);
    }

    public void recordException(Throwable th) {
        if (th == null) {
            Logger.getLogger().w("A null value was passed to recordException. Ignoring.");
        } else {
            this.core.logException(th);
        }
    }

    public void sendUnsentReports() {
        this.core.sendUnsentReports();
    }

    public void setCrashlyticsCollectionEnabled(Boolean bool) {
        this.core.setCrashlyticsCollectionEnabled(bool);
    }

    public void setCrashlyticsCollectionEnabled(boolean z) {
        this.core.setCrashlyticsCollectionEnabled(Boolean.valueOf(z));
    }

    public void setCustomKey(String str, double d2) {
        this.core.setCustomKey(str, Double.toString(d2));
    }

    public void setCustomKey(String str, float f) {
        this.core.setCustomKey(str, Float.toString(f));
    }

    public void setCustomKey(String str, int i) {
        this.core.setCustomKey(str, Integer.toString(i));
    }

    public void setCustomKey(String str, long j) {
        this.core.setCustomKey(str, Long.toString(j));
    }

    public void setCustomKey(String str, String str2) {
        this.core.setCustomKey(str, str2);
    }

    public void setCustomKey(String str, boolean z) {
        this.core.setCustomKey(str, Boolean.toString(z));
    }

    public void setCustomKeys(CustomKeysAndValues customKeysAndValues) {
        this.core.setCustomKeys(customKeysAndValues.keysAndValues);
    }

    public void setUserId(String str) {
        this.core.setUserId(str);
    }
}
