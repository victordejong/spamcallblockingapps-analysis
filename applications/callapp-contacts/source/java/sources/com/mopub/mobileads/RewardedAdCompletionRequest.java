package com.mopub.mobileads;

import android.content.Context;
import com.mopub.network.MoPubRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdCompletionRequest.class */
public class RewardedAdCompletionRequest extends MoPubRequest<Integer> {

    /* renamed from: a */
    final RewardedAdCompletionRequestListener f59438a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdCompletionRequest$RewardedAdCompletionRequestListener.class */
    public interface RewardedAdCompletionRequestListener extends Response.ErrorListener {
        void onResponse(Integer num);
    }

    public RewardedAdCompletionRequest(Context context, String str, RetryPolicy retryPolicy, RewardedAdCompletionRequestListener rewardedAdCompletionRequestListener) {
        super(context, str, rewardedAdCompletionRequestListener);
        setShouldCache(false);
        setRetryPolicy(retryPolicy);
        this.f59438a = rewardedAdCompletionRequestListener;
    }

    @Override // com.mopub.volley.Request
    public /* synthetic */ void deliverResponse(Object obj) {
        this.f59438a.onResponse((Integer) obj);
    }

    @Override // com.mopub.volley.Request
    public Response<Integer> parseNetworkResponse(NetworkResponse networkResponse) {
        return Response.success(Integer.valueOf(networkResponse.statusCode), HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
