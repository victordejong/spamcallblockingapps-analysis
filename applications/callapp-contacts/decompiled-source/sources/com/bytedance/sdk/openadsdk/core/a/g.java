package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.k;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/g.class */
public class g implements TTAdNative.NativeExpressAdListener {

    /* renamed from: a  reason: collision with root package name */
    TTAdNative.NativeExpressAdListener f8777a;

    public g(TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        this.f8777a = nativeExpressAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8777a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8777a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.g.1
                    @Override // java.lang.Runnable
                    public void run() {
                        g.this.f8777a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public void onNativeExpressAdLoad(final List<TTNativeExpressAd> list) {
        if (this.f8777a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8777a.onNativeExpressAdLoad(list);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.g.2
                    @Override // java.lang.Runnable
                    public void run() {
                        g.this.f8777a.onNativeExpressAdLoad(list);
                    }
                });
            }
        }
    }
}
