package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/m.class */
public class C4633m extends C4634n {
    public C4633m(Context context, C4557i c4557i, AdSlot adSlot) {
        super(context, c4557i, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4634n, com.bytedance.sdk.openadsdk.core.nativeexpress.C4629k
    /* renamed from: a */
    public void mo34688a(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16942d = "draw_ad";
        this.f16939a = new NativeExpressVideoView(context, c4557i, adSlot, "draw_ad");
        m34700a(this.f16939a, this.f16941c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setCanInterruptVideoPlay(boolean z) {
        if (this.f16939a != null) {
            ((NativeExpressVideoView) this.f16939a).setCanInterruptVideoPlay(z);
        }
    }
}
