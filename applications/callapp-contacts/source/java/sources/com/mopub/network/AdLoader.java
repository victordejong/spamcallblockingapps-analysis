package com.mopub.network;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.C17004a;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MultiAdRequest;
import com.mopub.network.RequestRateTracker;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/AdLoader.class */
public class AdLoader {

    /* renamed from: a */
    protected MultiAdResponse f60203a;

    /* renamed from: c */
    private final MultiAdRequest.Listener f60205c;

    /* renamed from: d */
    private final WeakReference<Context> f60206d;

    /* renamed from: e */
    private final Listener f60207e;

    /* renamed from: f */
    private MultiAdRequest f60208f;

    /* renamed from: h */
    private C17004a f60210h;

    /* renamed from: k */
    private boolean f60213k;

    /* renamed from: g */
    private final Object f60209g = new Object();

    /* renamed from: b */
    protected AdResponse f60204b = null;

    /* renamed from: l */
    private Handler f60214l = new Handler();

    /* renamed from: i */
    private volatile boolean f60211i = false;

    /* renamed from: j */
    private volatile boolean f60212j = false;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/AdLoader$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    public AdLoader(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        Preconditions.checkArgument(!TextUtils.isEmpty(str));
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f60206d = new WeakReference<>(context);
        this.f60207e = listener;
        MultiAdRequest.Listener listener2 = new MultiAdRequest.Listener() { // from class: com.mopub.network.AdLoader.1
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, volleyError.getMessage());
                AdLoader.this.f60212j = true;
                AdLoader.this.f60211i = false;
                AdLoader.m6092a(AdLoader.this, volleyError);
            }

