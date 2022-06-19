package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdModel.class */
public class IdModel extends JsonModel {
    @BindField
    public List<IdApp> apps;
    @BindField
    public IdDevice device;
    @BindField
    public List<IdUser> users;

    public IdModel() {
    }

    public IdModel(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
