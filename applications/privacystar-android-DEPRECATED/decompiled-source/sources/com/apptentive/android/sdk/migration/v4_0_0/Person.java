package com.apptentive.android.sdk.migration.v4_0_0;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/Person.class */
public class Person extends JSONObject {
    private static final String KEY_BIRTHDAY = "birthday";
    private static final String KEY_CITY = "city";
    private static final String KEY_COUNTRY = "country";
    private static final String KEY_CUSTOM_DATA = "custom_data";
    private static final String KEY_EMAIL = "email";
    private static final String KEY_FACEBOOK_ID = "facebook_id";
    private static final String KEY_ID = "id";
    private static final String KEY_NAME = "name";
    private static final String KEY_PHONE_NUMBER = "phone_number";
    private static final String KEY_STREET = "street";
    private static final String KEY_ZIP = "zip";

    public Person(String str) throws JSONException {
        super(str);
    }

    public String getBirthday() {
        try {
            if (!isNull(KEY_BIRTHDAY)) {
                return getString(KEY_BIRTHDAY);
            }
            return null;
        } catch (JSONException e) {
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
            return null;
        }
    }

    public String getCountry() {
        try {
            if (!isNull(KEY_COUNTRY)) {
                return getString(KEY_COUNTRY);
            }
            return null;
        } catch (JSONException e) {
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
            return null;
        }
    }

    public String getFacebookId() {
        try {
            if (!isNull(KEY_FACEBOOK_ID)) {
                return getString(KEY_FACEBOOK_ID);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getId() {
        try {
            if (!isNull("id")) {
                return getString("id");
            }
            return null;
        } catch (JSONException e) {
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
            return null;
        }
    }

    public String getPhoneNumber() {
        try {
            if (!isNull(KEY_PHONE_NUMBER)) {
                return getString(KEY_PHONE_NUMBER);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getStreet() {
        try {
            if (!isNull(KEY_STREET)) {
                return getString(KEY_STREET);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public String getZip() {
        try {
            if (!isNull(KEY_ZIP)) {
                return getString(KEY_ZIP);
            }
            return null;
        } catch (JSONException e) {
            return null;
        }
    }

    public void setBirthday(String str) {
        try {
            put(KEY_BIRTHDAY, str);
        } catch (JSONException e) {
        }
    }

    public void setCity(String str) {
        try {
            put("city", str);
        } catch (JSONException e) {
        }
    }

    public void setCountry(String str) {
        try {
            put(KEY_COUNTRY, str);
        } catch (JSONException e) {
        }
    }

    public void setCustomData(JSONObject jSONObject) {
        try {
            put("custom_data", jSONObject);
        } catch (JSONException e) {
        }
    }

    public void setEmail(String str) {
        try {
            put("email", str);
        } catch (JSONException e) {
        }
    }

    public void setFacebookId(String str) {
        try {
            put(KEY_FACEBOOK_ID, str);
        } catch (JSONException e) {
        }
    }

    public void setId(String str) {
        try {
            put("id", str);
        } catch (JSONException e) {
        }
    }

    public void setName(String str) {
        try {
            put("name", str);
        } catch (JSONException e) {
        }
    }

    public void setPhoneNumber(String str) {
        try {
            put(KEY_PHONE_NUMBER, str);
        } catch (JSONException e) {
        }
    }

    public void setStreet(String str) {
        try {
            put(KEY_STREET, str);
        } catch (JSONException e) {
        }
    }

    public void setZip(String str) {
        try {
            put(KEY_ZIP, str);
        } catch (JSONException e) {
        }
    }
}
