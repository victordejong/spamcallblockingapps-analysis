package com.crashlytics.android.answers;

import android.annotation.SuppressLint;
import android.content.Context;
import io.fabric.sdk.android.services.persistence.PreferenceStore;
import io.fabric.sdk.android.services.persistence.PreferenceStoreImpl;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersPreferenceManager.class */
class AnswersPreferenceManager {
    static final String PREFKEY_ANALYTICS_LAUNCHED = "analytics_launched";
    static final String PREF_STORE_NAME = "settings";
    private final PreferenceStore prefStore;

    AnswersPreferenceManager(PreferenceStore preferenceStore) {
        this.prefStore = preferenceStore;
    }

    public static AnswersPreferenceManager build(Context context) {
        return new AnswersPreferenceManager(new PreferenceStoreImpl(context, PREF_STORE_NAME));
    }

    @SuppressLint({"CommitPrefEdits"})
    public boolean hasAnalyticsLaunched() {
        return this.prefStore.get().getBoolean(PREFKEY_ANALYTICS_LAUNCHED, false);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void setAnalyticsLaunched() {
        this.prefStore.save(this.prefStore.edit().putBoolean(PREFKEY_ANALYTICS_LAUNCHED, true));
    }
}
