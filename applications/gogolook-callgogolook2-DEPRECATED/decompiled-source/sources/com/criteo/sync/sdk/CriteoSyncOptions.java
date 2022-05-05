package com.criteo.sync.sdk;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/CriteoSyncOptions.class */
public class CriteoSyncOptions {
    public String integrationId = "";
    public boolean loggingEnabled = false;
    public boolean consentRequired = false;

    public String getIntegrationId() {
        return this.integrationId;
    }

    public boolean isConsentRequired() {
        return this.consentRequired;
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled;
    }

    public void setConsentRequired(boolean z) {
        this.consentRequired = z;
    }

    public void setIntegrationId(String str) {
        this.integrationId = str;
    }

    public void setLoggingEnabled(boolean z) {
        this.loggingEnabled = z;
    }

    public CriteoSyncOptions withConsentRequired(boolean z) {
        this.consentRequired = z;
        return this;
    }

    public CriteoSyncOptions withIntegrationId(String str) {
        this.integrationId = str;
        return this;
    }

    public CriteoSyncOptions withLoggingEnabled(boolean z) {
        this.loggingEnabled = z;
        return this;
    }
}
