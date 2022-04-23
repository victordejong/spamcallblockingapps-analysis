package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ClearCacheRequest.class */
public class ClearCacheRequest extends Request<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f34823a;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f34824b;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.f34823a = cache;
        this.f34824b = runnable;
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
        this.f34823a.clear();
        if (this.f34824b == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.f34824b);
        return true;
    }

    @Override // com.mopub.volley.Request
    public Response<Object> parseNetworkResponse(NetworkResponse networkResponse) {
        return null;
    }
}
