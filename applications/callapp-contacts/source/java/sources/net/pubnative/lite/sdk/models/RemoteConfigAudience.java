package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigAudience.class */
public class RemoteConfigAudience extends JsonModel {
    @BindField
    public RemoteConfigDependencies dependencies;
    @BindField
    public Double min_score;
    @BindField
    public String name;
    @BindField
    public RemoteConfigParams params;
    @BindField
    public Boolean requires_geolocation;

    public RemoteConfigAudience() {
    }

    public RemoteConfigAudience(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
