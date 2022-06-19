package net.pubnative.lite.sdk.consent.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/models/UserConsentRequestModel.class */
public class UserConsentRequestModel extends JsonModel {
    @BindField
    private boolean consent;
    @BindField
    private String did;
    @BindField
    private String did_type;

    public UserConsentRequestModel(String str, String str2, boolean z) {
        this.did = str;
        this.did_type = str2;
        this.consent = z;
    }

    public UserConsentRequestModel(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }

    public boolean getConsent() {
        return this.consent;
    }

    public String getDeviceId() {
        return this.did;
    }

    public String getDeviceIdType() {
        return this.did_type;
    }
}
