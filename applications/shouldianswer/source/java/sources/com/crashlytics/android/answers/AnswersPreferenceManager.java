package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.p071d.AbstractC1549c;
import io.fabric.sdk.android.services.p071d.C1550d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersPreferenceManager.class */
class AnswersPreferenceManager {
    static final String PREFKEY_ANALYTICS_LAUNCHED = "analytics_launched";
    static final String PREF_STORE_NAME = "settings";
    private final AbstractC1549c prefStore;

    AnswersPreferenceManager(AbstractC1549c abstractC1549c) {
        this.prefStore = abstractC1549c;
    }

    public static AnswersPreferenceManager build(Context context) {
        return new AnswersPreferenceManager(new C1550d(context, PREF_STORE_NAME));
    }

    public boolean hasAnalyticsLaunched() {
        return this.prefStore.mo3337a().getBoolean(PREFKEY_ANALYTICS_LAUNCHED, false);
    }

    public void setAnalyticsLaunched() {
        AbstractC1549c abstractC1549c = this.prefStore;
        abstractC1549c.mo3336a(abstractC1549c.mo3335b().putBoolean(PREFKEY_ANALYTICS_LAUNCHED, true));
    }
}
