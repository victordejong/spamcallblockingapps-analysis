package com.mopub.network;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MultiAdRequest;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader.class */
public class AdLoader {

    /* renamed from: a */
    public final MultiAdRequest.Listener f5303a;

    /* renamed from: b */
    public final WeakReference<Context> f5304b;

    /* renamed from: c */
    public final Listener f5305c;

    /* renamed from: d */
    public MultiAdRequest f5306d;

    /* renamed from: e */
    public MultiAdResponse f5307e;

    /* renamed from: h */
    public fi1 f5310h;

    /* renamed from: k */
    public boolean f5313k;

    /* renamed from: f */
    public final Object f5308f = new Object();

    /* renamed from: g */
    public AdResponse f5309g = null;

    /* renamed from: l */
    public Handler f5314l = new Handler();

    /* renamed from: i */
    public volatile boolean f5311i = false;

    /* renamed from: j */
    public volatile boolean f5312j = false;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$Listener.class */
    public interface Listener extends Response.ErrorListener {
        @Override // com.mopub.volley.Response.ErrorListener
        /* synthetic */ void onErrorResponse(VolleyError volleyError);

        void onSuccess(AdResponse adResponse);
    }

    /* renamed from: com.mopub.network.AdLoader$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$a.class */
    public class C1210a implements MultiAdRequest.Listener {
        public C1210a() {
            AdLoader.this = r4;
        }

        @Override // com.mopub.network.MultiAdRequest.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, volleyError.getMessage());
            AdLoader.this.f5312j = true;
            AdLoader.this.f5311i = false;
            AdLoader.this.m3259g(volleyError);
        }

        @Override // com.mopub.network.MultiAdRequest.Listener
        public void onSuccessResponse(MultiAdResponse multiAdResponse) {
            synchronized (AdLoader.this.f5308f) {
                AdLoader.this.f5311i = false;
                AdLoader.this.f5307e = multiAdResponse;
                if (multiAdResponse.hasNext()) {
                    AdLoader adLoader = AdLoader.this;
                    adLoader.m3258h(adLoader.f5307e.next());
                }
            }
        }
    }

    /* renamed from: com.mopub.network.AdLoader$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$b.class */
    public class RunnableC1211b implements Runnable {
        public RunnableC1211b() {
            AdLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3259g(new MoPubNetworkError(MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$c.class */
    public class RunnableC1212c implements Runnable {
        public RunnableC1212c() {
            AdLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3259g(new MoPubNetworkError(MoPubNetworkError.Reason.TOO_MANY_REQUESTS));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$d.class */
    public class RunnableC1213d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f5318a;

        public RunnableC1213d(AdResponse adResponse) {
            AdLoader.this = r4;
            this.f5318a = adResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3258h(this.f5318a);
        }
    }

    /* renamed from: com.mopub.network.AdLoader$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$e.class */
    public class RunnableC1214e implements Runnable {
        public RunnableC1214e() {
            AdLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3259g(new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
        }
    }

    public AdLoader(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        Preconditions.checkArgument(!TextUtils.isEmpty(str));
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f5304b = new WeakReference<>(context);
        this.f5305c = listener;
        C1210a c1210a = new C1210a();
        this.f5303a = c1210a;
        this.f5306d = new MultiAdRequest(str, adFormat, str2, context, c1210a);
    }

    public void creativeDownloadSuccess() {
        this.f5313k = true;
        if (this.f5310h == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Response analytics should not be null here");
            return;
        }
        Context context = this.f5304b.get();
        if (context == null || this.f5309g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send 'x-after-load-url' analytics.");
            return;
        }
        this.f5310h.m1731c(context, null);
        this.f5310h.m1729e(context);
    }

    /* renamed from: f */
    public final void m3260f(MoPubError moPubError) {
        if (moPubError == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Must provide error code to report creative download error");
            return;
        }
        Context context = this.f5304b.get();
        if (context == null || this.f5309g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send creative mFailed analytics.");
            return;
        }
        fi1 fi1Var = this.f5310h;
        if (fi1Var == null) {
            return;
        }
        fi1Var.m1731c(context, moPubError);
        this.f5310h.m1730d(context, moPubError);
    }

    /* renamed from: g */
    public final void m3259g(VolleyError volleyError) {
        Preconditions.checkNotNull(volleyError);
        this.f5309g = null;
        Listener listener = this.f5305c;
        if (listener != null) {
            if (volleyError instanceof MoPubNetworkError) {
                listener.onErrorResponse(volleyError);
            } else {
                listener.onErrorResponse(new MoPubNetworkError(volleyError.getMessage(), volleyError.getCause(), MoPubNetworkError.Reason.UNSPECIFIED));
            }
        }
    }

    /* renamed from: h */
    public final void m3258h(AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        Context context = this.f5304b.get();
        fi1 fi1Var = new fi1(adResponse);
        this.f5310h = fi1Var;
        fi1Var.m1728f(context);
        Listener listener = this.f5305c;
        if (listener != null) {
            this.f5309g = adResponse;
            listener.onSuccess(adResponse);
        }
    }

    public boolean hasMoreAds() {
        boolean z = false;
        if (!this.f5312j && !this.f5313k) {
            MultiAdResponse multiAdResponse = this.f5307e;
            if (multiAdResponse == null || multiAdResponse.hasNext() || !multiAdResponse.m3200d()) {
                z = true;
            }
            return z;
        }
        return false;
    }

    /* renamed from: i */
    public final Request<?> m3257i(MultiAdRequest multiAdRequest, Context context) {
        Preconditions.checkNotNull(multiAdRequest);
        if (context == null) {
            return null;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.REQUESTED, multiAdRequest.getUrl(), multiAdRequest.getBody() != null ? new String(multiAdRequest.getBody()) : "<no body>");
        this.f5311i = true;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        this.f5306d = multiAdRequest;
        requestQueue.add(multiAdRequest);
        return multiAdRequest;
    }

    public boolean isFailed() {
        return this.f5312j;
    }

    public boolean isRunning() {
        return this.f5311i;
    }

    public Request<?> loadNextAd(MoPubError moPubError) {
        Handler handler;
        RunnableC1211b runnableC1214e;
        if (this.f5311i) {
            return this.f5306d;
        }
        if (this.f5312j) {
            handler = this.f5314l;
            runnableC1214e = new RunnableC1211b();
        } else {
            synchronized (this.f5308f) {
                if (this.f5307e == null) {
                    if (!RequestRateTracker.getInstance().m3190d(this.f5306d.f5413v)) {
                        return m3257i(this.f5306d, this.f5304b.get());
                    }
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, this.f5306d.f5413v + " is blocked by request rate limiting.");
                    this.f5312j = true;
                    this.f5314l.post(new RunnableC1212c());
                    return null;
                }
                if (moPubError != null) {
                    m3260f(moPubError);
                }
                if (this.f5307e.hasNext()) {
                    this.f5314l.post(new RunnableC1213d(this.f5307e.next()));
                    return this.f5306d;
                } else if (!this.f5307e.m3200d()) {
                    String failURL = this.f5307e.getFailURL();
                    MultiAdRequest multiAdRequest = this.f5306d;
                    MultiAdRequest multiAdRequest2 = new MultiAdRequest(failURL, multiAdRequest.f5412u, multiAdRequest.f5413v, this.f5304b.get(), this.f5303a);
                    this.f5306d = multiAdRequest2;
                    return m3257i(multiAdRequest2, this.f5304b.get());
                } else {
                    handler = this.f5314l;
                    runnableC1214e = new RunnableC1214e();
                }
            }
        }
        handler.post(runnableC1214e);
        return null;
    }
}
