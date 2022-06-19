package com.bytedance.sdk.openadsdk.core.p153d;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
/* renamed from: com.bytedance.sdk.openadsdk.core.d.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d/c.class */
public class C4539c extends C4533b {
    public C4539c(Context context, C4557i c4557i, AdSlot adSlot) {
        super(context, c4557i, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p153d.C4533b
    /* renamed from: a */
    protected void mo35357a(Context context, C4557i c4557i, AdSlot adSlot, String str) {
        this.f16429a = new NativeExpressVideoView(context, c4557i, adSlot, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public C5095a getVideoModel() {
        if (this.f16429a != null) {
            return ((NativeExpressVideoView) this.f16429a).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        if (this.f16429a != null) {
            this.f16429a.setVideoAdListener(expressVideoAdListener);
        }
    }
}
