package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestManager.class */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a  reason: collision with root package name */
    protected Request<?> f34759a;

    /* renamed from: b  reason: collision with root package name */
    protected T f34760b;

    /* renamed from: c  reason: collision with root package name */
    protected BackoffPolicy f34761c;

    /* renamed from: d  reason: collision with root package name */
    protected Handler f34762d;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/RequestManager$RequestFactory.class */
    public interface RequestFactory {
    }

    public RequestManager(Looper looper) {
        this.f34762d = new Handler(looper);
    }

    private void b() {
        this.f34759a = null;
        this.f34760b = null;
        this.f34761c = null;
    }

    abstract Request<?> a();

    public void cancelRequest() {
        Request<?> request;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (!(requestQueue == null || (request = this.f34759a) == null)) {
            requestQueue.cancel(request);
        }
        b();
    }

    public boolean isAtCapacity() {
        return this.f34759a != null;
    }

    public void makeRequest(T t, BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f34760b = t;
        this.f34761c = backoffPolicy;
        this.f34759a = a();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubRequest queue is null. Clearing request.");
            b();
        } else if (this.f34761c.getRetryCount() == 0) {
            requestQueue.add(this.f34759a);
        } else {
            requestQueue.addDelayedRequest(this.f34759a, this.f34761c.getBackoffMs());
        }
    }
}
