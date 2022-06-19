package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigAppConfig.class */
public class RemoteConfigAppConfig extends JsonModel {
    @BindField
    public String api;
    @BindField
    public String app_token;

    public RemoteConfigAppConfig() {
    }

    public RemoteConfigAppConfig(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
