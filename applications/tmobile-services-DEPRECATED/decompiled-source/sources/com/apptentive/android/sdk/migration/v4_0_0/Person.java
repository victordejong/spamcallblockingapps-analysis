package com.apptentive.android.sdk.migration.v4_0_0;

import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/Person.class */
public class Person extends JSONObject {
    public Person(String str) throws JSONException {
        super(str);
    }

    public String getBirthday() {
        try {
            if (!isNull("birthday")) {
                return getString("birthday");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getCity() {
        try {
            if (!isNull("city")) {
                return getString("city");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getCountry() {
        try {
            if (!isNull("country")) {
                return getString("country");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public JSONObject getCustomData() {
        if (isNull("custom_data")) {
            return null;
        }
        try {
            return getJSONObject("custom_data");
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getEmail() {
        try {
            if (!isNull("email")) {
                return getString("email");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getFacebookId() {
        try {
            if (!isNull("facebook_id")) {
                return getString("facebook_id");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getId() {
        try {
            if (!isNull(Name.MARK)) {
                return getString(Name.MARK);
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getName() {
        try {
            if (!isNull("name")) {
                return getString("name");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getPhoneNumber() {
        try {
            if (!isNull("phone_number")) {
                return getString("phone_number");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getStreet() {
        try {
            if (!isNull("street")) {
                return getString("street");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }

    public String getZip() {
        try {
            if (!isNull("zip")) {
                return getString("zip");
            }
            return null;
        } catch (JSONException e) {
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
