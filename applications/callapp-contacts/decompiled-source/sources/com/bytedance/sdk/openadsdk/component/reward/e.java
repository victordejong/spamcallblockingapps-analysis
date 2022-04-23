package com.bytedance.sdk.openadsdk.component.reward;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/e.class */
public class e implements TTAdNative.FullScreenVideoAdListener, TTAdNative.RewardVideoAdListener {

    /* renamed from: a  reason: collision with root package name */
    final TTAdNative.RewardVideoAdListener f8643a;

    /* renamed from: b  reason: collision with root package name */
    final TTAdNative.FullScreenVideoAdListener f8644b;

    public e(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.f8643a = null;
        this.f8644b = fullScreenVideoAdListener;
    }

    public e(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.f8643a = rewardVideoAdListener;
        this.f8644b = null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8643a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.1
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f8643a != null) {
                        e.this.f8643a.onError(i, str);
                    }
                }
            });
        }
        if (this.f8644b != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.2
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f8644b != null) {
                        e.this.f8644b.onError(i, str);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoAdLoad(final TTFullScreenVideoAd tTFullScreenVideoAd) {
        if (this.f8644b != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.3
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f8644b != null) {
                        e.this.f8644b.onFullScreenVideoAdLoad(tTFullScreenVideoAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoCached() {
        if (this.f8644b != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.4
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f8644b != null) {
                        e.this.f8644b.onFullScreenVideoCached();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoAdLoad(final TTRewardVideoAd tTRewardVideoAd) {
        if (this.f8643a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.5
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f8643a != null) {
                        e.this.f8643a.onRewardVideoAdLoad(tTRewardVideoAd);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoCached() {
        if (this.f8643a != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.6
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.f8643a != null) {
                        e.this.f8643a.onRewardVideoCached();
                    }
                }
            });
        }
    }
}
