package zendesk.support;

import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* loaded from: classes3-dex2jar.jar:zendesk/support/UploadService.class */
interface UploadService {
    @DELETE("/api/mobile/uploads/{token}.json")
    Call<Void> deleteAttachment(@Path("token") String str);

    @POST("/api/mobile/uploads.json")
    Call<UploadResponseWrapper> uploadAttachment(@Query("filename") String str, @Body RequestBody requestBody);
}
