package net.pubnative.lite.sdk.consent.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/models/UserConsentModel.class */
public class UserConsentModel extends JsonModel {
    @BindField
    private boolean consent;

    public UserConsentModel() {
    }

    public UserConsentModel(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }

    public boolean isConsented() {
        return this.consent;
    }
}
