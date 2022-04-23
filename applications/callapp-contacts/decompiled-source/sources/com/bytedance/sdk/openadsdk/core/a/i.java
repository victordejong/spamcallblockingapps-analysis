package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.bytedance.sdk.openadsdk.core.k;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/i.class */
public class i implements TTAdNative.SplashAdListener {

    /* renamed from: a  reason: collision with root package name */
    private TTAdNative.SplashAdListener f8790a;

    public i(TTAdNative.SplashAdListener splashAdListener) {
        this.f8790a = splashAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8790a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8790a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.i.1
                    @Override // java.lang.Runnable
                    public void run() {
                        i.this.f8790a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
    public void onSplashAdLoad(final TTSplashAd tTSplashAd) {
        if (this.f8790a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8790a.onSplashAdLoad(tTSplashAd);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.i.3
                    @Override // java.lang.Runnable
                    public void run() {
                        i.this.f8790a.onSplashAdLoad(tTSplashAd);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
    public void onTimeout() {
        if (this.f8790a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8790a.onTimeout();
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.i.2
                    @Override // java.lang.Runnable
                    public void run() {
                        i.this.f8790a.onTimeout();
                    }
                });
            }
        }
    }
}
