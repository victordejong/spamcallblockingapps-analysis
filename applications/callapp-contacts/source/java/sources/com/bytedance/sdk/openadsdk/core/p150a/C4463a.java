package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTBannerAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/a.class */
public class C4463a implements TTAdNative.BannerAdListener {

    /* renamed from: a */
    TTAdNative.BannerAdListener f16271a;

    public C4463a(TTAdNative.BannerAdListener bannerAdListener) {
        this.f16271a = bannerAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.BannerAdListener
    public void onBannerAdLoad(final TTBannerAd tTBannerAd) {
        if (this.f16271a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16271a.onBannerAdLoad(tTBannerAd);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.a.2
                @Override // java.lang.Runnable
                public void run() {
                    C4463a.this.f16271a.onBannerAdLoad(tTBannerAd);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.BannerAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16271a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16271a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                C4463a.this.f16271a.onError(i, str2);
            }
        });
    }
}
