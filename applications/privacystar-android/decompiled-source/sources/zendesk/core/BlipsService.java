package zendesk.core;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsService.class */
public interface BlipsService {
    @GET("/embeddable_blip")
    Call<Void> send(@Query("data") String str);
}
