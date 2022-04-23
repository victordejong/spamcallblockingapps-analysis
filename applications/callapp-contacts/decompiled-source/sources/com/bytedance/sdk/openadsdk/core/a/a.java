package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTBannerAd;
import com.bytedance.sdk.openadsdk.core.k;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/a.class */
public class a implements TTAdNative.BannerAdListener {

    /* renamed from: a  reason: collision with root package name */
    TTAdNative.BannerAdListener f8740a;

    public a(TTAdNative.BannerAdListener bannerAdListener) {
        this.f8740a = bannerAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.BannerAdListener
    public void onBannerAdLoad(final TTBannerAd tTBannerAd) {
        if (this.f8740a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8740a.onBannerAdLoad(tTBannerAd);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f8740a.onBannerAdLoad(tTBannerAd);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.BannerAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8740a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8740a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f8740a.onError(i, str);
                    }
                });
            }
        }
    }
}
