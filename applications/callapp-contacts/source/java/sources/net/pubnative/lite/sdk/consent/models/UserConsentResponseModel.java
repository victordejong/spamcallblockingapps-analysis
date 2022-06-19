package net.pubnative.lite.sdk.consent.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/models/UserConsentResponseModel.class */
public class UserConsentResponseModel extends JsonModel {
    @BindField
    private UserConsentModel data;
    @BindField
    private String error;
    @BindField
    private String status;

    public UserConsentResponseModel() {
    }

    public UserConsentResponseModel(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }

    public UserConsentModel getConsent() {
        return this.data;
    }

    public String getError() {
        return this.error;
    }

    public String getStatus() {
        return this.status;
    }
}
