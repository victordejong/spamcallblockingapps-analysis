package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdAudience.class */
public class IdAudience extends JsonModel {
    @BindField
    public String id;
    @BindField
    public String ts;
    @BindField
    public String type;

    public IdAudience() {
    }

    public IdAudience(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
