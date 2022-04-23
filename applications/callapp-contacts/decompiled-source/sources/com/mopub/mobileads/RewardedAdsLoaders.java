package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubRewardedAdManager;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders.class */
public final class RewardedAdsLoaders {

    /* renamed from: a  reason: collision with root package name */
    final HashMap<String, a> f34238a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    final MoPubRewardedAdManager f34239b;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener.class */
    public class RewardedAdRequestListener implements AdLoader.Listener {
        public final String adUnitId;

        RewardedAdRequestListener(String str) {
            this.adUnitId = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubRewardedAdManager moPubRewardedAdManager = RewardedAdsLoaders.this.f34239b;
            String str = this.adUnitId;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            if (volleyError instanceof MoPubNetworkError) {
                int i = MoPubRewardedAdManager.AnonymousClass5.f34129a[((MoPubNetworkError) volleyError).getReason().ordinal()];
                moPubErrorCode = (i == 1 || i == 2) ? MoPubErrorCode.NO_FILL : i != 3 ? MoPubErrorCode.INTERNAL_ERROR : MoPubErrorCode.TOO_MANY_REQUESTS;
            }
            if (volleyError instanceof NoConnectionError) {
                moPubErrorCode = MoPubErrorCode.NO_CONNECTION;
            }
            moPubRewardedAdManager.a(str, moPubErrorCode);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            RewardedAdsLoaders.this.f34239b.a(adResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardedAdsLoaders(MoPubRewardedAdManager moPubRewardedAdManager) {
        this.f34239b = moPubRewardedAdManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r0.hasMoreAds() == false) goto L_0x0026;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mopub.volley.Request<?> a(android.content.Context r12, java.lang.String r13, java.lang.String r14, com.mopub.mobileads.MoPubErrorCode r15) {
        /*
            r11 = this;
            r0 = r13
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r12
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r11
            java.util.HashMap<java.lang.String, com.mopub.mobileads.a> r0 = r0.f34238a
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            com.mopub.mobileads.a r0 = (com.mopub.mobileads.a) r0
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L_0x0026
            r0 = r16
            r17 = r0
            r0 = r16
            boolean r0 = r0.hasMoreAds()
            if (r0 != 0) goto L_0x0049
        L_0x0026:
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
            java.util.HashMap<java.lang.String, com.mopub.mobileads.a> r0 = r0.f34238a
            r1 = r13
            r2 = r17
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0049:
            r0 = r17
            r1 = r15
            com.mopub.volley.Request r0 = r0.loadNextAd(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.RewardedAdsLoaders.a(android.content.Context, java.lang.String, java.lang.String, com.mopub.mobileads.MoPubErrorCode):com.mopub.volley.Request");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str) {
        return this.f34238a.containsKey(str) && this.f34238a.get(str).isRunning();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        Preconditions.checkNotNull(str);
        this.f34238a.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(String str) {
        a aVar = this.f34238a.get(str);
        return (aVar == null || aVar.a() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str) {
        a aVar = this.f34238a.get(str);
        return aVar != null && aVar.hasMoreAds();
    }
}
