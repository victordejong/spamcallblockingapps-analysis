package p000;

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
/* renamed from: bi1 */
/* loaded from: classes3-dex2jar.jar:bi1.class */
public class bi1 implements PositioningSource {

    /* renamed from: b */
    public final Context f1951b;

    /* renamed from: g */
    public PositioningSource.PositioningListener f1956g;

    /* renamed from: h */
    public int f1957h;

    /* renamed from: i */
    public String f1958i;

    /* renamed from: j */
    public PositioningRequest f1959j;

    /* renamed from: a */
    public int f1950a = 300000;

    /* renamed from: c */
    public final Handler f1952c = new Handler();

    /* renamed from: d */
    public final Runnable f1953d = new RunnableC0248a();

    /* renamed from: e */
    public final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> f1954e = new C0249b();

    /* renamed from: f */
    public final Response.ErrorListener f1955f = new C0250c();

    /* renamed from: bi1$a */
    /* loaded from: classes3-dex2jar.jar:bi1$a.class */
    public class RunnableC0248a implements Runnable {
        public RunnableC0248a() {
            bi1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            bi1.this.m5620g();
        }
    }

    /* renamed from: bi1$b */
    /* loaded from: classes3-dex2jar.jar:bi1$b.class */
    public class C0249b implements Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> {
        public C0249b() {
            bi1.this = r4;
        }

        public void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            bi1.this.m5621f(moPubClientPositioning);
        }
    }

    /* renamed from: bi1$c */
    /* loaded from: classes3-dex2jar.jar:bi1$c.class */
    public class C0250c implements Response.ErrorListener {
        public C0250c() {
            bi1.this = r4;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (!(volleyError instanceof MoPubNetworkError) || ((MoPubNetworkError) volleyError).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load positioning data", volleyError);
                if (volleyError.networkResponse == null && !DeviceUtils.isNetworkAvailable(bi1.this.f1951b)) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.valueOf(MoPubErrorCode.NO_CONNECTION));
                }
            }
            bi1.this.m5622e();
        }
    }

    public bi1(Context context) {
        this.f1951b = context.getApplicationContext();
    }

    /* renamed from: e */
    public final void m5622e() {
        int pow = (int) (Math.pow(2.0d, this.f1957h + 1) * 1000.0d);
        if (pow < this.f1950a) {
            this.f1957h++;
            this.f1952c.postDelayed(this.f1953d, pow);
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error downloading positioning information");
        PositioningSource.PositioningListener positioningListener = this.f1956g;
        if (positioningListener != null) {
            positioningListener.onFailed();
        }
        this.f1956g = null;
    }

    /* renamed from: f */
    public final void m5621f(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        PositioningSource.PositioningListener positioningListener = this.f1956g;
        if (positioningListener != null) {
            positioningListener.onLoad(moPubClientPositioning);
        }
        this.f1956g = null;
        this.f1957h = 0;
    }

    /* renamed from: g */
    public final void m5620g() {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Loading positioning from: " + this.f1958i);
        this.f1959j = new PositioningRequest(this.f1951b, this.f1958i, this.f1954e, this.f1955f);
        Networking.getRequestQueue(this.f1951b).add(this.f1959j);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        PositioningRequest positioningRequest = this.f1959j;
        if (positioningRequest != null) {
            positioningRequest.cancel();
            this.f1959j = null;
        }
        if (this.f1957h > 0) {
            this.f1952c.removeCallbacks(this.f1953d);
            this.f1957h = 0;
        }
        this.f1956g = positioningListener;
        this.f1958i = new ai1(this.f1951b).withAdUnitId(str).generateUrlString(Constants.HOST);
        m5620g();
    }
}
