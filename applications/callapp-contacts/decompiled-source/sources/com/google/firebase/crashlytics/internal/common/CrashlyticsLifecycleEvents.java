package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/CrashlyticsLifecycleEvents.class */
interface CrashlyticsLifecycleEvents {
    void onBeginSession(String str, long j);

    void onCustomKey(String str, String str2);

    void onLog(long j, String str);

    void onUserId(String str);
}
