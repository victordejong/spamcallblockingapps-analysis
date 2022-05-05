package com.google.firebase.crashlytics.internal.settings.model;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/model/SettingsData.class */
public class SettingsData implements AbstractC1353Settings {
    public final AppSettingsData appData;
    public final int cacheDuration;
    public final long expiresAtMillis;
    public final FeaturesSettingsData featuresData;
    public final SessionSettingsData sessionData;
    public final int settingsVersion;

    public SettingsData(long j, AppSettingsData appSettingsData, SessionSettingsData sessionSettingsData, FeaturesSettingsData featuresSettingsData, int i, int i2) {
        this.expiresAtMillis = j;
        this.appData = appSettingsData;
        this.sessionData = sessionSettingsData;
        this.featuresData = featuresSettingsData;
        this.settingsVersion = i;
        this.cacheDuration = i2;
    }

    public AppSettingsData getAppSettingsData() {
        return this.appData;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings
    public int getCacheDuration() {
        return this.cacheDuration;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings
    public long getExpiresAtMillis() {
        return this.expiresAtMillis;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings
    public FeaturesSettingsData getFeaturesData() {
        return this.featuresData;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings
    public SessionSettingsData getSessionData() {
        return this.sessionData;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings
    public int getSettingsVersion() {
        return this.settingsVersion;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings
    public boolean isExpired(long j) {
        return this.expiresAtMillis < j;
    }
}
