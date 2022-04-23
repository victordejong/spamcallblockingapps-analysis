package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/Sdk.class */
public class Sdk extends JSONObject {
    public Sdk(String str) throws JSONException {
        super(str);
    }

    public String getAuthorEmail() {
        try {
            if (!isNull("author_email")) {
                return getString("author_email");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getAuthorName() {
        try {
            if (!isNull("author_name")) {
                return getString("author_name");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getDistribution() {
        try {
            if (!isNull("distribution")) {
                return getString("distribution");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getDistributionVersion() {
        try {
            if (!isNull("distribution_version")) {
                return getString("distribution_version");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getPlatform() {
        try {
            if (!isNull("platform")) {
                return getString("platform");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getProgrammingLanguage() {
        try {
            if (!isNull("programming_language")) {
                return getString("programming_language");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getVersion() {
        try {
            if (!isNull(Apptentive.Version.TYPE)) {
                return getString(Apptentive.Version.TYPE);
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
