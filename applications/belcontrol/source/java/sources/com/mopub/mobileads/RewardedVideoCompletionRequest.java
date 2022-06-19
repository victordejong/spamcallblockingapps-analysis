package com.mopub.mobileads;

import android.content.Context;
import com.mopub.network.MoPubRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequest.class */
public class RewardedVideoCompletionRequest extends MoPubRequest<Integer> {

    /* renamed from: u */
    public final RewardedVideoCompletionRequestListener f4783u;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener.class */
    public interface RewardedVideoCompletionRequestListener extends Response.ErrorListener {
        @Override // com.mopub.volley.Response.ErrorListener
        /* synthetic */ void onErrorResponse(VolleyError volleyError);

        void onResponse(Integer num);
    }

    public RewardedVideoCompletionRequest(Context context, String str, RetryPolicy retryPolicy, RewardedVideoCompletionRequestListener rewardedVideoCompletionRequestListener) {
        super(context, str, rewardedVideoCompletionRequestListener);
        setShouldCache(false);
        setRetryPolicy(retryPolicy);
        this.f4783u = rewardedVideoCompletionRequestListener;
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<Integer> mo3087l(NetworkResponse networkResponse) {
        return Response.success(Integer.valueOf(networkResponse.statusCode), HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* renamed from: p */
    public void deliverResponse(Integer num) {
        this.f4783u.onResponse(num);
    }
}
