package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdBattery.class */
public class IdBattery extends JsonModel {
    @BindField
    public String capacity;
    @BindField
    public Boolean charging;

    public IdBattery() {
    }

    public IdBattery(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
