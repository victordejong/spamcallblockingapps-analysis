package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigLastVersion.class */
public class RemoteConfigLastVersion extends JsonModel {
    @BindField
    public Integer input_size;
    @BindField
    public String publish_date;
    @BindField
    public String version_no;

    public RemoteConfigLastVersion() {
    }

    public RemoteConfigLastVersion(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
