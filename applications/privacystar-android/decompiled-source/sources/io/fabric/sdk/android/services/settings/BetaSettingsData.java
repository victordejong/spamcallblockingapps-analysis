package io.fabric.sdk.android.services.settings;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/settings/BetaSettingsData.class */
public class BetaSettingsData {
    public final int updateSuspendDurationSeconds;
    public final String updateUrl;

    public BetaSettingsData(String str, int i) {
        this.updateUrl = str;
        this.updateSuspendDurationSeconds = i;
    }
}
