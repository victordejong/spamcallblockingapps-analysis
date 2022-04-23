package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/PersonPayload.class */
public class PersonPayload extends JsonPayload {
    public static final String KEY = "person";
    private static final String KEY_BIRTHDAY = "birthday";
    private static final String KEY_CITY = "city";
    private static final String KEY_COUNTRY = "country";
    @SensitiveDataKey
    private static final String KEY_CUSTOM_DATA = "custom_data";
    private static final String KEY_EMAIL = "email";
    private static final String KEY_FACEBOOK_ID = "facebook_id";
    private static final String KEY_ID = "id";
    @SensitiveDataKey
    private static final String KEY_M_PARTICLE_ID = "mparticle_id";
    private static final String KEY_NAME = "name";
    private static final String KEY_PHONE_NUMBER = "phone_number";
    private static final String KEY_STREET = "street";
    private static final String KEY_ZIP = "zip";

    static {
        registerSensitiveKeys(PersonPayload.class);
    }

    public PersonPayload() {
        super(PayloadType.person);
    }

    public PersonPayload(String str) throws JSONException {
        super(PayloadType.person, str);
    }

    public CustomData getCustomData() {
        if (isNull("custom_data")) {
            return null;
        }
        try {
            return new CustomData(getJSONObject("custom_data"));
        } catch (JSONException e) {
            return null;
        }
    }

    public String getEmail() {
        return optString("email", null);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/person", str);
    }

    public String getId() {
        return optString("id", null);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "person";
    }

    public String getName() {
        return optString("name", null);
    }

    public void setBirthday(String str) {
        put(KEY_BIRTHDAY, str);
    }

    public void setCity(String str) {
        put("city", str);
    }

    public void setCountry(String str) {
        put(KEY_COUNTRY, str);
    }

    public void setCustomData(CustomData customData) {
        put("custom_data", customData);
    }

    public void setEmail(String str) {
        put("email", str);
    }

    public void setFacebookId(String str) {
        put(KEY_FACEBOOK_ID, str);
    }

    public void setId(String str) {
        put("id", str);
    }

    public void setMParticleId(String str) {
        put(KEY_M_PARTICLE_ID, str);
    }

    public void setName(String str) {
        put("name", str);
    }

    public void setPhoneNumber(String str) {
        put(KEY_PHONE_NUMBER, str);
    }

    public void setStreet(String str) {
        put(KEY_STREET, str);
    }

    public void setZip(String str) {
        put(KEY_ZIP, str);
    }
}
