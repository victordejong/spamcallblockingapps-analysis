package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ClearCacheRequest.class */
public class ClearCacheRequest extends Request<Object> {

    /* renamed from: s */
    public final Cache f5516s;

    /* renamed from: t */
    public final Runnable f5517t;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.f5516s = cache;
        this.f5517t = runnable;
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
        this.f5516s.clear();
        if (this.f5517t != null) {
            new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.f5517t);
            return true;
        }
        return true;
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<Object> mo3087l(NetworkResponse networkResponse) {
        return null;
    }
}
