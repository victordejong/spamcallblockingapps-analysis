package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.Preconditions;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders.class */
public class RewardedAdsLoaders {

    /* renamed from: a */
    public final HashMap<String, bh1> f4780a = new HashMap<>();

    /* renamed from: b */
    public final MoPubRewardedVideoManager f4781b;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders$RewardedVideoRequestListener.class */
    public class RewardedVideoRequestListener implements AdLoader.Listener {
        public final String adUnitId;

        public RewardedVideoRequestListener(String str) {
            RewardedAdsLoaders.this = r4;
            this.adUnitId = str;
        }

        @Override // com.mopub.network.AdLoader.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            RewardedAdsLoaders.this.f4781b.m3619u(volleyError, this.adUnitId);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            RewardedAdsLoaders.this.f4781b.m3618v(adResponse);
        }
    }

    public RewardedAdsLoaders(MoPubRewardedVideoManager moPubRewardedVideoManager) {
        this.f4781b = moPubRewardedVideoManager;
    }

    /* renamed from: b */
    public boolean m3601b(String str) {
        bh1 bh1Var = this.f4780a.get(str);
        boolean z = false;
        if (bh1Var == null) {
            return false;
        }
        if (bh1Var.m5632l() != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public void m3600c(String str) {
        bh1 bh1Var = this.f4780a.get(str);
        if (bh1Var == null) {
            return;
        }
        bh1Var.creativeDownloadSuccess();
    }

    /* renamed from: d */
    public boolean m3599d(String str) {
        bh1 bh1Var = this.f4780a.get(str);
        return bh1Var != null && bh1Var.hasMoreAds();
    }

    /* renamed from: e */
    public boolean m3598e(String str) {
        return this.f4780a.containsKey(str) && this.f4780a.get(str).isRunning();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r0.hasMoreAds() == false) goto L6;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.volley.Request<?> m3597f(android.content.Context r12, java.lang.String r13, java.lang.String r14, com.mopub.mobileads.MoPubErrorCode r15) {
        /*
            r11 = this;
            r0 = r13
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r12
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r11
            java.util.HashMap<java.lang.String, bh1> r0 = r0.f4780a
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            bh1 r0 = (p000.bh1) r0
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L26
            r0 = r16
            r17 = r0
            r0 = r16
            boolean r0 = r0.hasMoreAds()
            if (r0 != 0) goto L49
        L26:
            bh1 r0 = new bh1
            r1 = r0
            r2 = r14
            com.mopub.common.AdFormat r3 = com.mopub.common.AdFormat.REWARDED_VIDEO
            r4 = r13
            r5 = r12
            com.mopub.mobileads.RewardedAdsLoaders$RewardedVideoRequestListener r6 = new com.mopub.mobileads.RewardedAdsLoaders$RewardedVideoRequestListener
            r7 = r6
            r8 = r11
            r9 = r13
            r7.<init>(r9)
            r1.<init>(r2, r3, r4, r5, r6)
            r17 = r0
            r0 = r11
            java.util.HashMap<java.lang.String, bh1> r0 = r0.f4780a
            r1 = r13
            r2 = r17
            java.lang.Object r0 = r0.put(r1, r2)
        L49:
            r0 = r17
            r1 = r15
            com.mopub.volley.Request r0 = r0.loadNextAd(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.RewardedAdsLoaders.m3597f(android.content.Context, java.lang.String, java.lang.String, com.mopub.mobileads.MoPubErrorCode):com.mopub.volley.Request");
    }

    /* renamed from: g */
    public void m3596g(String str) {
        Preconditions.checkNotNull(str);
        if (this.f4780a.containsKey(str)) {
            this.f4780a.remove(str);
        }
    }

    /* renamed from: h */
    public void m3595h(String str) {
        Preconditions.checkNotNull(str);
        if (this.f4780a.containsKey(str)) {
            this.f4780a.remove(str);
        }
    }

    /* renamed from: i */
    public void m3594i(String str, Context context) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        bh1 bh1Var = this.f4780a.get(str);
        if (bh1Var == null) {
            return;
        }
        bh1Var.m5631m(context);
    }

    /* renamed from: j */
    public void m3593j(String str, Context context) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        bh1 bh1Var = this.f4780a.get(str);
        if (bh1Var == null) {
            return;
        }
        bh1Var.m5630n(context);
    }
}
