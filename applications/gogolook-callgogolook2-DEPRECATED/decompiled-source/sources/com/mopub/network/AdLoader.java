package com.mopub.network;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import p081h.p430l.p436e.C10745a;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader.class */
public class AdLoader {

    /* renamed from: b */
    public final WeakReference<Context> f9344b;

    /* renamed from: c */
    public final Listener f9345c;
    @NonNull

    /* renamed from: d */
    public MultiAdRequest f9346d;
    @Nullable

    /* renamed from: e */
    public MultiAdResponse f9347e;
    @Nullable

    /* renamed from: h */
    public C10745a f9350h;

    /* renamed from: k */
    public boolean f9353k;
    @NonNull

    /* renamed from: f */
    public final Object f9348f = new Object();
    @Nullable

    /* renamed from: g */
    public AdResponse f9349g = null;
    @NonNull

    /* renamed from: l */
    public Handler f9354l = new Handler();

    /* renamed from: a */
    public final MultiAdRequest.Listener f9343a = new C4025a();

    /* renamed from: i */
    public volatile boolean f9351i = false;

    /* renamed from: j */
    public volatile boolean f9352j = false;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    /* renamed from: com.mopub.network.AdLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$a.class */
    public class C4025a implements MultiAdRequest.Listener {
        public C4025a() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, volleyError.getMessage());
            AdLoader.this.f9352j = true;
            AdLoader.this.f9351i = false;
            AdLoader.this.m30037a(volleyError);
        }

        @Override // com.mopub.network.MultiAdRequest.Listener
        public void onSuccessResponse(MultiAdResponse multiAdResponse) {
            synchronized (AdLoader.this.f9348f) {
                AdLoader.this.f9351i = false;
                AdLoader.this.f9347e = multiAdResponse;
                if (AdLoader.this.f9347e.hasNext()) {
                    AdLoader.this.m30039a(AdLoader.this.f9347e.next());
                }
            }
        }
    }

    /* renamed from: com.mopub.network.AdLoader$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$b.class */
    public class RunnableC4026b implements Runnable {
        public RunnableC4026b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m30037a(new MoPubNetworkError(MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$c.class */
    public class RunnableC4027c implements Runnable {
        public RunnableC4027c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m30037a(new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$d.class */
    public class RunnableC4028d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f9358a;

        public RunnableC4028d(AdResponse adResponse) {
            this.f9358a = adResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m30039a(this.f9358a);
        }
    }

    /* renamed from: com.mopub.network.AdLoader$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$e.class */
    public class RunnableC4029e implements Runnable {
        public RunnableC4029e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m30037a(new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
        }
    }

    public AdLoader(@NonNull String str, @NonNull AdFormat adFormat, @Nullable String str2, @NonNull Context context, @NonNull Listener listener) {
        Preconditions.checkArgument(!TextUtils.isEmpty(str));
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f9344b = new WeakReference<>(context);
        this.f9345c = listener;
        this.f9346d = new MultiAdRequest(str, adFormat, str2, context, this.f9343a);
    }

    @Nullable
    /* renamed from: a */
    public final Request<?> m30038a(@NonNull MultiAdRequest multiAdRequest, @Nullable Context context) {
        Preconditions.checkNotNull(multiAdRequest);
        if (context == null) {
            return null;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.REQUESTED, multiAdRequest.getUrl(), multiAdRequest.getBody() != null ? new String(multiAdRequest.getBody()) : "<no body>");
        this.f9351i = true;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        this.f9346d = multiAdRequest;
        requestQueue.add(multiAdRequest);
        return multiAdRequest;
    }

    /* renamed from: a */
    public final void m30044a(@Nullable MoPubError moPubError) {
        if (moPubError == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Must provide error code to report creative download error");
            return;
        }
        Context context = this.f9344b.get();
        if (context == null || this.f9349g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send creative mFailed analytics.");
            return;
        }
        C10745a aVar = this.f9350h;
        if (aVar != null) {
            aVar.m10746a(context, moPubError);
            this.f9350h.m10742b(context, moPubError);
        }
    }

    /* renamed from: a */
    public final void m30039a(@NonNull AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        Context context = this.f9344b.get();
        this.f9350h = new C10745a(adResponse);
        this.f9350h.m10743b(context);
        Listener listener = this.f9345c;
        if (listener != null) {
            this.f9349g = adResponse;
            listener.onSuccess(adResponse);
        }
    }

    /* renamed from: a */
    public final void m30037a(@NonNull VolleyError volleyError) {
        Preconditions.checkNotNull(volleyError);
        this.f9349g = null;
        Listener listener = this.f9345c;
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
        this.f9353k = true;
        if (this.f9350h == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Response analytics should not be null here");
            return;
        }
        Context context = this.f9344b.get();
        if (context == null || this.f9349g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send 'x-after-load-url' analytics.");
            return;
        }
        this.f9350h.m10746a(context, (MoPubError) null);
        this.f9350h.m10747a(context);
    }

    public boolean hasMoreAds() {
        boolean z = false;
        if (this.f9352j || this.f9353k) {
            return false;
        }
        MultiAdResponse multiAdResponse = this.f9347e;
        if (multiAdResponse == null || multiAdResponse.hasNext() || !multiAdResponse.m29987a()) {
            z = true;
        }
        return z;
    }

    public boolean isFailed() {
        return this.f9352j;
    }

    public boolean isRunning() {
        return this.f9351i;
    }

    @Nullable
    public Request<?> loadNextAd(@Nullable MoPubError moPubError) {
        if (this.f9351i) {
            return this.f9346d;
        }
        if (this.f9352j) {
            this.f9354l.post(new RunnableC4026b());
            return null;
        }
        synchronized (this.f9348f) {
            if (this.f9347e != null) {
                if (moPubError != null) {
                    m30044a(moPubError);
                }
                if (this.f9347e.hasNext()) {
                    this.f9354l.post(new RunnableC4028d(this.f9347e.next()));
                    return this.f9346d;
                } else if (!this.f9347e.m29987a()) {
                    this.f9346d = new MultiAdRequest(this.f9347e.getFailURL(), this.f9346d.f9441s, this.f9346d.f9442t, this.f9344b.get(), this.f9343a);
                    return m30038a(this.f9346d, this.f9344b.get());
                } else {
                    this.f9354l.post(new RunnableC4029e());
                    return null;
                }
            } else if (RequestRateTracker.getInstance().m29973b(this.f9346d.f9442t)) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, this.f9346d.f9442t + " is blocked by request rate limiting.");
                this.f9352j = true;
                this.f9354l.post(new RunnableC4027c());
                return null;
            } else {
                return m30038a(this.f9346d, this.f9344b.get());
            }
        }
    }
}
