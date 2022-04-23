package com.apptentive.android.sdk;

import android.support.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveConfiguration.class */
public class ApptentiveConfiguration {
    private final String apptentiveKey;
    private final String apptentiveSignature;
    private String baseURL;
    private ApptentiveLog.Level logLevel;
    private boolean shouldSanitizeLogMessages;
    private boolean troubleshootingModeEnabled;

    public ApptentiveConfiguration(@NonNull String str, @NonNull String str2) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Apptentive key is null or empty");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Apptentive signature is null or empty");
        } else {
            this.apptentiveKey = str.trim();
            this.apptentiveSignature = str2.trim();
            this.logLevel = ApptentiveLog.Level.INFO;
            this.shouldSanitizeLogMessages = true;
            this.troubleshootingModeEnabled = true;
        }
    }

    public String getApptentiveKey() {
        return this.apptentiveKey;
    }

    public String getApptentiveSignature() {
        return this.apptentiveSignature;
    }

    public String getBaseURL() {
        return this.baseURL;
    }

    public ApptentiveLog.Level getLogLevel() {
        return this.logLevel;
    }

    public boolean isTroubleshootingModeEnabled() {
        return this.troubleshootingModeEnabled;
    }

    public ApptentiveConfiguration setBaseURL(String str) {
        this.baseURL = str;
        return this;
    }

    public ApptentiveConfiguration setLogLevel(ApptentiveLog.Level level) {
        this.logLevel = level;
        return this;
    }

    public void setShouldSanitizeLogMessages(boolean z) {
        this.shouldSanitizeLogMessages = z;
    }

    public ApptentiveConfiguration setTroubleshootingModeEnabled(boolean z) {
        this.troubleshootingModeEnabled = z;
        return this;
    }

    public boolean shouldSanitizeLogMessages() {
        return this.shouldSanitizeLogMessages;
    }
}
