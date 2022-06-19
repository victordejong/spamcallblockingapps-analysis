package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressVideoView.class */
public class BannerExpressVideoView extends C4507a {
    public BannerExpressVideoView(Context context, C4557i c4557i, AdSlot adSlot) {
        super(context, c4557i, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    /* renamed from: a */
    protected void mo35451a() {
        this.f16371b = new NativeExpressVideoView(this.f16370a, this.f16373d, this.f16374e, this.f16379j);
        addView(this.f16371b, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    /* renamed from: a */
    public void mo35448a(C4557i c4557i, AdSlot adSlot) {
        this.f16372c = new NativeExpressVideoView(this.f16370a, c4557i, adSlot, this.f16379j);
        this.f16372c.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressVideoView.1
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                if (BannerExpressVideoView.this.f16375f != null) {
                    BannerExpressVideoView.this.f16375f.onAdClicked(BannerExpressVideoView.this, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderFail(View view, String str, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderSuccess(View view, float f, float f2) {
                BannerExpressVideoView.this.m35450a(f, f2);
                BannerExpressVideoView.this.m35441f();
            }
        });
        C5443ag.m32228a((View) this.f16372c, 8);
        addView(this.f16372c, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    /* renamed from: b */
    public /* bridge */ /* synthetic */ boolean mo35446b() {
        return super.mo35446b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    /* renamed from: c */
    public /* bridge */ /* synthetic */ void mo35444c() {
        super.mo35444c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    /* renamed from: d */
    public /* bridge */ /* synthetic */ void mo35443d() {
        super.mo35443d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    /* renamed from: e */
    public /* bridge */ /* synthetic */ void mo35442e() {
        super.mo35442e();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    public /* bridge */ /* synthetic */ NativeExpressView getCurView() {
        return super.getCurView();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    public /* bridge */ /* synthetic */ NativeExpressView getNextView() {
        return super.getNextView();
    }

    public C5095a getVideoModel() {
        if (this.f16371b != null) {
            return ((NativeExpressVideoView) this.f16371b).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    public /* bridge */ /* synthetic */ void setDuration(int i) {
        super.setDuration(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    public /* bridge */ /* synthetic */ void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        super.setExpressInteractionListener(expressAdInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.C4507a
    public /* bridge */ /* synthetic */ void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        super.setVideoAdListener(expressVideoAdListener);
    }
}
