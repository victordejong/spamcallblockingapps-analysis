package com.mopub.network;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MultiAdRequest;
import com.mopub.network.RequestRateTracker;
import com.mopub.network.a;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/AdLoader.class */
public class AdLoader {

    /* renamed from: a  reason: collision with root package name */
    protected MultiAdResponse f34702a;

    /* renamed from: c  reason: collision with root package name */
    private final MultiAdRequest.Listener f34704c;

    /* renamed from: d  reason: collision with root package name */
    private final WeakReference<Context> f34705d;
    private final Listener e;
    private MultiAdRequest f;
    private a h;
    private boolean k;
    private final Object g = new Object();

    /* renamed from: b  reason: collision with root package name */
    protected AdResponse f34703b = null;
    private Handler l = new Handler();
    private volatile boolean i = false;
    private volatile boolean j = false;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/AdLoader$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    public AdLoader(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        Preconditions.checkArgument(!TextUtils.isEmpty(str));
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f34705d = new WeakReference<>(context);
        this.e = listener;
        MultiAdRequest.Listener listener2 = new MultiAdRequest.Listener() { // from class: com.mopub.network.AdLoader.1
            @Override // com.mopub.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, volleyError.getMessage());
                AdLoader.this.j = true;
                AdLoader.this.i = false;
                AdLoader.a(AdLoader.this, volleyError);
            }

            @Override // com.mopub.network.MultiAdRequest.Listener
            public final void onSuccessResponse(MultiAdResponse multiAdResponse) {
                synchronized (AdLoader.this.g) {
                    AdLoader.this.i = false;
                    AdLoader.this.f34702a = multiAdResponse;
                    if (AdLoader.this.f34702a.hasNext()) {
                        AdLoader adLoader = AdLoader.this;
                        AdLoader.a(adLoader, adLoader.f34702a.next());
                    }
                }
            }
        };
        this.f34704c = listener2;
        this.f = new MultiAdRequest(str, adFormat, str2, context, listener2);
    }

    private Request<?> a(MultiAdRequest multiAdRequest, Context context) {
        Preconditions.checkNotNull(multiAdRequest);
        if (context == null) {
            return null;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.REQUESTED, multiAdRequest.getUrl(), multiAdRequest.getBody() != null ? new String(multiAdRequest.getBody()) : "<no body>");
        this.i = true;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        this.f = multiAdRequest;
        requestQueue.add(multiAdRequest);
        return multiAdRequest;
    }

    static /* synthetic */ void a(AdLoader adLoader, AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        Context context = adLoader.f34705d.get();
        a aVar = new a(adResponse);
        adLoader.h = aVar;
        if (context != null) {
            aVar.f34772a = Long.valueOf(SystemClock.uptimeMillis());
            List<String> beforeLoadUrls = aVar.f34773b.getBeforeLoadUrls();
            if (!beforeLoadUrls.isEmpty()) {
                TrackingRequest.makeTrackingHttpRequest(beforeLoadUrls, context);
            }
        }
        Listener listener = adLoader.e;
        if (listener != null) {
            adLoader.f34703b = adResponse;
            listener.onSuccess(adResponse);
        }
    }

    static /* synthetic */ void a(AdLoader adLoader, VolleyError volleyError) {
        Preconditions.checkNotNull(volleyError);
        adLoader.f34703b = null;
        Listener listener = adLoader.e;
        if (listener == null) {
            return;
        }
        if (volleyError instanceof MoPubNetworkError) {
            listener.onErrorResponse(volleyError);
        } else {
            listener.onErrorResponse(new MoPubNetworkError(volleyError.getMessage(), volleyError.getCause(), MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    public void creativeDownloadSuccess() {
        this.k = true;
        if (this.h == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Response analytics should not be null here");
            return;
        }
        Context context = this.f34705d.get();
        if (context == null || this.f34703b == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send 'x-after-load-url' analytics.");
            return;
        }
        this.h.a(context, (MoPubError) null);
        a aVar = this.h;
        if (context != null && aVar.f34772a != null) {
            TrackingRequest.makeTrackingHttpRequest(aVar.a(aVar.f34773b.getAfterLoadSuccessUrls(), a.EnumC0548a.AD_LOADED.value), context);
        }
    }

    public boolean hasMoreAds() {
        if (this.j || this.k) {
            return false;
        }
        MultiAdResponse multiAdResponse = this.f34702a;
        return multiAdResponse == null || multiAdResponse.hasNext() || !TextUtils.isEmpty(multiAdResponse.f34749a);
    }

    public boolean isFailed() {
        return this.j;
    }

    public boolean isRunning() {
        return this.i;
    }

    public Request<?> loadNextAd(MoPubError moPubError) {
        if (this.i) {
            return this.f;
        }
        if (this.j) {
            this.l.post(new Runnable() { // from class: com.mopub.network.AdLoader.2
                @Override // java.lang.Runnable
                public final void run() {
                    AdLoader.a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError.Reason.UNSPECIFIED));
                }
            });
            return null;
        }
        synchronized (this.g) {
            if (this.f34702a == null) {
                RequestRateTracker.TimeRecord timeRecord = RequestRateTracker.getInstance().f34764a.get(this.f.f34745b);
                if ((timeRecord == null ? 0L : (timeRecord.f34765a + ((long) timeRecord.mBlockIntervalMs)) - RequestRateTracker.a()) > 0) {
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, this.f.f34745b + " is blocked by request rate limiting.");
                    this.j = true;
                    this.l.post(new Runnable() { // from class: com.mopub.network.AdLoader.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            AdLoader.a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError.Reason.TOO_MANY_REQUESTS));
                        }
                    });
                    return null;
                }
                return a(this.f, this.f34705d.get());
            }
            if (moPubError != null) {
                if (moPubError == null) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Must provide error code to report creative download error");
                } else {
                    Context context = this.f34705d.get();
                    if (!(context == null || this.f34703b == null)) {
                        a aVar = this.h;
                        if (aVar != null) {
                            aVar.a(context, moPubError);
                            a aVar2 = this.h;
                            if (!(context == null || aVar2.f34772a == null)) {
                                TrackingRequest.makeTrackingHttpRequest(aVar2.a(aVar2.f34773b.getAfterLoadFailUrls(), a.a(moPubError).value), context);
                            }
                        }
                    }
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send creative mFailed analytics.");
                }
            }
            if (this.f34702a.hasNext()) {
                final AdResponse next = this.f34702a.next();
                this.l.post(new Runnable() { // from class: com.mopub.network.AdLoader.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.a(AdLoader.this, next);
                    }
                });
                return this.f;
            } else if (!TextUtils.isEmpty(this.f34702a.f34749a)) {
                MultiAdRequest multiAdRequest = new MultiAdRequest(this.f34702a.getFailURL(), this.f.f34744a, this.f.f34745b, this.f34705d.get(), this.f34704c);
                this.f = multiAdRequest;
                return a(multiAdRequest, this.f34705d.get());
            } else {
                this.l.post(new Runnable() { // from class: com.mopub.network.AdLoader.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
                    }
                });
                return null;
            }
        }
    }
}
