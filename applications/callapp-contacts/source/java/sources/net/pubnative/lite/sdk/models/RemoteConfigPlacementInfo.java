package net.pubnative.lite.sdk.models;

import java.util.Map;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigPlacementInfo.class */
public class RemoteConfigPlacementInfo extends JsonModel {
    @BindField
    public Map<String, RemoteConfigPlacement> placements;
    @BindField
    public Integer timeout;

    public RemoteConfigPlacementInfo() {
    }

    public RemoteConfigPlacementInfo(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
