package com.google.firebase.crashlytics.internal.settings.network;

import com.google.firebase.crashlytics.internal.settings.model.SettingsRequest;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/settings/network/SettingsSpiCall.class */
public interface SettingsSpiCall {
    JSONObject invoke(SettingsRequest settingsRequest, boolean z);
}
