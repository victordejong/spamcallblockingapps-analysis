package com.mopub.network;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastErrorCode;
import com.mopub.mobileads.VastMacroHelper;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.VastTrackerTwo;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/TrackingRequest.class */
public class TrackingRequest extends MoPubRequest<Void> {

    /* renamed from: s */
    public final Listener f35059s;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/TrackingRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onResponse(String str);
    }

    /* renamed from: com.mopub.network.TrackingRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/TrackingRequest$a.class */
    public static final class C8992a implements Listener {

        /* renamed from: a */
        public final /* synthetic */ Listener f35060a;

        /* renamed from: b */
        public final /* synthetic */ String f35061b;

        public C8992a(Listener listener, String str) {
            this.f35060a = listener;
            this.f35061b = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to hit tracking endpoint: " + this.f35061b);
            Listener listener = this.f35060a;
            if (listener != null) {
                listener.onErrorResponse(volleyError);
            }
        }

        @Override // com.mopub.network.TrackingRequest.Listener
        public void onResponse(String str) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Successfully hit tracking endpoint: " + str);
            Listener listener = this.f35060a;
            if (listener != null) {
                listener.onResponse(str);
            }
        }
    }

    public TrackingRequest(Context context, String str, Listener listener) {
        super(context, str, listener);
        this.f35059s = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy(2500, 0, 1.0f));
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context) {
        makeTrackingHttpRequest(iterable, context, (Listener) null);
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context, Listener listener) {
        if (!(iterable == null || context == null)) {
            MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
            for (String str : iterable) {
                if (!TextUtils.isEmpty(str)) {
                    requestQueue.add(new TrackingRequest(context, str, new C8992a(listener, str)));
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

    public static void makeVastTrackingTwoHttpRequest(List<VastTrackerTwo> list, VastErrorCode vastErrorCode, Integer num, String str, Context context) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList(list.size());
        for (VastTrackerTwo vastTrackerTwo : list) {
            if (vastTrackerTwo != null && (!vastTrackerTwo.isTracked() || vastTrackerTwo.isRepeatable())) {
                arrayList.add(vastTrackerTwo.getContent());
                vastTrackerTwo.setTracked();
            }
        }
        makeTrackingHttpRequest(new VastMacroHelper(arrayList).withErrorCode(vastErrorCode).withContentPlayHead(num).withAssetUri(str).getUris(), context);
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<Void> mo3669a(NetworkResponse networkResponse) {
        if (networkResponse.statusCode == 200) {
            return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
        }
        return Response.error(new MoPubNetworkError("Failed to log tracking request. Response code: " + networkResponse.statusCode + " for url: " + getUrl(), MoPubNetworkError.Reason.TRACKING_FAILURE));
    }

    public void deliverResponse(Void r4) {
        Listener listener = this.f35059s;
        if (listener != null) {
            listener.onResponse(getUrl());
        }
    }
}
