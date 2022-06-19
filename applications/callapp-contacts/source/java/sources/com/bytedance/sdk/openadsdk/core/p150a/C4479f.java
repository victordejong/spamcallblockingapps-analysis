package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/f.class */
public class C4479f implements TTAdNative.NativeAdListener {

    /* renamed from: a */
    private TTAdNative.NativeAdListener f16302a;

    public C4479f(TTAdNative.NativeAdListener nativeAdListener) {
        this.f16302a = nativeAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16302a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16302a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.f.1
            @Override // java.lang.Runnable
            public void run() {
                C4479f.this.f16302a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeAdListener
    public void onNativeAdLoad(final List<TTNativeAd> list) {
        if (this.f16302a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16302a.onNativeAdLoad(list);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.f.2
                @Override // java.lang.Runnable
                public void run() {
                    C4479f.this.f16302a.onNativeAdLoad(list);
                }
            });
        }
    }
}
