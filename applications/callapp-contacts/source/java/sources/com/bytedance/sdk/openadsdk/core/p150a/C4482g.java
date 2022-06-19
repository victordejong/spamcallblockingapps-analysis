package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/g.class */
public class C4482g implements TTAdNative.NativeExpressAdListener {

    /* renamed from: a */
    TTAdNative.NativeExpressAdListener f16308a;

    public C4482g(TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        this.f16308a = nativeExpressAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16308a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16308a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.g.1
            @Override // java.lang.Runnable
            public void run() {
                C4482g.this.f16308a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public void onNativeExpressAdLoad(final List<TTNativeExpressAd> list) {
        if (this.f16308a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16308a.onNativeExpressAdLoad(list);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.g.2
                @Override // java.lang.Runnable
                public void run() {
                    C4482g.this.f16308a.onNativeExpressAdLoad(list);
                }
            });
        }
    }
}
