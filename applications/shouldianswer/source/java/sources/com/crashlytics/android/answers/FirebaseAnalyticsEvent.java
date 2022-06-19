package com.crashlytics.android.answers;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/FirebaseAnalyticsEvent.class */
public class FirebaseAnalyticsEvent {
    private final String eventName;
    private final Bundle eventParams;

    public FirebaseAnalyticsEvent(String str, Bundle bundle) {
        this.eventName = str;
        this.eventParams = bundle;
    }

    public String getEventName() {
        return this.eventName;
    }

    public Bundle getEventParams() {
        return this.eventParams;
    }
}
