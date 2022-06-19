package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubRewardedAdManager;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders.class */
public final class RewardedAdsLoaders {

    /* renamed from: a */
    final HashMap<String, C16849a> f59447a = new HashMap<>();

    /* renamed from: b */
    final MoPubRewardedAdManager f59448b;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener.class */
    public class RewardedAdRequestListener implements AdLoader.Listener {
        public final String adUnitId;

        RewardedAdRequestListener(String str) {
            RewardedAdsLoaders.this = r4;
            this.adUnitId = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubRewardedAdManager moPubRewardedAdManager = RewardedAdsLoaders.this.f59448b;
            String str = this.adUnitId;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            if (volleyError instanceof MoPubNetworkError) {
                int i = MoPubRewardedAdManager.C168015.f59312a[((MoPubNetworkError) volleyError).getReason().ordinal()];
                moPubErrorCode = (i == 1 || i == 2) ? MoPubErrorCode.NO_FILL : i != 3 ? MoPubErrorCode.INTERNAL_ERROR : MoPubErrorCode.TOO_MANY_REQUESTS;
            }
            if (volleyError instanceof NoConnectionError) {
                moPubErrorCode = MoPubErrorCode.NO_CONNECTION;
            }
            moPubRewardedAdManager.m6459a(str, moPubErrorCode);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            RewardedAdsLoaders.this.f59448b.m6463a(adResponse);
        }
    }

    public RewardedAdsLoaders(MoPubRewardedAdManager moPubRewardedAdManager) {
        this.f59448b = moPubRewardedAdManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r0.hasMoreAds() == false) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mopub.volley.Request<?> m6426a(android.content.Context r12, java.lang.String r13, java.lang.String r14, com.mopub.mobileads.MoPubErrorCode r15) {
        /*
            r11 = this;
            r0 = r13
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r12
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r11
            java.util.HashMap<java.lang.String, com.mopub.mobileads.a> r0 = r0.f59447a
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            com.mopub.mobileads.a r0 = (com.mopub.mobileads.C16849a) r0
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L26
            r0 = r16
            r17 = r0
            r0 = r16
            boolean r0 = r0.hasMoreAds()
            if (r0 != 0) goto L49
        L26:
            com.mopub.mobileads.a r0 = new com.mopub.mobileads.a
            r1 = r0
            r2 = r14
            com.mopub.common.AdFormat r3 = com.mopub.common.AdFormat.REWARDED_AD
            r4 = r13
            r5 = r12
            com.mopub.mobileads.RewardedAdsLoaders$RewardedAdRequestListener r6 = new com.mopub.mobileads.RewardedAdsLoaders$RewardedAdRequestListener
            r7 = r6
            r8 = r11
            r9 = r13
            r7.<init>(r9)
            r1.<init>(r2, r3, r4, r5, r6)
            r17 = r0
            r0 = r11
            java.util.HashMap<java.lang.String, com.mopub.mobileads.a> r0 = r0.f59447a
            r1 = r13
            r2 = r17
            java.lang.Object r0 = r0.put(r1, r2)
        L49:
            r0 = r17
            r1 = r15
            com.mopub.volley.Request r0 = r0.loadNextAd(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.RewardedAdsLoaders.m6426a(android.content.Context, java.lang.String, java.lang.String, com.mopub.mobileads.MoPubErrorCode):com.mopub.volley.Request");
    }

    /* renamed from: a */
    public final boolean m6425a(String str) {
        return this.f59447a.containsKey(str) && this.f59447a.get(str).isRunning();
    }

    /* renamed from: b */
    public final void m6424b(String str) {
        Preconditions.checkNotNull(str);
        this.f59447a.remove(str);
    }

    /* renamed from: c */
    public final boolean m6423c(String str) {
        C16849a c16849a = this.f59447a.get(str);
        return (c16849a == null || c16849a.m6352a() == null) ? false : true;
    }

    /* renamed from: d */
    public final boolean m6422d(String str) {
        C16849a c16849a = this.f59447a.get(str);
        return c16849a != null && c16849a.hasMoreAds();
    }
}
