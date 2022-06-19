package com.bytedance.sdk.openadsdk.component.reward;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/e.class */
public class C4418e implements TTAdNative.FullScreenVideoAdListener, TTAdNative.RewardVideoAdListener {

    /* renamed from: a */
    final TTAdNative.RewardVideoAdListener f16136a;

    /* renamed from: b */
    final TTAdNative.FullScreenVideoAdListener f16137b;

    public C4418e(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.f16136a = null;
        this.f16137b = fullScreenVideoAdListener;
    }

    public C4418e(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.f16136a = rewardVideoAdListener;
        this.f16137b = null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, final String str) {
        if (this.f16136a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C4418e.this.f16136a != null) {
                        C4418e.this.f16136a.onError(i, str);
                    }
                }
            });
        }
        if (this.f16137b != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.2
                @Override // java.lang.Runnable
                public void run() {
                    if (C4418e.this.f16137b != null) {
                        C4418e.this.f16137b.onError(i, str);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoAdLoad(final TTFullScreenVideoAd tTFullScreenVideoAd) {
        if (this.f16137b != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.3
                @Override // java.lang.Runnable
                public void run() {
                    if (C4418e.this.f16137b != null) {
                        C4418e.this.f16137b.onFullScreenVideoAdLoad(tTFullScreenVideoAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoCached() {
        if (this.f16137b != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.4
                @Override // java.lang.Runnable
                public void run() {
                    if (C4418e.this.f16137b != null) {
                        C4418e.this.f16137b.onFullScreenVideoCached();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoAdLoad(final TTRewardVideoAd tTRewardVideoAd) {
        if (this.f16136a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.5
                @Override // java.lang.Runnable
                public void run() {
                    if (C4418e.this.f16136a != null) {
                        C4418e.this.f16136a.onRewardVideoAdLoad(tTRewardVideoAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoCached() {
        if (this.f16136a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.6
                @Override // java.lang.Runnable
                public void run() {
                    if (C4418e.this.f16136a != null) {
                        C4418e.this.f16136a.onRewardVideoCached();
                    }
                }
            });
        }
    }
}
