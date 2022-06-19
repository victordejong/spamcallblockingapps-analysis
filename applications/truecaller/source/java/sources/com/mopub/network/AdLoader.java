package com.mopub.network;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.MultiAdRequest;
import com.mopub.network.RequestRateTracker;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;
import e.n.e.a;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader.class */
public class AdLoader {

    /* renamed from: a */
    public final MultiAdRequest.Listener f9147a;

    /* renamed from: b */
    public final WeakReference<Context> f9148b;

    /* renamed from: c */
    public final Listener f9149c;

    /* renamed from: d */
    public MultiAdRequest f9150d;

    /* renamed from: e */
    public MultiAdResponse f9151e;

    /* renamed from: h */
    public a f9154h;

    /* renamed from: k */
    public boolean f9157k;

    /* renamed from: f */
    public final Object f9152f = new Object();

    /* renamed from: g */
    public AdResponse f9153g = null;

    /* renamed from: l */
    public Handler f9158l = new Handler();

    /* renamed from: i */
    public volatile boolean f9155i = false;

    /* renamed from: j */
    public volatile boolean f9156j = false;

    /* renamed from: com.mopub.network.AdLoader$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$b.class */
    public class RunnableC2714b implements Runnable {
        public RunnableC2714b() {
            AdLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.m36180a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError$Reason.UNSPECIFIED));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$c.class */
    public class RunnableC2715c implements Runnable {
        public RunnableC2715c() {
            AdLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.m36180a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError$Reason.TOO_MANY_REQUESTS));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$d.class */
    public class RunnableC2716d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f9161a;

