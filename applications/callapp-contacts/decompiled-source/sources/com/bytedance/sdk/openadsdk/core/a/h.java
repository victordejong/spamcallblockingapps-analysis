package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.k;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/h.class */
public class h implements TTAdNative.RewardVideoAdListener {

    /* renamed from: a  reason: collision with root package name */
    private TTAdNative.RewardVideoAdListener f8783a;

    public h(TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        this.f8783a = rewardVideoAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8783a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8783a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.h.1
                    @Override // java.lang.Runnable
                    public void run() {
                        h.this.f8783a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoAdLoad(final TTRewardVideoAd tTRewardVideoAd) {
        if (this.f8783a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8783a.onRewardVideoAdLoad(tTRewardVideoAd);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.h.2
                    @Override // java.lang.Runnable
                    public void run() {
                        h.this.f8783a.onRewardVideoAdLoad(tTRewardVideoAd);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoCached() {
        if (this.f8783a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8783a.onRewardVideoCached();
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.h.3
                    @Override // java.lang.Runnable
                    public void run() {
                        h.this.f8783a.onRewardVideoCached();
                    }
                });
            }
        }
    }
}
