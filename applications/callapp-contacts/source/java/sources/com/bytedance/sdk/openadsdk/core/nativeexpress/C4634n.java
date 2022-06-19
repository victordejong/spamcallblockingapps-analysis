package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/n.class */
public class C4634n extends C4629k {
    public C4634n(Context context, C4557i c4557i, AdSlot adSlot) {
        super(context, c4557i, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4629k
    /* renamed from: a */
    public void mo34688a(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16939a = new NativeExpressVideoView(context, c4557i, adSlot, "embeded_ad");
        m34700a(this.f16939a, this.f16941c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public C5095a getVideoModel() {
        if (this.f16939a != null) {
            return ((NativeExpressVideoView) this.f16939a).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        if (this.f16939a != null) {
            this.f16939a.setVideoAdListener(expressVideoAdListener);
        }
    }
}
