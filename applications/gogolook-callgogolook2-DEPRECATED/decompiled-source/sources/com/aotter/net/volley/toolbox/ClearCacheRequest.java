package com.aotter.net.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.aotter.net.volley.Cache;
import com.aotter.net.volley.NetworkResponse;
import com.aotter.net.volley.Request;
import com.aotter.net.volley.Response;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/ClearCacheRequest.class */
public class ClearCacheRequest extends Request<Object> {
    public final Cache mCache;
    public final Runnable mCallback;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.mCache = cache;
        this.mCallback = runnable;
    }

    @Override // com.aotter.net.volley.Request
    public void deliverResponse(Object obj) {
    }

    @Override // com.aotter.net.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.aotter.net.volley.Request
    public boolean isCanceled() {
        this.mCache.clear();
        if (this.mCallback == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.mCallback);
        return true;
    }

    @Override // com.aotter.net.volley.Request
    public Response<Object> parseNetworkResponse(NetworkResponse networkResponse) {
        return null;
    }
}
