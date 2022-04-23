package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigAdSource.class */
public class RemoteConfigAdSource extends JsonModel {
    @BindField
    public Double eCPM;
    @BindField
    public Boolean enabled;
    @BindField
    public String name;
    @BindField
    public String type;
    @BindField
    public String vastTagUrl;

    public RemoteConfigAdSource() {
    }

    public RemoteConfigAdSource(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
