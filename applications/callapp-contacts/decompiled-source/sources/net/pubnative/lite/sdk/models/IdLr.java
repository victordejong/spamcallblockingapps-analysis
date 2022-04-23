package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdLr.class */
public class IdLr extends JsonModel {
    @BindField
    public String IDL;

    public IdLr() {
    }

    public IdLr(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
