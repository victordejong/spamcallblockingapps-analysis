package p131c.p421j.p426d;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningRequest;
import com.mopub.nativeads.PositioningSource;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
/* renamed from: c.j.d.i */
/* loaded from: classes2-dex2jar.jar:c/j/d/i.class */
public class C6681i implements PositioningSource {

    /* renamed from: b */
    public final Context f20626b;

    /* renamed from: g */
    public PositioningSource.PositioningListener f20631g;

    /* renamed from: h */
    public int f20632h;

    /* renamed from: i */
    public String f20633i;

    /* renamed from: j */
    public PositioningRequest f20634j;

    /* renamed from: a */
    public int f20625a = 300000;

    /* renamed from: c */
    public final Handler f20627c = new Handler();

    /* renamed from: d */
    public final Runnable f20628d = new RunnableC6682a();

    /* renamed from: e */
    public final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> f20629e = new C6683b();

    /* renamed from: f */
    public final Response.ErrorListener f20630f = new C6684c();

    /* renamed from: c.j.d.i$a */
    /* loaded from: classes2-dex2jar.jar:c/j/d/i$a.class */
    public class RunnableC6682a implements Runnable {
        public RunnableC6682a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6681i.this.m20054b();
        }
    }

    /* renamed from: c.j.d.i$b */
    /* loaded from: classes2-dex2jar.jar:c/j/d/i$b.class */
    public class C6683b implements Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> {
        public C6683b() {
        }

        public void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            C6681i.this.m20055a(moPubClientPositioning);
        }
    }

    /* renamed from: c.j.d.i$c */
    /* loaded from: classes2-dex2jar.jar:c/j/d/i$c.class */
    public class C6684c implements Response.ErrorListener {
        public C6684c() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (!(volleyError instanceof MoPubNetworkError) || ((MoPubNetworkError) volleyError).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load positioning data", volleyError);
                if (volleyError.networkResponse == null && !DeviceUtils.isNetworkAvailable(C6681i.this.f20626b)) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.valueOf(MoPubErrorCode.NO_CONNECTION));
                }
            }
            C6681i.this.m20058a();
        }
    }

    public C6681i(Context context) {
        this.f20626b = context.getApplicationContext();
    }

    /* renamed from: a */
    public final void m20058a() {
        int pow = (int) (Math.pow(2.0d, this.f20632h + 1) * 1000.0d);
        if (pow >= this.f20625a) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error downloading positioning information");
            PositioningSource.PositioningListener positioningListener = this.f20631g;
            if (positioningListener != null) {
                positioningListener.onFailed();
            }
            this.f20631g = null;
            return;
        }
        this.f20632h++;
        this.f20627c.postDelayed(this.f20628d, pow);
    }

    /* renamed from: a */
    public final void m20055a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        PositioningSource.PositioningListener positioningListener = this.f20631g;
        if (positioningListener != null) {
            positioningListener.onLoad(moPubClientPositioning);
        }
        this.f20631g = null;
        this.f20632h = 0;
    }

    /* renamed from: b */
    public final void m20054b() {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Loading positioning from: " + this.f20633i);
        this.f20634j = new PositioningRequest(this.f20626b, this.f20633i, this.f20629e, this.f20630f);
        Networking.getRequestQueue(this.f20626b).add(this.f20634j);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        PositioningRequest positioningRequest = this.f20634j;
        if (positioningRequest != null) {
            positioningRequest.cancel();
            this.f20634j = null;
        }
        if (this.f20632h > 0) {
            this.f20627c.removeCallbacks(this.f20628d);
            this.f20632h = 0;
        }
        this.f20631g = positioningListener;
        this.f20633i = new C6680h(this.f20626b).withAdUnitId(str).generateUrlString(Constants.HOST);
        m20054b();
    }
}
