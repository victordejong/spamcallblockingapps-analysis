package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.core.k;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/c.class */
public class c implements TTAdNative.FeedAdListener {

    /* renamed from: a  reason: collision with root package name */
    private TTAdNative.FeedAdListener f8752a;

    public c(TTAdNative.FeedAdListener feedAdListener) {
        this.f8752a = null;
        this.f8752a = feedAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8752a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8752a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.f8752a.onError(i, str);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
    public void onFeedAdLoad(final List<TTFeedAd> list) {
        if (this.f8752a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8752a.onFeedAdLoad(list);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.f8752a.onFeedAdLoad(list);
                    }
                });
            }
        }
    }
}
