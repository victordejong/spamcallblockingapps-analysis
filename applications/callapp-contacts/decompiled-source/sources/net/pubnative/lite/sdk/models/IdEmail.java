package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdEmail.class */
public class IdEmail extends JsonModel {
    @BindField
    public String email;

    public IdEmail() {
    }

    public IdEmail(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
