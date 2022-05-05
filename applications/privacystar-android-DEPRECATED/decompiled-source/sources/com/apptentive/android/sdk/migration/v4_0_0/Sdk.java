package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/Sdk.class */
public class Sdk extends JSONObject {
    private static final String KEY_AUTHOR_EMAIL = "author_email";
    private static final String KEY_AUTHOR_NAME = "author_name";
    private static final String KEY_DISTRIBUTION = "distribution";
    private static final String KEY_DISTRIBUTION_VERSION = "distribution_version";
    private static final String KEY_PLATFORM = "platform";
    private static final String KEY_PROGRAMMING_LANGUAGE = "programming_language";
    private static final String KEY_VERSION = "version";

    public Sdk(String str) throws JSONException {
        super(str);
    }

    public String getAuthorEmail() {
        try {
            if (!isNull(KEY_AUTHOR_EMAIL)) {
                return getString(KEY_AUTHOR_EMAIL);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getAuthorName() {
        try {
            if (!isNull(KEY_AUTHOR_NAME)) {
                return getString(KEY_AUTHOR_NAME);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getDistribution() {
        try {
            if (!isNull(KEY_DISTRIBUTION)) {
                return getString(KEY_DISTRIBUTION);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getDistributionVersion() {
        try {
            if (!isNull(KEY_DISTRIBUTION_VERSION)) {
                return getString(KEY_DISTRIBUTION_VERSION);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getPlatform() {
        try {
            if (!isNull(KEY_PLATFORM)) {
                return getString(KEY_PLATFORM);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getProgrammingLanguage() {
        try {
            if (!isNull(KEY_PROGRAMMING_LANGUAGE)) {
                return getString(KEY_PROGRAMMING_LANGUAGE);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getVersion() {
        try {
            if (!isNull("version")) {
                return getString("version");
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public void setAuthorEmail(String str) {
        try {
            put(KEY_AUTHOR_EMAIL, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", KEY_AUTHOR_EMAIL);
        }
    }

    public void setAuthorName(String str) {
        try {
            put(KEY_AUTHOR_NAME, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", KEY_AUTHOR_NAME);
        }
    }

    public void setDistribution(String str) {
        try {
            put(KEY_DISTRIBUTION, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", KEY_DISTRIBUTION);
        }
    }

    public void setDistributionVersion(String str) {
        try {
            put(KEY_DISTRIBUTION_VERSION, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", KEY_DISTRIBUTION_VERSION);
        }
    }

    public void setPlatform(String str) {
        try {
            put(KEY_PLATFORM, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", KEY_PLATFORM);
        }
    }

    public void setProgrammingLanguage(String str) {
        try {
            put(KEY_PROGRAMMING_LANGUAGE, str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", KEY_PROGRAMMING_LANGUAGE);
        }
    }

    public void setVersion(String str) {
        try {
            put("version", str);
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error adding %s to Sdk.", "version");
        }
    }
}
