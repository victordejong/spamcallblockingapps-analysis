package net.pubnative.lite.sdk.models;

import java.util.List;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdResponse.class */
public class AdResponse extends JsonModel {
    @BindField
    public List<C20576Ad> ads;
    @BindField
    public String error_message;
    @BindField
    public List<AdExt> ext;
    @BindField
    public String status;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdResponse$Status.class */
    public interface Status {
        public static final String ERROR = "error";

        /* renamed from: OK */
        public static final String f67069OK = "ok";
    }

    public AdResponse() {
    }

    public AdResponse(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }
}
