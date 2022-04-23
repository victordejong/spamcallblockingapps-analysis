package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTInteractionAd;
import com.bytedance.sdk.openadsdk.core.k;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/e.class */
public class e implements TTAdNative.InteractionAdListener {

    /* renamed from: a  reason: collision with root package name */
    TTAdNative.InteractionAdListener f8765a;

    public e(TTAdNative.InteractionAdListener interactionAdListener) {
        this.f8765a = interactionAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.InteractionAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8765a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8765a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        e.this.f8765a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.InteractionAdListener
    public void onInteractionAdLoad(final TTInteractionAd tTInteractionAd) {
        if (this.f8765a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8765a.onInteractionAdLoad(tTInteractionAd);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.e.2
                    @Override // java.lang.Runnable
                    public void run() {
                        e.this.f8765a.onInteractionAdLoad(tTInteractionAd);
                    }
                });
            }
        }
    }
}
