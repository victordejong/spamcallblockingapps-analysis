package com.mopub.mobileads;

import android.content.Context;
import com.mopub.network.MoPubRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequest.class */
public class RewardedVideoCompletionRequest extends MoPubRequest<Integer> {

    /* renamed from: s */
    public final RewardedVideoCompletionRequestListener f34219s;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener.class */
    public interface RewardedVideoCompletionRequestListener extends Response.ErrorListener {
        void onResponse(Integer num);
    }

    public RewardedVideoCompletionRequest(Context context, String str, RetryPolicy retryPolicy, RewardedVideoCompletionRequestListener rewardedVideoCompletionRequestListener) {
        super(context, str, rewardedVideoCompletionRequestListener);
        setShouldCache(false);
        setRetryPolicy(retryPolicy);
        this.f34219s = rewardedVideoCompletionRequestListener;
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<Integer> mo3669a(NetworkResponse networkResponse) {
        return Response.success(Integer.valueOf(networkResponse.statusCode), HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* renamed from: a */
    public void deliverResponse(Integer num) {
        this.f34219s.onResponse(num);
    }
}
