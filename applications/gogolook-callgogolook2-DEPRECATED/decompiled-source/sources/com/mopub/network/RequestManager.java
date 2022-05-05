package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestManager.class */
public abstract class RequestManager<T extends RequestFactory> {
    @Nullable

    /* renamed from: a */
    public Request<?> f9455a;
    @Nullable

    /* renamed from: b */
    public BackoffPolicy f9456b;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestManager$RequestFactory.class */
    public interface RequestFactory {
    }

    public RequestManager(@NonNull Looper looper) {
        new Handler(looper);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m29980a() {
        this.f9455a = null;
        this.f9456b = null;
    }

    @NonNull
    /* renamed from: b */
    public abstract Request<?> m29979b();

    @VisibleForTesting
    /* renamed from: c */
    public void m29978c() {
        this.f9455a = m29979b();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubRequest queue is null. Clearing request.");
            m29980a();
        } else if (this.f9456b.getRetryCount() == 0) {
            requestQueue.add(this.f9455a);
        } else {
            requestQueue.addDelayedRequest(this.f9455a, this.f9456b.getBackoffMs());
        }
    }

    public void cancelRequest() {
        Request<?> request;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (!(requestQueue == null || (request = this.f9455a) == null)) {
            requestQueue.cancel(request);
        }
        m29980a();
    }

    public boolean isAtCapacity() {
        return this.f9455a != null;
    }

    public void makeRequest(@NonNull T t, @NonNull BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f9456b = backoffPolicy;
        m29978c();
    }
}
