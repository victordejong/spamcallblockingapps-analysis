package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigParams.class */
public class RemoteConfigParams extends JsonModel {
    @BindField
    public Integer distance_threshold;
    @BindField
    public RemoteConfigResolutions resolutions;
    @BindField
    public List<String> wl_taxonomy2;
    @BindField
    public List<String> wl_taxonomy3;

    public RemoteConfigParams() {
    }

    public RemoteConfigParams(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
