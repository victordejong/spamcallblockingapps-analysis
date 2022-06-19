package net.pubnative.lite.sdk.models;

import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdAudience.class */
public class IdAudience extends JsonModel {
    @BindField

    /* renamed from: id */
    public String f67071id;
    @BindField

    /* renamed from: ts */
    public String f67072ts;
    @BindField
    public String type;

    public IdAudience() {
    }

    public IdAudience(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
