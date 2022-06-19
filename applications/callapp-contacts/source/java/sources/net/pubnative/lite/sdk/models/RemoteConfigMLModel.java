package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigMLModel.class */
public class RemoteConfigMLModel extends JsonModel {
    @BindField
    public RemoteConfigLastVersion last_version;
    @BindField
    public Double min_score;
    @BindField
    public String name;

    public RemoteConfigMLModel() {
    }

    public RemoteConfigMLModel(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
