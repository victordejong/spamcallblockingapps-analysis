package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigPlacement.class */
public class RemoteConfigPlacement extends JsonModel {
    @BindField
    public List<RemoteConfigAdSource> ad_sources;
    @BindField
    public Long timeout;
    @BindField
    public String type;

    public RemoteConfigPlacement() {
    }

    public RemoteConfigPlacement(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
