package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ClearCacheRequest.class */
public class ClearCacheRequest extends Request<Object> {

    /* renamed from: q */
    public final Cache f35135q;

    /* renamed from: r */
    public final Runnable f35136r;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.f35135q = cache;
        this.f35136r = runnable;
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<Object> mo3669a(NetworkResponse networkResponse) {
        return null;
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
        this.f35135q.clear();
        if (this.f35136r == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.f35136r);
        return true;
    }
}
