package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.core.k;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/f.class */
public class f implements TTAdNative.NativeAdListener {

    /* renamed from: a  reason: collision with root package name */
    private TTAdNative.NativeAdListener f8771a;

    public f(TTAdNative.NativeAdListener nativeAdListener) {
        this.f8771a = nativeAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8771a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8771a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.f.1
                    @Override // java.lang.Runnable
                    public void run() {
                        f.this.f8771a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener
    public void onNativeAdLoad(final List<TTNativeAd> list) {
        if (this.f8771a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8771a.onNativeAdLoad(list);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.f.2
                    @Override // java.lang.Runnable
                    public void run() {
                        f.this.f8771a.onNativeAdLoad(list);
                    }
                });
            }
        }
    }
}
