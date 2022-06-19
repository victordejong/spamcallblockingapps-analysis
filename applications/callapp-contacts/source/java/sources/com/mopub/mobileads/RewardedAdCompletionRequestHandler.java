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

    /* renamed from: a */
    static final int[] f59439a = {5000, 10000, 20000, PangleAdapterConfiguration.CONTENT_TYPE_ERROR, 60000};

    /* renamed from: b */
    private final String f59440b;

    /* renamed from: c */
    private final Handler f59441c;

    /* renamed from: d */
    private final RequestQueue f59442d;

    /* renamed from: e */
    private final Context f59443e;

    /* renamed from: f */
    private int f59444f;

    /* renamed from: g */
    private volatile boolean f59445g;

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
        sb.append(str2 == null ? "" : Uri.encode(str2));
        sb.append("&rcn=");
        sb.append(Uri.encode(str3));
        sb.append("&rca=");
        sb.append(Uri.encode(str4));
        sb.append("&nv=");
        sb.append(Uri.encode("5.16.4"));
        sb.append("&v=1&cec=");
        sb.append(str5 == null ? "" : Uri.encode(str5));
        if (!TextUtils.isEmpty(str6)) {
            sb.append("&rcd=");
            sb.append(Uri.encode(str6));
        }
        this.f59440b = sb.toString();
        this.f59444f = 0;
        this.f59441c = handler;
        this.f59442d = Networking.getRequestQueue(context);
        this.f59443e = context.getApplicationContext();
    }

    /* renamed from: a */
    private static int m6427a(int i) {
        if (i >= 0) {
            int[] iArr = f59439a;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        int[] iArr2 = f59439a;
        return iArr2[iArr2.length - 1];
    }

    public static void makeRewardedAdCompletionRequest(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (context == null || TextUtils.isEmpty(str) || str3 == null || str4 == null) {
            return;
        }
        new RewardedAdCompletionRequestHandler(context, str, str2, str3, str4, str5, str6).m6428a();
    }

    /* renamed from: a */
    final void m6428a() {
        if (this.f59445g) {
            this.f59442d.cancelAll(this.f59440b);
            return;
        }
        RewardedAdCompletionRequest rewardedAdCompletionRequest = new RewardedAdCompletionRequest(this.f59443e, this.f59440b, new DefaultRetryPolicy(m6427a(this.f59444f) - 1000, 0, BitmapDescriptorFactory.HUE_RED), this);
        rewardedAdCompletionRequest.setTag(this.f59440b);
        this.f59442d.add(rewardedAdCompletionRequest);
        if (this.f59444f >= 17) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Exceeded number of retries for rewarded video completion request.");
            return;
        }
        this.f59441c.postDelayed(new Runnable() { // from class: com.mopub.mobileads.RewardedAdCompletionRequestHandler.1
            @Override // java.lang.Runnable
            public final void run() {
                RewardedAdCompletionRequestHandler.this.m6428a();
            }
        }, m6427a(this.f59444f));
        this.f59444f++;
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        if (volleyError == null || volleyError.networkResponse == null) {
            return;
        }
        if (volleyError.networkResponse.statusCode >= 500 && volleyError.networkResponse.statusCode < 600) {
            return;
        }
        this.f59445g = true;
    }

    @Override // com.mopub.mobileads.RewardedAdCompletionRequest.RewardedAdCompletionRequestListener
    public void onResponse(Integer num) {
        if (num != null) {
            if (num.intValue() >= 500 && num.intValue() < 600) {
                return;
            }
            this.f59445g = true;
        }
    }
}
