package com.google.firebase.crashlytics.internal.settings;

import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.settings.model.AbstractC1353Settings;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/SettingsDataProvider.class */
public interface SettingsDataProvider {
    Task<AppSettingsData> getAppSettings();

    AbstractC1353Settings getSettings();
}
