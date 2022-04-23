package com.mopub.network;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastErrorCode;
import com.mopub.mobileads.VastMacroHelper;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/TrackingRequest.class */
public class TrackingRequest extends MoPubRequest<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final Listener f34769a;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/TrackingRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onResponse(String str);
    }

    private TrackingRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f34769a = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 0, 1.0f));
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context) {
        makeTrackingHttpRequest(iterable, context, (Listener) null);
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context, final Listener listener) {
        if (!(iterable == null || context == null)) {
            MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
            for (final String str : iterable) {
                if (!TextUtils.isEmpty(str)) {
                    requestQueue.add(new TrackingRequest(context, str, new Listener() { // from class: com.mopub.network.TrackingRequest.1
                        @Override // com.mopub.volley.Response.ErrorListener
                        public final void onErrorResponse(VolleyError volleyError) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Failed to hit tracking endpoint: " + str);
                            Listener listener2 = Listener.this;
                            if (listener2 != null) {
                                listener2.onErrorResponse(volleyError);
                            }
                        }

                        @Override // com.mopub.network.TrackingRequest.Listener
                        public final void onResponse(String str2) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Successfully hit tracking endpoint: ".concat(String.valueOf(str2)));
                            Listener listener2 = Listener.this;
                            if (listener2 != null) {
                                listener2.onResponse(str2);
                            }
                        }
                    }));
                }
            }
        }
    }

    public static void makeTrackingHttpRequest(String str, Context context) {
        makeTrackingHttpRequest(str, context, (Listener) null);
    }

    public static void makeTrackingHttpRequest(String str, Context context, Listener listener) {
        if (!TextUtils.isEmpty(str)) {
            makeTrackingHttpRequest(Arrays.asList(str), context, listener);
        }
    }

    public static void makeVastTrackingHttpRequest(List<VastTracker> list, VastErrorCode vastErrorCode, Integer num, String str, Context context) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList(list.size());
        for (VastTracker vastTracker : list) {
            if (vastTracker != null && (!vastTracker.isTracked() || vastTracker.isRepeatable())) {
                arrayList.add(vastTracker.getContent());
                vastTracker.setTracked();
            }
        }
        makeTrackingHttpRequest(new VastMacroHelper(arrayList).withErrorCode(vastErrorCode).withContentPlayHead(num).withAssetUri(str).getUris(), context);
    }

    public void deliverResponse(Void r4) {
        Listener listener = this.f34769a;
        if (listener != null) {
            listener.onResponse(getUrl());
        }
    }

    @Override // com.mopub.volley.Request
    public Response<Void> parseNetworkResponse(NetworkResponse networkResponse) {
        if (networkResponse.statusCode == 200) {
            return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
        }
        return Response.error(new MoPubNetworkError("Failed to log tracking request. Response code: " + networkResponse.statusCode + " for url: " + getUrl(), MoPubNetworkError.Reason.TRACKING_FAILURE));
    }
}
