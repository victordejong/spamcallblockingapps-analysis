package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/RemoteConfigResolutions.class */
public class RemoteConfigResolutions extends JsonModel {
    @BindField
    public String audience_id;
    @BindField
    public Integer end_time;
    @BindField
    public Integer start_time;
    @BindField
    public List<String> taxonomy_2_ids;
    @BindField
    public List<String> taxonomy_3_ids;
    @BindField
    public Integer upper_limit;

    public RemoteConfigResolutions() {
    }

    public RemoteConfigResolutions(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
