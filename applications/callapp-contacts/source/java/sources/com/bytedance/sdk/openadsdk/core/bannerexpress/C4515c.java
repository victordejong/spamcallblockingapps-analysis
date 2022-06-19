package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
/* renamed from: com.bytedance.sdk.openadsdk.core.bannerexpress.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/c.class */
public class C4515c extends C4511b {
    public C4515c(Context context, C4557i c4557i, AdSlot adSlot) {
        super(context, c4557i, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4511b
    /* renamed from: a */
    public void mo35419a(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16383a = new BannerExpressVideoView(context, c4557i, adSlot);
        m35432a(this.f16383a.getCurView(), this.f16385c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public C5095a getVideoModel() {
        if (this.f16383a != null) {
            return ((BannerExpressVideoView) this.f16383a).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        if (this.f16383a != null) {
            this.f16383a.setVideoAdListener(expressVideoAdListener);
        }
    }
}
