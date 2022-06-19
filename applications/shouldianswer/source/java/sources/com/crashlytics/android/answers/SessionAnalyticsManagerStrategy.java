package com.crashlytics.android.answers;

import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.services.p069c.AbstractC1512e;
import io.fabric.sdk.android.services.p072e.C1552b;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/SessionAnalyticsManagerStrategy.class */
interface SessionAnalyticsManagerStrategy extends AbstractC1512e {
    void deleteAllEvents();

    void processEvent(SessionEvent.Builder builder);

    void sendEvents();

    void setAnalyticsSettingsData(C1552b c1552b, String str);
}
