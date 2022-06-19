package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestManager.class */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a */
    public Request<?> f5428a;

    /* renamed from: b */
    public T f5429b;

    /* renamed from: c */
    public BackoffPolicy f5430c;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/RequestManager$RequestFactory.class */
    public interface RequestFactory {
    }

    public RequestManager(Looper looper) {
        new Handler(looper);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3196a() {
        this.f5428a = null;
        this.f5430c = null;
    }

    /* renamed from: b */
    public abstract Request<?> m3195b();

    @VisibleForTesting
    /* renamed from: c */
    public void m3194c() {
        this.f5428a = m3195b();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubRequest queue is null. Clearing request.");
            m3196a();
        } else if (this.f5430c.getRetryCount() == 0) {
            requestQueue.add(this.f5428a);
        } else {
            requestQueue.addDelayedRequest(this.f5428a, this.f5430c.getBackoffMs());
        }
    }

    public void cancelRequest() {
        Request<?> request;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue != null && (request = this.f5428a) != null) {
            requestQueue.cancel(request);
        }
        m3196a();
    }

    public boolean isAtCapacity() {
        return this.f5428a != null;
    }

    public void makeRequest(T t, BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f5429b = t;
        this.f5430c = backoffPolicy;
        m3194c();
    }
}
