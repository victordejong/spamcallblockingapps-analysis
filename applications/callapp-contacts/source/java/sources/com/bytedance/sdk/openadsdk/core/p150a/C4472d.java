package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/d.class */
public class C4472d implements TTAdNative.FullScreenVideoAdListener {

    /* renamed from: a */
    TTAdNative.FullScreenVideoAdListener f16289a;

    public C4472d(TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        this.f16289a = fullScreenVideoAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16289a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16289a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                C4472d.this.f16289a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoAdLoad(final TTFullScreenVideoAd tTFullScreenVideoAd) {
        if (this.f16289a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16289a.onFullScreenVideoAdLoad(tTFullScreenVideoAd);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.d.2
                @Override // java.lang.Runnable
                public void run() {
                    C4472d.this.f16289a.onFullScreenVideoAdLoad(tTFullScreenVideoAd);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoCached() {
        if (this.f16289a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16289a.onFullScreenVideoCached();
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.d.3
                @Override // java.lang.Runnable
                public void run() {
                    C4472d.this.f16289a.onFullScreenVideoCached();
                }
            });
        }
    }
}
