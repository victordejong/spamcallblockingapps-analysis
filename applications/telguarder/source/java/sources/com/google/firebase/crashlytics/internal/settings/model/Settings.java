package com.google.firebase.crashlytics.internal.settings.model;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/model/Settings.class */
public interface Settings {
    int getCacheDuration();

    long getExpiresAtMillis();

    FeaturesSettingsData getFeaturesData();

    SessionSettingsData getSessionData();

    int getSettingsVersion();

    boolean isExpired(long j);
}
