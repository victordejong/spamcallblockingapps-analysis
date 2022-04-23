package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigMetadata.class */
public class RemoteConfigMetadata extends JsonModel {
    @BindField
    public RemoteConfigLastVersion last_version;
    @BindField
    public String name;

    public RemoteConfigMetadata() {
    }

    public RemoteConfigMetadata(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
