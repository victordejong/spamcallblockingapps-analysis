package zendesk.core;

import com.google.gson.JsonElement;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Path;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SdkSettingsService.class */
interface SdkSettingsService {
    @GET("/api/private/mobile_sdk/settings/{applicationId}.json")
    Call<Map<String, JsonElement>> getSettings(@Header("Accept-Language") String str, @Path("applicationId") String str2);
}
