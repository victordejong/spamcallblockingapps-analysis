package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.CallLog;
import com.tmobile.services.nameid.model.CategorySettingList;
import com.tmobile.services.nameid.model.EventSummary;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LookupResponse;
import com.tmobile.services.nameid.model.ReportRequest;
import com.tmobile.services.nameid.model.UserPreferenceItemPostRequest;
import com.tmobile.services.nameid.model.UserPreferencePutRequest;
import com.tmobile.services.nameid.model.UserPreferenceResponse;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.UserPreferenceTransaction;
import io.reactivex.Observable;
import javax.annotation.Nullable;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/ActivityLogApi.class */
public interface ActivityLogApi {
    @GET("categories/{version}/{number}")
    /* renamed from: a */
    Observable<CategorySettingList> mo5504a(@Path("version") int i, @Path("number") String str);

    @DELETE("userpreference/{version}/{number}/{prefId}")
    /* renamed from: b */
    Observable<Response<Void>> mo5503b(@Path("version") int i, @Path("number") String str, @Path("prefId") String str2);

    @PUT("userpreference/{version}/{number}/{prefId}")
    /* renamed from: c */
    Observable<Response<Void>> mo5502c(@Path("version") int i, @Path("number") String str, @Path("prefId") String str2, @Body UserPreferencePutRequest userPreferencePutRequest);

    @POST("userpreference/{version}/{number}")
    /* renamed from: d */
    Observable<UserPreferenceTransaction> mo5501d(@Path("version") int i, @Path("number") String str, @Body UserPreferenceItemPostRequest userPreferenceItemPostRequest);

    @GET("featurestate/{version}/{number}")
    /* renamed from: e */
    Call<FeatureState> mo5500e(@Path("version") int i, @Path("number") String str);

    @GET("lookup/{version}/{number}/{callerNumber}/true")
    /* renamed from: f */
    Observable<LookupResponse> mo5499f(@Path("version") int i, @Path("number") String str, @Path("callerNumber") String str2);

    @GET("lookup/{version}/{number}/{callerNumber}")
    /* renamed from: g */
    Observable<LookupResponse> mo5498g(@Path("version") int i, @Path("number") String str, @Path("callerNumber") String str2);

    @GET("featurestate/{version}/{number}")
    /* renamed from: h */
    Observable<FeatureState> mo5497h(@Path("version") int i, @Path("number") String str);

    @GET("userpreference/{version}/{number}")
    /* renamed from: i */
    Observable<UserPreferenceResponse> mo5496i(@Path("version") int i, @Path("number") String str, @Nullable @Query("pagesize") Integer num, @Nullable @Query("filter") String str2);

    @POST("reports/{version}/{number}")
    /* renamed from: j */
    Observable<Response<Void>> mo5495j(@Path("version") int i, @Path("number") String str, @Body ReportRequest reportRequest);

    @GET("calllog/{version}/{number}")
    /* renamed from: k */
    Observable<CallLog> mo5494k(@Path("version") int i, @Path("number") String str, @Query("page") Integer num, @Nullable @Query("pagesize") Integer num2, @Nullable @Query("filter") String str2);

    @GET("userpreferencepoststatus/{version}/{number}/{transactionId}")
    /* renamed from: l */
    Observable<UserPreferenceStatus> mo5493l(@Path("version") int i, @Path("number") String str, @Path("transactionId") String str2);

    @GET("eventsummary/{version}/{msisdn}")
    /* renamed from: m */
    Observable<EventSummary> mo5492m(@Path("version") int i, @Path("msisdn") String str, @Query("commeventtype") int i2, @Query("utcoffset") int i3, @Query("page") int i4, @Query("pagesize") int i5, @Nullable @Query("filter") String str2, @Nullable @Query("sortby") String str3);

    @POST("categories/{version}/{number}")
    /* renamed from: n */
    Observable<Response<Void>> mo5491n(@Path("version") int i, @Path("number") String str, @Body CategorySettingList categorySettingList);
}
