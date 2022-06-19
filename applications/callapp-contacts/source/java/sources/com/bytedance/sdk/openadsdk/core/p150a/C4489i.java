package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/i.class */
public class C4489i implements TTAdNative.SplashAdListener {

    /* renamed from: a */
    private TTAdNative.SplashAdListener f16321a;

    public C4489i(TTAdNative.SplashAdListener splashAdListener) {
        this.f16321a = splashAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16321a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16321a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.i.1
            @Override // java.lang.Runnable
            public void run() {
                C4489i.this.f16321a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
    public void onSplashAdLoad(final TTSplashAd tTSplashAd) {
        if (this.f16321a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16321a.onSplashAdLoad(tTSplashAd);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.i.3
                @Override // java.lang.Runnable
                public void run() {
                    C4489i.this.f16321a.onSplashAdLoad(tTSplashAd);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
    public void onTimeout() {
        if (this.f16321a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16321a.onTimeout();
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.i.2
                @Override // java.lang.Runnable
                public void run() {
                    C4489i.this.f16321a.onTimeout();
                }
            });
        }
    }
}
