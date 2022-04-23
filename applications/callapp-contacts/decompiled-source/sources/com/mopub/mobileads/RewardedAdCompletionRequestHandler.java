package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.RewardedAdCompletionRequest;
import com.mopub.network.Networking;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdCompletionRequestHandler.class */
public class RewardedAdCompletionRequestHandler implements RewardedAdCompletionRequest.RewardedAdCompletionRequestListener {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f34233a = {5000, 10000, 20000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 60000};

    /* renamed from: b  reason: collision with root package name */
    private final String f34234b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f34235c;

    /* renamed from: d  reason: collision with root package name */
    private final RequestQueue f34236d;
    private final Context e;
    private int f;
    private volatile boolean g;

    RewardedAdCompletionRequestHandler(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        this(context, str, str2, str3, str4, str5, str6, new Handler());
    }

    RewardedAdCompletionRequestHandler(Context context, String str, String str2, String str3, String str4, String str5, String str6, Handler handler) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str3);
        Preconditions.checkNotNull(str4);
        Preconditions.checkNotNull(handler);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str3);
        Preconditions.checkNotNull(str4);
        StringBuilder sb = new StringBuilder(str);
        sb.append("&customer_id=");
        String str7 = "";
        sb.append(str2 == null ? "" : Uri.encode(str2));
        sb.append("&rcn=");
        sb.append(Uri.encode(str3));
        sb.append("&rca=");
        sb.append(Uri.encode(str4));
        sb.append("&nv=");
        sb.append(Uri.encode("5.16.4"));
        sb.append("&v=1&cec=");
        if (str5 != null) {
            str7 = Uri.encode(str5);
        }
        sb.append(str7);
        if (!TextUtils.isEmpty(str6)) {
            sb.append("&rcd=");
            sb.append(Uri.encode(str6));
        }
        this.f34234b = sb.toString();
        this.f = 0;
        this.f34235c = handler;
        this.f34236d = Networking.getRequestQueue(context);
        this.e = context.getApplicationContext();
    }

    private static int a(int i) {
        if (i >= 0) {
            int[] iArr = f34233a;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        int[] iArr2 = f34233a;
        return iArr2[iArr2.length - 1];
    }

    public static void makeRewardedAdCompletionRequest(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (context != null && !TextUtils.isEmpty(str) && str3 != null && str4 != null) {
            new RewardedAdCompletionRequestHandler(context, str, str2, str3, str4, str5, str6).a();
        }
    }

    final void a() {
        if (this.g) {
            this.f34236d.cancelAll(this.f34234b);
            return;
        }
        RewardedAdCompletionRequest rewardedAdCompletionRequest = new RewardedAdCompletionRequest(this.e, this.f34234b, new DefaultRetryPolicy(a(this.f) - 1000, 0, BitmapDescriptorFactory.HUE_RED), this);
        rewardedAdCompletionRequest.setTag(this.f34234b);
        this.f34236d.add(rewardedAdCompletionRequest);
        if (this.f >= 17) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Exceeded number of retries for rewarded video completion request.");
            return;
        }
        this.f34235c.postDelayed(new Runnable() { // from class: com.mopub.mobileads.RewardedAdCompletionRequestHandler.1
            @Override // java.lang.Runnable
            public final void run() {
                RewardedAdCompletionRequestHandler.this.a();
            }
        }, a(this.f));
        this.f++;
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        if (volleyError != null && volleyError.networkResponse != null) {
            if (volleyError.networkResponse.statusCode < 500 || volleyError.networkResponse.statusCode >= 600) {
                this.g = true;
            }
        }
    }

    @Override // com.mopub.mobileads.RewardedAdCompletionRequest.RewardedAdCompletionRequestListener
    public void onResponse(Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 500 || num.intValue() >= 600) {
            this.g = true;
        }
    }
}
