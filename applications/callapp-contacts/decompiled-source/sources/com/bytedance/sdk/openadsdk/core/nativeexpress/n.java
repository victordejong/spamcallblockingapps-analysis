package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.multipro.b.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/n.class */
public class n extends k {
    public n(Context context, i iVar, AdSlot adSlot) {
        super(context, iVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.k
    public void a(Context context, i iVar, AdSlot adSlot) {
        this.f9055a = new NativeExpressVideoView(context, iVar, adSlot, "embeded_ad");
        a(this.f9055a, this.f9057c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public a getVideoModel() {
        if (this.f9055a != null) {
            return ((NativeExpressVideoView) this.f9055a).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        if (this.f9055a != null) {
            this.f9055a.setVideoAdListener(expressVideoAdListener);
        }
    }
}
