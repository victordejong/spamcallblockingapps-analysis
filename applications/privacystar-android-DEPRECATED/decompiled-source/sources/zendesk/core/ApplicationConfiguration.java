package zendesk.core;

import android.support.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3-dex2jar.jar:zendesk/core/ApplicationConfiguration.class */
public class ApplicationConfiguration {
    private String applicationId;
    private String oauthClientId;
    private String zendeskUrl;

    public ApplicationConfiguration(String str, String str2, String str3) {
        this.applicationId = str;
        this.zendeskUrl = str2;
        this.oauthClientId = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ApplicationConfiguration applicationConfiguration = (ApplicationConfiguration) obj;
        if (this.applicationId != null) {
            if (!this.applicationId.equals(applicationConfiguration.applicationId)) {
                return false;
            }
        } else if (applicationConfiguration.applicationId != null) {
            return false;
        }
        if (this.zendeskUrl != null) {
            if (!this.zendeskUrl.equals(applicationConfiguration.zendeskUrl)) {
                return false;
            }
        } else if (applicationConfiguration.zendeskUrl != null) {
            return false;
        }
        if (this.oauthClientId != null) {
            z = this.oauthClientId.equals(applicationConfiguration.oauthClientId);
        } else if (applicationConfiguration.oauthClientId != null) {
            z = false;
        }
        return z;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getOauthClientId() {
        return this.oauthClientId;
    }

    public String getZendeskUrl() {
        return this.zendeskUrl;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.applicationId != null ? this.applicationId.hashCode() : 0;
        int hashCode2 = this.zendeskUrl != null ? this.zendeskUrl.hashCode() : 0;
        if (this.oauthClientId != null) {
            i = this.oauthClientId.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }
}
