package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONException;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/PersonPayload.class */
public class PersonPayload extends JsonPayload {
    static {
        JsonPayload.registerSensitiveKeys(PersonPayload.class);
    }

    public PersonPayload() {
        super(PayloadType.person);
    }

    public PersonPayload(String str) throws JSONException {
        super(PayloadType.person, str);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/person", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload
    protected String getJsonContainer() {
        return "person";
    }

    public void setBirthday(String str) {
        put("birthday", str);
    }

    public void setCity(String str) {
        put("city", str);
    }

    public void setCountry(String str) {
        put("country", str);
    }

    public void setCustomData(CustomData customData) {
        put("custom_data", customData);
    }

    public void setEmail(String str) {
        put("email", str);
    }

    public void setFacebookId(String str) {
        put("facebook_id", str);
    }

    public void setId(String str) {
        put(Name.MARK, str);
    }

    public void setMParticleId(String str) {
        put("mparticle_id", str);
    }

    public void setName(String str) {
        put("name", str);
    }

    public void setPhoneNumber(String str) {
        put("phone_number", str);
    }

    public void setStreet(String str) {
        put("street", str);
    }

    public void setZip(String str) {
        put("zip", str);
    }
}
