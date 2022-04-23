package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.e.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/m.class */
public class m extends n {
    public m(Context context, i iVar, AdSlot adSlot) {
        super(context, iVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.n, com.bytedance.sdk.openadsdk.core.nativeexpress.k
    public void a(Context context, i iVar, AdSlot adSlot) {
        this.f9058d = "draw_ad";
        this.f9055a = new NativeExpressVideoView(context, iVar, adSlot, "draw_ad");
        a(this.f9055a, this.f9057c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setCanInterruptVideoPlay(boolean z) {
        if (this.f9055a != null) {
            ((NativeExpressVideoView) this.f9055a).setCanInterruptVideoPlay(z);
        }
    }
}
