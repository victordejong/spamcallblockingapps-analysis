package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdOs.class */
public class IdOs extends JsonModel {
    @BindField
    public String build_signature;
    @BindField
    public String name;
    @BindField
    public String version;

    public IdOs() {
    }

    public IdOs(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
