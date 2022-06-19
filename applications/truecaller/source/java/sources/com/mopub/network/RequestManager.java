package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestManager.class */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a */
    public Request<?> f9248a;

    /* renamed from: b */
    public T f9249b;

    /* renamed from: c */
    public BackoffPolicy f9250c;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestManager$RequestFactory.class */
    public interface RequestFactory {
    }

    public RequestManager(Looper looper) {
        new Handler(looper);
    }

    /* renamed from: a */
    public abstract Request<?> m36171a();

    public void cancelRequest() {
        Request<?> request;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue != null && (request = this.f9248a) != null) {
            requestQueue.cancel(request);
        }
        this.f9248a = null;
        this.f9250c = null;
    }

    public boolean isAtCapacity() {
        return this.f9248a != null;
    }

    public void makeRequest(T t, BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f9249b = t;
        this.f9250c = backoffPolicy;
        this.f9248a = m36171a();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubRequest queue is null. Clearing request.");
            this.f9248a = null;
            this.f9250c = null;
        } else if (this.f9250c.getRetryCount() == 0) {
            requestQueue.add(this.f9248a);
        } else {
            requestQueue.addDelayedRequest(this.f9248a, this.f9250c.getBackoffMs());
        }
    }
}
