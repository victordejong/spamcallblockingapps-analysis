package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/IdApp.class */
public class IdApp extends JsonModel {
    @BindField
    public String bundle_id;
    @BindField
    public IdPrivacy privacy;
    @BindField
    public List<IdAppUser> users;

    public IdApp() {
    }

    public IdApp(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
