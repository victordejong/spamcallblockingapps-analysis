package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTInteractionAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/e.class */
public class C4476e implements TTAdNative.InteractionAdListener {

    /* renamed from: a */
    TTAdNative.InteractionAdListener f16296a;

    public C4476e(TTAdNative.InteractionAdListener interactionAdListener) {
        this.f16296a = interactionAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.InteractionAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16296a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16296a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.e.1
            @Override // java.lang.Runnable
            public void run() {
                C4476e.this.f16296a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.InteractionAdListener
    public void onInteractionAdLoad(final TTInteractionAd tTInteractionAd) {
        if (this.f16296a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16296a.onInteractionAdLoad(tTInteractionAd);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.e.2
                @Override // java.lang.Runnable
                public void run() {
                    C4476e.this.f16296a.onInteractionAdLoad(tTInteractionAd);
                }
            });
        }
    }
}
