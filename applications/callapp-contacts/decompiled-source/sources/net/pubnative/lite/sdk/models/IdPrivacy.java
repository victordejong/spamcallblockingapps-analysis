package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdPrivacy.class */
public class IdPrivacy extends JsonModel {
    @BindField
    public String iab_ccpa;
    @BindField
    public Boolean lat;
    @BindField
    public String tcfv1;
    @BindField
    public String tcfv2;

    public IdPrivacy() {
    }

    public IdPrivacy(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
