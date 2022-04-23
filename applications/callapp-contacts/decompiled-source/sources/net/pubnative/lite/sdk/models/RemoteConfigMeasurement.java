package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigMeasurement.class */
public class RemoteConfigMeasurement extends JsonModel {
    @BindField
    public Boolean viewability;

    public RemoteConfigMeasurement() {
    }

    public RemoteConfigMeasurement(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
