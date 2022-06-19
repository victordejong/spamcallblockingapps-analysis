package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.RewardedVideoCompletionRequest;
import com.mopub.network.Networking;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequestHandler.class */
public class RewardedVideoCompletionRequestHandler implements RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener {

    /* renamed from: h */
    public static final int[] f4784h = {5000, 10000, 20000, 40000, 60000};

    /* renamed from: a */
    public final String f4785a;

    /* renamed from: b */
    public final Handler f4786b;

    /* renamed from: c */
    public final RequestQueue f4787c;

    /* renamed from: d */
    public final Context f4788d;

    /* renamed from: f */
    public int f4789f;

    /* renamed from: g */
    public volatile boolean f4790g;

    /* renamed from: com.mopub.mobileads.RewardedVideoCompletionRequestHandler$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequestHandler$a.class */
    public class RunnableC1105a implements Runnable {
        public RunnableC1105a() {
            RewardedVideoCompletionRequestHandler.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardedVideoCompletionRequestHandler.this.m3589c();
        }
    }

    public RewardedVideoCompletionRequestHandler(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        this(context, str, str2, str3, str4, str5, str6, new Handler());
    }

    @VisibleForTesting
    public RewardedVideoCompletionRequestHandler(Context context, String str, String str2, String str3, String str4, String str5, String str6, Handler handler) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str3);
        Preconditions.checkNotNull(str4);
        Preconditions.checkNotNull(handler);
        this.f4785a = m3591a(str, str2, str3, str4, str5, str6);
        this.f4789f = 0;
        this.f4786b = handler;
        this.f4787c = Networking.getRequestQueue(context);
        this.f4788d = context.getApplicationContext();
    }

    /* renamed from: a */
    public static String m3591a(String str, String str2, String str3, String str4, String str5, String str6) {
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
        sb.append(Uri.encode("5.15.0"));
        sb.append("&v=");
        sb.append(1);
        sb.append("&cec=");
        sb.append(str5 == null ? "" : Uri.encode(str5));
        if (!TextUtils.isEmpty(str6)) {
            sb.append("&rcd=");
            sb.append(Uri.encode(str6));
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static int m3590b(int i) {
        if (i >= 0) {
            int[] iArr = f4784h;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        int[] iArr2 = f4784h;
        return iArr2[iArr2.length - 1];
    }

    public static void makeRewardedVideoCompletionRequest(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (context == null || TextUtils.isEmpty(str) || str3 == null || str4 == null) {
            return;
        }
        new RewardedVideoCompletionRequestHandler(context, str, str2, str3, str4, str5, str6).m3589c();
    }

    /* renamed from: c */
    public void m3589c() {
        int i;
        if (this.f4790g) {
            this.f4787c.cancelAll(this.f4785a);
            return;
        }
        RewardedVideoCompletionRequest rewardedVideoCompletionRequest = new RewardedVideoCompletionRequest(this.f4788d, this.f4785a, new DefaultRetryPolicy(m3590b(this.f4789f) - 1000, 0, 0.0f), this);
        rewardedVideoCompletionRequest.setTag(this.f4785a);
        this.f4787c.add(rewardedVideoCompletionRequest);
        if (this.f4789f >= 17) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Exceeded number of retries for rewarded video completion request.");
            return;
        }
        this.f4786b.postDelayed(new RunnableC1105a(), m3590b(i));
        this.f4789f++;
    }

    @Override // com.mopub.mobileads.RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener, com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        NetworkResponse networkResponse;
        if (volleyError == null || (networkResponse = volleyError.networkResponse) == null) {
            return;
        }
        int i = networkResponse.statusCode;
        if (i >= 500 && i < 600) {
            return;
        }
        this.f4790g = true;
    }

    @Override // com.mopub.mobileads.RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener
    public void onResponse(Integer num) {
        if (num != null) {
            if (num.intValue() >= 500 && num.intValue() < 600) {
                return;
            }
            this.f4790g = true;
        }
    }
}
