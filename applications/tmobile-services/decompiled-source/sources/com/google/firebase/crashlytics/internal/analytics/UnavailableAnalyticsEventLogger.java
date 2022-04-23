package com.google.firebase.crashlytics.internal.analytics;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.Logger;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/analytics/UnavailableAnalyticsEventLogger.class */
public class UnavailableAnalyticsEventLogger implements AnalyticsEventLogger {
    @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
    public void logEvent(@NonNull String str, @Nullable Bundle bundle) {
        Logger.getLogger().m8450d("Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
    }
}
