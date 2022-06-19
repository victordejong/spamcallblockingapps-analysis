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
/* loaded from: classes3-dex2jar.jar:com/mopub/network/TrackingRequest.class */
public class TrackingRequest extends MoPubRequest<Void> {

    /* renamed from: u */
    public final Listener f5437u;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/TrackingRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        @Override // com.mopub.volley.Response.ErrorListener
        /* synthetic */ void onErrorResponse(VolleyError volleyError);

        void onResponse(String str);
    }

    /* renamed from: com.mopub.network.TrackingRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/network/TrackingRequest$a.class */
    public static final class C1225a implements Listener {

        /* renamed from: a */
        public final /* synthetic */ Listener f5438a;

        /* renamed from: b */
        public final /* synthetic */ String f5439b;

        public C1225a(Listener listener, String str) {
            this.f5438a = listener;
            this.f5439b = str;
        }

        @Override // com.mopub.network.TrackingRequest.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to hit tracking endpoint: " + this.f5439b);
            Listener listener = this.f5438a;
            if (listener != null) {
                listener.onErrorResponse(volleyError);
            }
        }

        @Override // com.mopub.network.TrackingRequest.Listener
        public void onResponse(String str) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Successfully hit tracking endpoint: " + str);
            Listener listener = this.f5438a;
            if (listener != null) {
                listener.onResponse(str);
            }
        }
    }

    public TrackingRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f5437u = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 0, 1.0f));
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context) {
        makeTrackingHttpRequest(iterable, context, (Listener) null);
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context, Listener listener) {
        if (iterable == null || context == null) {
            return;
        }
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        for (String str : iterable) {
            if (!TextUtils.isEmpty(str)) {
                requestQueue.add(new TrackingRequest(context, str, new C1225a(listener, str)));
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
        Listener listener = this.f5437u;
        if (listener != null) {
            listener.onResponse(getUrl());
        }
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<Void> mo3087l(NetworkResponse networkResponse) {
        if (networkResponse.statusCode != 200) {
            return Response.error(new MoPubNetworkError("Failed to log tracking request. Response code: " + networkResponse.statusCode + " for url: " + getUrl(), MoPubNetworkError.Reason.TRACKING_FAILURE));
        }
        return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
