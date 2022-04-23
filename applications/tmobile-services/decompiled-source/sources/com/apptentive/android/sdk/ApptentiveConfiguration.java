package com.apptentive.android.sdk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.module.engagement.interaction.model.TermsAndConditions;
import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveConfiguration.class */
public class ApptentiveConfiguration {
    private final String apptentiveKey;
    private final String apptentiveSignature;
    private String baseURL;
    private Encryption encryption;
    private ApptentiveLog.Level logLevel;
    private boolean shouldCollectAndroidIdOnPreOreoTargets;
    private boolean shouldEncryptStorage;
    private boolean shouldSanitizeLogMessages;
    private TermsAndConditions surveyTermsAndConditions;
    private boolean troubleshootingModeEnabled;

    public ApptentiveConfiguration(@NonNull String str, @NonNull String str2) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Apptentive key is null or empty");
        } else if (!StringUtils.isNullOrEmpty(str2)) {
            this.apptentiveKey = str.trim();
            this.apptentiveSignature = str2.trim();
            this.logLevel = ApptentiveLog.Level.INFO;
            this.shouldEncryptStorage = false;
            this.shouldSanitizeLogMessages = true;
            this.troubleshootingModeEnabled = true;
            this.shouldCollectAndroidIdOnPreOreoTargets = true;
            this.surveyTermsAndConditions = null;
        } else {
            throw new IllegalArgumentException("Apptentive signature is null or empty");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Encryption getEncryption() {
        return this.encryption;
    }

    public ApptentiveLog.Level getLogLevel() {
        return this.logLevel;
    }

    public TermsAndConditions getSurveyTermsAndConditions() {
        return this.surveyTermsAndConditions;
    }

    public boolean isTroubleshootingModeEnabled() {
        return this.troubleshootingModeEnabled;
    }

    public boolean shouldCollectAndroidIdOnPreOreoTargets() {
        return this.shouldCollectAndroidIdOnPreOreoTargets;
    }

    public boolean shouldEncryptStorage() {
        return this.shouldEncryptStorage;
    }

    public boolean shouldSanitizeLogMessages() {
        return this.shouldSanitizeLogMessages;
    }
}
