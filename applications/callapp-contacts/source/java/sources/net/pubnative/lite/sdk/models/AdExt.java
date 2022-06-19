package net.pubnative.lite.sdk.models;

import java.util.Map;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdExt.class */
public class AdExt extends JsonModel {
    @BindField
    protected Map meta;

    public AdExt(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
