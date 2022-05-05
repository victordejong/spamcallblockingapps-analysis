package zendesk.core;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Query;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserService.class */
interface UserService {
    @POST("/api/mobile/user_tags.json")
    Call<UserResponse> addTags(@Body UserTagRequest userTagRequest);

    @DELETE("/api/mobile/user_tags/destroy_many.json")
    Call<UserResponse> deleteTags(@Query("tags") String str);

    @GET("/api/mobile/users/me.json")
    Call<UserResponse> getUser();

    @GET("/api/mobile/user_fields.json")
    Call<UserFieldResponse> getUserFields();

    @PUT("/api/mobile/users/me.json")
    Call<UserResponse> setUserFields(@Body UserFieldRequest userFieldRequest);
}
