package com.bytedance.sdk.openadsdk.core.p150a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.core.C4592k;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.core.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/c.class */
public class C4469c implements TTAdNative.FeedAdListener {

    /* renamed from: a */
    private TTAdNative.FeedAdListener f16283a;

    public C4469c(TTAdNative.FeedAdListener feedAdListener) {
        this.f16283a = null;
        this.f16283a = feedAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
    public void onError(final int i, String str) {
        if (this.f16283a == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16283a.onError(i, str);
            return;
        }
        final String str2 = str;
        C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                C4469c.this.f16283a.onError(i, str2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
    public void onFeedAdLoad(final List<TTFeedAd> list) {
        if (this.f16283a == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f16283a.onFeedAdLoad(list);
        } else {
            C4592k.m34833c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.c.2
                @Override // java.lang.Runnable
                public void run() {
                    C4469c.this.f16283a.onFeedAdLoad(list);
                }
            });
        }
    }
}
