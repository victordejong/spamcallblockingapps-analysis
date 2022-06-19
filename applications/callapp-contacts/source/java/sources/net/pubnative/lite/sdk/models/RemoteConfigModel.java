package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigModel.class */
public class RemoteConfigModel extends JsonModel {
    @BindField
    public RemoteConfigAppConfig app_config;
    @BindField
    public String key;
    @BindField
    public RemoteConfigMeasurement measurement;
    @BindField
    public RemoteConfigPlacementInfo placement_info;
    @BindField
    public Integer ttl;
    @BindField
    public RemoteConfigVoyager voyager;

    public RemoteConfigModel() {
    }

    public RemoteConfigModel(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
