package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.ag;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressVideoView.class */
public class BannerExpressVideoView extends a {
    public BannerExpressVideoView(Context context, i iVar, AdSlot adSlot) {
        super(context, iVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    protected void a() {
        this.f8810b = new NativeExpressVideoView(this.f8809a, this.f8812d, this.e, this.j);
        addView(this.f8810b, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public void a(i iVar, AdSlot adSlot) {
        this.f8811c = new NativeExpressVideoView(this.f8809a, iVar, adSlot, this.j);
        this.f8811c.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressVideoView.1
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                if (BannerExpressVideoView.this.f != null) {
                    BannerExpressVideoView.this.f.onAdClicked(BannerExpressVideoView.this, i);
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
                BannerExpressVideoView.this.a(f, f2);
                BannerExpressVideoView.this.f();
            }
        });
        ag.a((View) this.f8811c, 8);
        addView(this.f8811c, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ boolean b() {
        return super.b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ void c() {
        super.c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ NativeExpressView getCurView() {
        return super.getCurView();
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ NativeExpressView getNextView() {
        return super.getNextView();
    }

    public a getVideoModel() {
        if (this.f8810b != null) {
            return ((NativeExpressVideoView) this.f8810b).getVideoModel();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ void setDuration(int i) {
        super.setDuration(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        super.setExpressInteractionListener(expressAdInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public /* bridge */ /* synthetic */ void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        super.setVideoAdListener(expressVideoAdListener);
    }
}
