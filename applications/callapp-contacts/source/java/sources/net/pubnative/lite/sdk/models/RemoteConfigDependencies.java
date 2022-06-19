package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigDependencies.class */
public class RemoteConfigDependencies extends JsonModel {
    @BindField
    public List<String> metadata;
    @BindField
    public List<String> models;

    public RemoteConfigDependencies() {
    }

    public RemoteConfigDependencies(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
