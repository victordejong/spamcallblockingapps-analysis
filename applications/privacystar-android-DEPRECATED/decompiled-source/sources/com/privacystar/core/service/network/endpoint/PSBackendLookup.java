package com.privacystar.core.service.network.endpoint;

import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.BulkLookupRequest;
import com.privacystar.core.service.network.model.request.BulkLookupStatusRequest;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.service.network.model.response.BulkLookupResponse;
import com.privacystar.core.service.network.model.response.BulkLookupStatusResponse;
import com.privacystar.core.service.network.model.response.LookupResponse;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/endpoint/PSBackendLookup.class */
public interface PSBackendLookup {
    @POST("n/bulk_lookup")
    Call<BulkLookupResponse> bulkLookup(@Body BulkLookupRequest bulkLookupRequest);

    @POST("n/bulk_lookup_status")
    Call<BulkLookupStatusResponse> bulkLookupStatus(@Body BulkLookupStatusRequest bulkLookupStatusRequest);

    @POST("204")
    Call<EmptyObject> check204(@Body RequestBody requestBody);

    @POST("n/lookup")
    Call<LookupResponse> lookupNumber(@Body LookupRequest lookupRequest);
}
