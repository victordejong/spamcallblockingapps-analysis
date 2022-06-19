package com.mopub.mobileads;

import com.mopub.common.Preconditions;
import e.n.b.f0;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/RewardedAdsLoaders.class */
public class RewardedAdsLoaders {

    /* renamed from: a */
    public final HashMap<String, f0> f8843a = new HashMap<>();

    /* renamed from: b */
    public final MoPubRewardedAdManager f8844b;

    public RewardedAdsLoaders(MoPubRewardedAdManager moPubRewardedAdManager) {
        this.f8844b = moPubRewardedAdManager;
    }

    /* renamed from: a */
    public boolean m36229a(String str) {
        f0 f0Var = this.f8843a.get(str);
        boolean z = false;
        if (f0Var == null) {
            return false;
        }
        if (f0Var.f9153g != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m36228b(String str) {
        return this.f8843a.containsKey(str) && this.f8843a.get(str).isRunning();
    }

    /* renamed from: c */
    public void m36227c(String str) {
        Preconditions.checkNotNull(str);
        this.f8843a.remove(str);
    }
}