            @Override // com.mopub.network.MultiAdRequest.Listener
            public final void onSuccessResponse(MultiAdResponse multiAdResponse) {
                synchronized (AdLoader.this.f60209g) {
                    AdLoader.this.f60211i = false;
                    AdLoader.this.f60203a = multiAdResponse;
                    if (AdLoader.this.f60203a.hasNext()) {
                        AdLoader adLoader = AdLoader.this;
                        AdLoader.m6093a(adLoader, adLoader.f60203a.next());
                    }
                }
            }
        };
        this.f60205c = listener2;
        this.f60208f = new MultiAdRequest(str, adFormat, str2, context, listener2);
    }

    /* renamed from: a */
    private Request<?> m6091a(MultiAdRequest multiAdRequest, Context context) {
        Preconditions.checkNotNull(multiAdRequest);
        if (context == null) {
            return null;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.REQUESTED, multiAdRequest.getUrl(), multiAdRequest.getBody() != null ? new String(multiAdRequest.getBody()) : "<no body>");
        this.f60211i = true;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        this.f60208f = multiAdRequest;
        requestQueue.add(multiAdRequest);
        return multiAdRequest;
    }

    /* renamed from: a */
    static /* synthetic */ void m6093a(AdLoader adLoader, AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        Context context = adLoader.f60206d.get();
        C17004a c17004a = new C17004a(adResponse);
        adLoader.f60210h = c17004a;
        if (context != null) {
            c17004a.f60342a = Long.valueOf(SystemClock.uptimeMillis());
            List<String> beforeLoadUrls = c17004a.f60343b.getBeforeLoadUrls();
            if (!beforeLoadUrls.isEmpty()) {
                TrackingRequest.makeTrackingHttpRequest(beforeLoadUrls, context);
            }
        }
        Listener listener = adLoader.f60207e;
        if (listener != null) {
            adLoader.f60204b = adResponse;
            listener.onSuccess(adResponse);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m6092a(AdLoader adLoader, VolleyError volleyError) {
        Preconditions.checkNotNull(volleyError);
        adLoader.f60204b = null;
        Listener listener = adLoader.f60207e;
        if (listener != null) {
            if (volleyError instanceof MoPubNetworkError) {
                listener.onErrorResponse(volleyError);
            } else {
                listener.onErrorResponse(new MoPubNetworkError(volleyError.getMessage(), volleyError.getCause(), MoPubNetworkError.Reason.UNSPECIFIED));
            }
        }
    }

    public void creativeDownloadSuccess() {
        this.f60213k = true;
        if (this.f60210h == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Response analytics should not be null here");
            return;
        }
        Context context = this.f60206d.get();
        if (context == null || this.f60204b == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send 'x-after-load-url' analytics.");
            return;
        }
        this.f60210h.m6039a(context, (MoPubError) null);
        C17004a c17004a = this.f60210h;
        if (context == null || c17004a.f60342a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(c17004a.m6037a(c17004a.f60343b.getAfterLoadSuccessUrls(), C17004a.EnumC17005a.AD_LOADED.value), context);
    }

    public boolean hasMoreAds() {
        if (!this.f60212j && !this.f60213k) {
            MultiAdResponse multiAdResponse = this.f60203a;
            return multiAdResponse == null || multiAdResponse.hasNext() || !TextUtils.isEmpty(multiAdResponse.f60317a);
        }
        return false;
    }

    public boolean isFailed() {
        return this.f60212j;
    }

    public boolean isRunning() {
        return this.f60211i;
    }

    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    public Request<?> loadNextAd(MoPubError moPubError) {
        if (this.f60211i) {
            return this.f60208f;
        }
        if (this.f60212j) {
            this.f60214l.post(new Runnable() { // from class: com.mopub.network.AdLoader.2
                @Override // java.lang.Runnable
                public final void run() {
                    AdLoader.m6092a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError.Reason.UNSPECIFIED));
                }
            });
            return null;
        }
        synchronized (this.f60209g) {
            if (this.f60203a == null) {
                RequestRateTracker.TimeRecord timeRecord = RequestRateTracker.getInstance().f60334a.get(this.f60208f.f60313b);
                if (!((timeRecord == null ? (char) 0 : (timeRecord.f60335a + ((long) timeRecord.mBlockIntervalMs)) - RequestRateTracker.m6042a()) > 0)) {
                    return m6091a(this.f60208f, this.f60206d.get());
                }
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, this.f60208f.f60313b + " is blocked by request rate limiting.");
                this.f60212j = true;
                this.f60214l.post(new Runnable() { // from class: com.mopub.network.AdLoader.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.m6092a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError.Reason.TOO_MANY_REQUESTS));
                    }
                });
                return null;
            }
            if (moPubError != null) {
                if (moPubError == null) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Must provide error code to report creative download error");
                } else {
                    Context context = this.f60206d.get();
                    if (context != null && this.f60204b != null) {
                        C17004a c17004a = this.f60210h;
                        if (c17004a != null) {
                            c17004a.m6039a(context, moPubError);
                            C17004a c17004a2 = this.f60210h;
                            if (context != null && c17004a2.f60342a != null) {
                                TrackingRequest.makeTrackingHttpRequest(c17004a2.m6037a(c17004a2.f60343b.getAfterLoadFailUrls(), C17004a.m6038a(moPubError).value), context);
                            }
                        }
                    }
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send creative mFailed analytics.");
                }
            }
            if (this.f60203a.hasNext()) {
                final AdResponse next = this.f60203a.next();
                this.f60214l.post(new Runnable() { // from class: com.mopub.network.AdLoader.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.m6093a(AdLoader.this, next);
                    }
                });
                return this.f60208f;
            } else if (TextUtils.isEmpty(this.f60203a.f60317a)) {
                this.f60214l.post(new Runnable() { // from class: com.mopub.network.AdLoader.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.m6092a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
                    }
                });
                return null;
            } else {
                MultiAdRequest multiAdRequest = new MultiAdRequest(this.f60203a.getFailURL(), this.f60208f.f60312a, this.f60208f.f60313b, this.f60206d.get(), this.f60205c);
                this.f60208f = multiAdRequest;
                return m6091a(multiAdRequest, this.f60206d.get());
            }
        }
    }
}
