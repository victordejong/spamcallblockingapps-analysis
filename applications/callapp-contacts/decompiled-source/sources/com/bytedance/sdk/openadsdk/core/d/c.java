package com.bytedance.sdk.openadsdk.core.d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.multipro.b.a;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d/c.class */
public class c extends b {
    public c(Context context, i iVar, AdSlot adSlot) {
        super(context, iVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.b
    protected void a(Context context, i iVar, AdSlot adSlot, String str) {
        this.f8844a = new NativeExpressVideoView(context, iVar, adSlot, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public a getVideoModel() {
        if (this.f8844a != null) {
            return ((NativeExpressVideoView) this.f8844a).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        if (this.f8844a != null) {
            this.f8844a.setVideoAdListener(expressVideoAdListener);
        }
    }
}
