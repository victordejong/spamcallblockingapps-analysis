package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ClearCacheRequest.class */
public class ClearCacheRequest extends Request<Object> {

    /* renamed from: a */
    private final Cache f60405a;

    /* renamed from: b */
    private final Runnable f60406b;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.f60405a = cache;
        this.f60406b = runnable;
    }

    @Override // com.mopub.volley.Request
    public void deliverResponse(Object obj) {
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.mopub.volley.Request
    public boolean isCanceled() {
        this.f60405a.clear();
        if (this.f60406b != null) {
            new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.f60406b);
            return true;
        }
        return true;
    }

    @Override // com.mopub.volley.Request
    public Response<Object> parseNetworkResponse(NetworkResponse networkResponse) {
        return null;
    }
}
