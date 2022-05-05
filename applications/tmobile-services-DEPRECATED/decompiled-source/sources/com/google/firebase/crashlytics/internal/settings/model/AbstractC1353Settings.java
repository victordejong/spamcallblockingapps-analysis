package com.google.firebase.crashlytics.internal.settings.model;
/* renamed from: com.google.firebase.crashlytics.internal.settings.model.Settings */
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/model/Settings.class */
public interface AbstractC1353Settings {
    int getCacheDuration();

    long getExpiresAtMillis();

    FeaturesSettingsData getFeaturesData();

    SessionSettingsData getSessionData();

    int getSettingsVersion();

    boolean isExpired(long j);
}
