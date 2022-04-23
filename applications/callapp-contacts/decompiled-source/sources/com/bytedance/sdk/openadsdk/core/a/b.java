package com.bytedance.sdk.openadsdk.core.a;

import android.os.Looper;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.k;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/a/b.class */
public class b implements TTAdNative.DrawFeedAdListener {

    /* renamed from: a  reason: collision with root package name */
    TTAdNative.DrawFeedAdListener f8746a;

    public b(TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        this.f8746a = drawFeedAdListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener
    public void onDrawFeedAdLoad(final List<TTDrawFeedAd> list) {
        if (this.f8746a != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8746a.onDrawFeedAdLoad(list);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.f8746a.onDrawFeedAdLoad(list);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.DrawFeedAdListener, com.bytedance.sdk.openadsdk.a.b
    public void onError(final int i, final String str) {
        if (this.f8746a != null) {
            if (str == null) {
                str = "";
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                this.f8746a.onError(i, str);
            } else {
                k.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.a.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.f8746a.onError(i, str);
                    }
                });
            }
        }
    }
}
