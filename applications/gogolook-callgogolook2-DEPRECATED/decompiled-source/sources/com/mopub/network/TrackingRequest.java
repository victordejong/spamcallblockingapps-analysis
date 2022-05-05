package com.mopub.network;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    @Nullable

    /* renamed from: s */
    public final Listener f9463s;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/TrackingRequest$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onResponse(@NonNull String str);
    }

    /* renamed from: com.mopub.network.TrackingRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/TrackingRequest$a.class */
    public static final class C4039a implements Listener {

        /* renamed from: a */
        public final /* synthetic */ Listener f9464a;

        /* renamed from: b */
        public final /* synthetic */ String f9465b;

        public C4039a(Listener listener, String str) {
            this.f9464a = listener;
            this.f9465b = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to hit tracking endpoint: " + this.f9465b);
            Listener listener = this.f9464a;
            if (listener != null) {
                listener.onErrorResponse(volleyError);
            }
        }

        @Override // com.mopub.network.TrackingRequest.Listener
        public void onResponse(@NonNull String str) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Successfully hit tracking endpoint: " + str);
            Listener listener = this.f9464a;
            if (listener != null) {
                listener.onResponse(str);
            }
        }
    }

    public TrackingRequest(@NonNull Context context, @NonNull String str, @Nullable Listener listener) {
        super(context, str, listener);
        this.f9463s = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy(2500, 0, 1.0f));
    }

    public static void makeTrackingHttpRequest(@Nullable Iterable<String> iterable, @Nullable Context context) {
        makeTrackingHttpRequest(iterable, context, (Listener) null);
    }

    public static void makeTrackingHttpRequest(@Nullable Iterable<String> iterable, @Nullable Context context, @Nullable Listener listener) {
        if (!(iterable == null || context == null)) {
            MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
            for (String str : iterable) {
                if (!TextUtils.isEmpty(str)) {
                    requestQueue.add(new TrackingRequest(context, str, new C4039a(listener, str)));
                }
            }
        }
    }

    public static void makeTrackingHttpRequest(@Nullable String str, @Nullable Context context) {
        makeTrackingHttpRequest(str, context, (Listener) null);
    }

    public static void makeTrackingHttpRequest(@Nullable String str, @Nullable Context context, @Nullable Listener listener) {
        if (!TextUtils.isEmpty(str)) {
            makeTrackingHttpRequest(Arrays.asList(str), context, listener);
        }
    }

    public static void makeVastTrackingHttpRequest(@NonNull List<VastTracker> list, @Nullable VastErrorCode vastErrorCode, @Nullable Integer num, @Nullable String str, @Nullable Context context) {
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

    public static void makeVastTrackingTwoHttpRequest(@NonNull List<VastTrackerTwo> list, @Nullable VastErrorCode vastErrorCode, @Nullable Integer num, @Nullable String str, @Nullable Context context) {
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
    public Response<Void> mo29871a(NetworkResponse networkResponse) {
        if (networkResponse.statusCode == 200) {
            return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
        }
        return Response.error(new MoPubNetworkError("Failed to log tracking request. Response code: " + networkResponse.statusCode + " for url: " + getUrl(), MoPubNetworkError.Reason.TRACKING_FAILURE));
    }

    public void deliverResponse(Void r4) {
        Listener listener = this.f9463s;
        if (listener != null) {
            listener.onResponse(getUrl());
        }
    }
}
