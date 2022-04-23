package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.core.k;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/d.class */
public class d implements TTAdNative.FullScreenVideoAdListener {

    /* renamed from: a  reason: collision with root package name */
    TTAdNative.FullScreenVideoAdListener f8758a;

    public d(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.f8758a = fullScreenVideoAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8758a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8758a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.f8758a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoAdLoad(final TTFullScreenVideoAd tTFullScreenVideoAd) {
        if (this.f8758a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8758a.onFullScreenVideoAdLoad(tTFullScreenVideoAd);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.d.2
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.f8758a.onFullScreenVideoAdLoad(tTFullScreenVideoAd);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoCached() {
        if (this.f8758a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8758a.onFullScreenVideoCached();
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.d.3
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.f8758a.onFullScreenVideoCached();
                    }
                });
            }
        }
    }
}