        public RunnableC2716d(AdResponse adResponse) {
            AdLoader.this = r4;
            this.f9161a = adResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.m36179b(AdLoader.this, this.f9161a);
        }
    }

    /* renamed from: com.mopub.network.AdLoader$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/AdLoader$e.class */
    public class RunnableC2717e implements Runnable {
        public RunnableC2717e() {
            AdLoader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.m36180a(AdLoader.this, new MoPubNetworkError(MoPubNetworkError$Reason.NO_FILL));
        }
    }

    public AdLoader(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        Preconditions.checkArgument(!TextUtils.isEmpty(str));
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f9148b = new WeakReference<>(context);
        this.f9149c = listener;
        a aVar = new a(this);
        this.f9147a = aVar;
        this.f9150d = new MultiAdRequest(str, adFormat, str2, context, aVar);
    }

    /* renamed from: a */
    public static void m36180a(AdLoader adLoader, VolleyError volleyError) {
        Objects.requireNonNull(adLoader);
        Preconditions.checkNotNull(volleyError);
        adLoader.f9153g = null;
        Listener listener = adLoader.f9149c;
        if (listener != null) {
            if (volleyError instanceof MoPubNetworkError) {
                listener.onErrorResponse(volleyError);
            } else {
                listener.onErrorResponse(new MoPubNetworkError(volleyError.getMessage(), volleyError.getCause(), MoPubNetworkError$Reason.UNSPECIFIED));
            }
        }
    }

    /* renamed from: b */
    public static void m36179b(AdLoader adLoader, AdResponse adResponse) {
        Objects.requireNonNull(adLoader);
        Preconditions.checkNotNull(adResponse);
        Context context = adLoader.f9148b.get();
        a aVar = new a(adResponse);
        adLoader.f9154h = aVar;
        if (context != null) {
            aVar.a = Long.valueOf(SystemClock.uptimeMillis());
            List<String> beforeLoadUrls = aVar.b.getBeforeLoadUrls();
            if (!beforeLoadUrls.isEmpty()) {
                TrackingRequest.makeTrackingHttpRequest(beforeLoadUrls, context);
            }
        }
        Listener listener = adLoader.f9149c;
        if (listener != null) {
            adLoader.f9153g = adResponse;
            listener.onSuccess(adResponse);
        }
    }

    /* renamed from: c */
    public final void m36178c(MoPubError moPubError) {
        if (moPubError == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Must provide error code to report creative download error");
            return;
        }
        Context context = this.f9148b.get();
        if (context == null || this.f9153g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send creative mFailed analytics.");
            return;
        }
        a aVar = this.f9154h;
        if (aVar == null) {
            return;
        }
        aVar.c(context, moPubError);
        a aVar2 = this.f9154h;
        Objects.requireNonNull(aVar2);
        if (context == null || aVar2.a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(aVar2.b(aVar2.b.getAfterLoadFailUrls(), aVar2.a(moPubError).a), context);
    }

    public void creativeDownloadSuccess() {
        this.f9157k = true;
        if (this.f9154h == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Response analytics should not be null here");
            return;
        }
        Context context = this.f9148b.get();
        if (context == null || this.f9153g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send 'x-after-load-url' analytics.");
            return;
        }
        this.f9154h.c(context, (MoPubError) null);
        a aVar = this.f9154h;
        Objects.requireNonNull(aVar);
        if (context == null || aVar.a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(aVar.b(aVar.b.getAfterLoadSuccessUrls(), a.a.AD_LOADED.a), context);
    }

    /* renamed from: d */
    public final Request<?> m36177d(MultiAdRequest multiAdRequest, Context context) {
        Preconditions.checkNotNull(multiAdRequest);
        if (context == null) {
            return null;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.REQUESTED, multiAdRequest.getUrl(), multiAdRequest.getBody() != null ? new String(multiAdRequest.getBody()) : "<no body>");
        this.f9155i = true;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        this.f9150d = multiAdRequest;
        requestQueue.add(multiAdRequest);
        return multiAdRequest;
    }

    public boolean hasMoreAds() {
        boolean z = false;
        if (!this.f9156j && !this.f9157k) {
            MultiAdResponse multiAdResponse = this.f9151e;
            if (multiAdResponse == null || multiAdResponse.hasNext() || !TextUtils.isEmpty(multiAdResponse.f9241b)) {
                z = true;
            }
            return z;
        }
        return false;
    }

    public boolean isFailed() {
        return this.f9156j;
    }

    public boolean isRunning() {
        return this.f9155i;
    }

    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    public Request<?> loadNextAd(MoPubError moPubError) {
        if (this.f9155i) {
            return this.f9150d;
        }
        if (this.f9156j) {
            this.f9158l.post(new RunnableC2714b());
            return null;
        }
        synchronized (this.f9152f) {
            if (this.f9151e == null) {
                RequestRateTracker.TimeRecord timeRecord = RequestRateTracker.getInstance().f9251a.get(this.f9150d.t);
                if (!((timeRecord == null ? (char) 0 : (timeRecord.f9252a + ((long) timeRecord.mBlockIntervalMs)) - SystemClock.elapsedRealtime()) > 0)) {
                    return m36177d(this.f9150d, this.f9148b.get());
                }
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, this.f9150d.t + " is blocked by request rate limiting.");
                this.f9156j = true;
                this.f9158l.post(new RunnableC2715c());
                return null;
            }
            if (moPubError != null) {
                m36178c(moPubError);
            }
            if (this.f9151e.hasNext()) {
                this.f9158l.post(new RunnableC2716d(this.f9151e.next()));
                return this.f9150d;
            } else if (TextUtils.isEmpty(this.f9151e.f9241b)) {
                this.f9158l.post(new RunnableC2717e());
                return null;
            } else {
                String failURL = this.f9151e.getFailURL();
                MultiAdRequest multiAdRequest = this.f9150d;
                MultiAdRequest multiAdRequest2 = new MultiAdRequest(failURL, multiAdRequest.s, multiAdRequest.t, this.f9148b.get(), this.f9147a);
                this.f9150d = multiAdRequest2;
                return m36177d(multiAdRequest2, this.f9148b.get());
            }
        }
    }
}
