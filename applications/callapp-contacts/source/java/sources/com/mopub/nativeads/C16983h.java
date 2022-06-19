package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
/* renamed from: com.mopub.nativeads.h */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/h.class */
public final class C16983h implements PositioningSource {

    /* renamed from: b */
    final Context f60178b;

    /* renamed from: e */
    PositioningSource.PositioningListener f60181e;

    /* renamed from: f */
    int f60182f;

    /* renamed from: i */
    private String f60185i;

    /* renamed from: j */
    private PositioningRequest f60186j;

    /* renamed from: a */
    int f60177a = 300000;

    /* renamed from: c */
    final Handler f60179c = new Handler();

    /* renamed from: d */
    final Runnable f60180d = new Runnable() { // from class: com.mopub.nativeads.h.1
        @Override // java.lang.Runnable
        public final void run() {
            C16983h.this.m6098a();
        }
    };

    /* renamed from: g */
    private final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> f60183g = new Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning>() { // from class: com.mopub.nativeads.h.2
        public final void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            C16983h c16983h = C16983h.this;
            if (c16983h.f60181e != null) {
                c16983h.f60181e.onLoad(moPubClientPositioning);
            }
            c16983h.f60181e = null;
            c16983h.f60182f = 0;
        }
    };

    /* renamed from: h */
    private final Response.ErrorListener f60184h = new Response.ErrorListener() { // from class: com.mopub.nativeads.h.3
        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            if (!(volleyError instanceof MoPubNetworkError) || ((MoPubNetworkError) volleyError).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load positioning data", volleyError);
                if (volleyError.networkResponse == null && !DeviceUtils.isNetworkAvailable(C16983h.this.f60178b)) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.valueOf(MoPubErrorCode.NO_CONNECTION));
                }
            }
            C16983h c16983h = C16983h.this;
            int pow = (int) (Math.pow(2.0d, c16983h.f60182f + 1) * 1000.0d);
            if (pow < c16983h.f60177a) {
                c16983h.f60182f++;
                c16983h.f60179c.postDelayed(c16983h.f60180d, pow);
                return;
            }
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error downloading positioning information");
            if (c16983h.f60181e != null) {
                c16983h.f60181e.onFailed();
            }
            c16983h.f60181e = null;
        }
    };

    public C16983h(Context context) {
        this.f60178b = context.getApplicationContext();
    }

    /* renamed from: a */
    final void m6098a() {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Loading positioning from: " + this.f60185i);
        this.f60186j = new PositioningRequest(this.f60178b, this.f60185i, this.f60183g, this.f60184h);
        Networking.getRequestQueue(this.f60178b).add(this.f60186j);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public final void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        PositioningRequest positioningRequest = this.f60186j;
        if (positioningRequest != null) {
            positioningRequest.cancel();
            this.f60186j = null;
        }
        if (this.f60182f > 0) {
            this.f60179c.removeCallbacks(this.f60180d);
            this.f60182f = 0;
        }
        this.f60181e = positioningListener;
        this.f60185i = new C16982g(this.f60178b).withAdUnitId(str).generateUrlString(Constants.HOST);
        m6098a();
    }
}
