package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.Preconditions;
import com.mopub.network.AdLoader;
import com.mopub.network.AdResponse;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
import p131c.p421j.p424b.C6642a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders.class */
public class RewardedAdsLoaders {

    /* renamed from: a */
    public final HashMap<String, C6642a> f34202a = new HashMap<>();

    /* renamed from: b */
    public final MoPubRewardedVideoManager f34203b;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders$RewardedVideoRequestListener.class */
    public class RewardedVideoRequestListener implements AdLoader.Listener {
        public final String adUnitId;

        public RewardedVideoRequestListener(String str) {
            this.adUnitId = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            RewardedAdsLoaders.this.f34203b.m4353a(volleyError, this.adUnitId);
        }

        @Override // com.mopub.network.AdLoader.Listener
        public void onSuccess(AdResponse adResponse) {
            RewardedAdsLoaders.this.f34203b.m4354a(adResponse);
        }
    }

    public RewardedAdsLoaders(MoPubRewardedVideoManager moPubRewardedVideoManager) {
        this.f34203b = moPubRewardedVideoManager;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r0.hasMoreAds() == false) goto L_0x0026;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.volley.Request<?> m4298a(android.content.Context r12, java.lang.String r13, java.lang.String r14, com.mopub.mobileads.MoPubErrorCode r15) {
        /*
            r11 = this;
            r0 = r13
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r12
            com.mopub.common.Preconditions.checkNotNull(r0)
            r0 = r11
            java.util.HashMap<java.lang.String, c.j.b.a> r0 = r0.f34202a
            r1 = r13
            java.lang.Object r0 = r0.get(r1)
            c.j.b.a r0 = (p131c.p421j.p424b.C6642a) r0
            r16 = r0
            r0 = r16
            if (r0 == 0) goto L_0x0026
            r0 = r16
            r17 = r0
            r0 = r16
            boolean r0 = r0.hasMoreAds()
            if (r0 != 0) goto L_0x0049
        L_0x0026:
            c.j.b.a r0 = new c.j.b.a
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
            java.util.HashMap<java.lang.String, c.j.b.a> r0 = r0.f34202a
            r1 = r13
            r2 = r17
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0049:
            r0 = r17
            r1 = r15
            com.mopub.volley.Request r0 = r0.loadNextAd(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.RewardedAdsLoaders.m4298a(android.content.Context, java.lang.String, java.lang.String, com.mopub.mobileads.MoPubErrorCode):com.mopub.volley.Request");
    }

    /* renamed from: a */
    public void m4295a(String str, Context context) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        C6642a aVar = this.f34202a.get(str);
        if (aVar != null) {
            aVar.m20215a(context);
        }
    }

    /* renamed from: a */
    public boolean m4296a(String str) {
        C6642a aVar = this.f34202a.get(str);
        boolean z = false;
        if (aVar == null) {
            return false;
        }
        if (aVar.m20212c() != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public void m4294b(String str) {
        C6642a aVar = this.f34202a.get(str);
        if (aVar != null) {
            aVar.creativeDownloadSuccess();
        }
    }

    /* renamed from: b */
    public void m4293b(String str, Context context) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(context);
        C6642a aVar = this.f34202a.get(str);
        if (aVar != null) {
            aVar.m20213b(context);
        }
    }

    /* renamed from: c */
    public boolean m4292c(String str) {
        C6642a aVar = this.f34202a.get(str);
        return aVar != null && aVar.hasMoreAds();
    }

    /* renamed from: d */
    public boolean m4291d(String str) {
        return this.f34202a.containsKey(str) && this.f34202a.get(str).isRunning();
    }

    /* renamed from: e */
    public void m4290e(String str) {
        Preconditions.checkNotNull(str);
        if (this.f34202a.containsKey(str)) {
            this.f34202a.remove(str);
        }
    }

    /* renamed from: f */
    public void m4289f(String str) {
        Preconditions.checkNotNull(str);
        if (this.f34202a.containsKey(str)) {
            this.f34202a.remove(str);
        }
    }
}
