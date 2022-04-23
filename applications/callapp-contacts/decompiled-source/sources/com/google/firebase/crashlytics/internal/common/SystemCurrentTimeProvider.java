package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/SystemCurrentTimeProvider.class */
public class SystemCurrentTimeProvider implements CurrentTimeProvider {
    @Override // com.google.firebase.crashlytics.internal.common.CurrentTimeProvider
    public long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }
}
