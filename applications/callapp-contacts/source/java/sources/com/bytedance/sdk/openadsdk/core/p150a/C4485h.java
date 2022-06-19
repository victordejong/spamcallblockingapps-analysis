package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/h.class */
public class C4485h implements TTAdNative.RewardVideoAdListener {

    /* renamed from: a */
    private TTAdNative.RewardVideoAdListener f16314a;

    public C4485h(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.f16314a = rewardVideoAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16314a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16314a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.h.1
            @Override // java.lang.Runnable
            public void run() {
                C4485h.this.f16314a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoAdLoad(final TTRewardVideoAd tTRewardVideoAd) {
        if (this.f16314a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16314a.onRewardVideoAdLoad(tTRewardVideoAd);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.h.2
                @Override // java.lang.Runnable
                public void run() {
                    C4485h.this.f16314a.onRewardVideoAdLoad(tTRewardVideoAd);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoCached() {
        if (this.f16314a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16314a.onRewardVideoCached();
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.h.3
                @Override // java.lang.Runnable
                public void run() {
                    C4485h.this.f16314a.onRewardVideoCached();
                }
            });
        }
    }
}
