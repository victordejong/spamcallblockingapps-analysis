package com.google.firebase.crashlytics.internal.settings;

import com.google.android.gms.tasks.AbstractC14185h;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import com.google.firebase.crashlytics.internal.settings.model.Settings;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/SettingsDataProvider.class */
public interface SettingsDataProvider {
    AbstractC14185h<AppSettingsData> getAppSettings();

    Settings getSettings();
}
