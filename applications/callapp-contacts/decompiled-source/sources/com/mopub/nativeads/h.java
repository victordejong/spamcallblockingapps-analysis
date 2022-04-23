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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/h.class */
public final class h implements PositioningSource {

    /* renamed from: b  reason: collision with root package name */
    final Context f34688b;
    PositioningSource.PositioningListener e;
    int f;
    private String i;
    private PositioningRequest j;

    /* renamed from: a  reason: collision with root package name */
    int f34687a = 300000;

    /* renamed from: c  reason: collision with root package name */
    final Handler f34689c = new Handler();

    /* renamed from: d  reason: collision with root package name */
    final Runnable f34690d = new Runnable() { // from class: com.mopub.nativeads.h.1
        @Override // java.lang.Runnable
        public final void run() {
            h.this.a();
        }
    };
    private final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> g = new Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning>() { // from class: com.mopub.nativeads.h.2
        public final void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            h hVar = h.this;
            if (hVar.e != null) {
                hVar.e.onLoad(moPubClientPositioning);
            }
            hVar.e = null;
            hVar.f = 0;
        }
    };
    private final Response.ErrorListener h = new Response.ErrorListener() { // from class: com.mopub.nativeads.h.3
        @Override // com.mopub.volley.Response.ErrorListener
        public final void onErrorResponse(VolleyError volleyError) {
            if (!(volleyError instanceof MoPubNetworkError) || ((MoPubNetworkError) volleyError).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to load positioning data", volleyError);
                if (volleyError.networkResponse == null && !DeviceUtils.isNetworkAvailable(h.this.f34688b)) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.valueOf(MoPubErrorCode.NO_CONNECTION));
                }
            }
            h hVar = h.this;
            int pow = (int) (Math.pow(2.0d, hVar.f + 1) * 1000.0d);
            if (pow >= hVar.f34687a) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error downloading positioning information");
                if (hVar.e != null) {
                    hVar.e.onFailed();
                }
                hVar.e = null;
                return;
            }
            hVar.f++;
            hVar.f34689c.postDelayed(hVar.f34690d, pow);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context) {
        this.f34688b = context.getApplicationContext();
    }

    final void a() {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Loading positioning from: " + this.i);
        this.j = new PositioningRequest(this.f34688b, this.i, this.g, this.h);
        Networking.getRequestQueue(this.f34688b).add(this.j);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public final void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        PositioningRequest positioningRequest = this.j;
        if (positioningRequest != null) {
            positioningRequest.cancel();
            this.j = null;
        }
        if (this.f > 0) {
            this.f34689c.removeCallbacks(this.f34690d);
            this.f = 0;
        }
        this.e = positioningListener;
        this.i = new g(this.f34688b).withAdUnitId(str).generateUrlString(Constants.HOST);
        a();
    }
}
