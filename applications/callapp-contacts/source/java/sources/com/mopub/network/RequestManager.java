package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestManager.class */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a */
    protected Request<?> f60329a;

    /* renamed from: b */
    protected T f60330b;

    /* renamed from: c */
    protected BackoffPolicy f60331c;

    /* renamed from: d */
    protected Handler f60332d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestManager$RequestFactory.class */
    public interface RequestFactory {
    }

    public RequestManager(Looper looper) {
        this.f60332d = new Handler(looper);
    }

    /* renamed from: b */
    private void m6043b() {
        this.f60329a = null;
        this.f60330b = null;
        this.f60331c = null;
    }

    /* renamed from: a */
    abstract Request<?> m6044a();

    public void cancelRequest() {
        Request<?> request;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue != null && (request = this.f60329a) != null) {
            requestQueue.cancel(request);
        }
        m6043b();
    }

    public boolean isAtCapacity() {
        return this.f60329a != null;
    }

    public void makeRequest(T t, BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f60330b = t;
        this.f60331c = backoffPolicy;
        this.f60329a = m6044a();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubRequest queue is null. Clearing request.");
            m6043b();
        } else if (this.f60331c.getRetryCount() == 0) {
            requestQueue.add(this.f60329a);
        } else {
            requestQueue.addDelayedRequest(this.f60329a, this.f60331c.getBackoffMs());
        }
    }
}
