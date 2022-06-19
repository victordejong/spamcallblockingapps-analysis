package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/b.class */
public class C4466b implements TTAdNative.DrawFeedAdListener {

    /* renamed from: a */
    TTAdNative.DrawFeedAdListener f16277a;

    public C4466b(TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        this.f16277a = drawFeedAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
    public void onDrawFeedAdLoad(final List<TTDrawFeedAd> list) {
        if (this.f16277a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16277a.onDrawFeedAdLoad(list);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.b.2
                @Override // java.lang.Runnable
                public void run() {
                    C4466b.this.f16277a.onDrawFeedAdLoad(list);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16277a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16277a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                C4466b.this.f16277a.onError(i, str2);
            }
        });
    }
}
