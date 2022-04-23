package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.multipro.b.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/c.class */
public class c extends b {
    public c(Context context, i iVar, AdSlot adSlot) {
        super(context, iVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.b
    public void a(Context context, i iVar, AdSlot adSlot) {
        this.f8816a = new BannerExpressVideoView(context, iVar, adSlot);
        a(this.f8816a.getCurView(), this.f8818c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public a getVideoModel() {
        if (this.f8816a != null) {
            return ((BannerExpressVideoView) this.f8816a).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        if (this.f8816a != null) {
            this.f8816a.setVideoAdListener(expressVideoAdListener);
        }
    }
}
