package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigVoyager.class */
public class RemoteConfigVoyager extends JsonModel {
    @BindField
    public RemoteConfigAppInfo app_info;
    @BindField
    public Integer audience_refresh_frequency;
    @BindField
    public List<RemoteConfigAudience> audiences;
    @BindField
    public List<RemoteConfigMetadata> metadata;
    @BindField
    public List<RemoteConfigMLModel> models;
    @BindField
    public Integer session_sample;
    @BindField
    public String vg_encoding;
    @BindField
    public String vg_targeting_key;

    public RemoteConfigVoyager() {
    }

    public RemoteConfigVoyager(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
