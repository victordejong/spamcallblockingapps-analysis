package com.bytedance.sdk.openadsdk.component.reward.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.k;
import com.bytedance.sdk.openadsdk.core.nativeexpress.FullRewardExpressBackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView.class */
public class FullRewardExpressView extends NativeExpressView implements g {

    /* renamed from: a  reason: collision with root package name */
    g f8718a;

    /* renamed from: b  reason: collision with root package name */
    FullRewardExpressBackupView f8719b;

    public FullRewardExpressView(Context context, i iVar, AdSlot adSlot, String str) {
        super(context, iVar, adSlot, str);
    }

    private void b(final k kVar) {
        if (kVar != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                c(kVar);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        FullRewardExpressView.this.c(kVar);
                    }
                });
            }
        }
    }

    private void c() {
        setBackupListener(new c() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.c
            public boolean a(NativeExpressView nativeExpressView, int i) {
                nativeExpressView.m();
                FullRewardExpressView.this.f8719b = new FullRewardExpressBackupView(nativeExpressView.getContext());
                FullRewardExpressView.this.f8719b.a(FullRewardExpressView.this.l, nativeExpressView, null);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(k kVar) {
        if (kVar != null) {
            double d2 = kVar.d();
            double e = kVar.e();
            double f = kVar.f();
            double g = kVar.g();
            int a2 = (int) ag.a(this.g, (float) d2);
            int a3 = (int) ag.a(this.g, (float) e);
            int a4 = (int) ag.a(this.g, (float) f);
            int a5 = (int) ag.a(this.g, (float) g);
            q.b("ExpressView", "videoWidth:".concat(String.valueOf(f)));
            q.b("ExpressView", "videoHeight:".concat(String.valueOf(g)));
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.n.getLayoutParams();
            FrameLayout.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = new FrameLayout.LayoutParams(a4, a5);
            }
            layoutParams2.width = a4;
            layoutParams2.height = a5;
            layoutParams2.topMargin = a3;
            layoutParams2.leftMargin = a2;
            this.n.setLayoutParams(layoutParams2);
            this.n.removeAllViews();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void N() {
        q.b("FullRewardExpressView", "onSkipVideo");
        g gVar = this.f8718a;
        if (gVar != null) {
            gVar.N();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public long O() {
        q.b("FullRewardExpressView", "onGetCurrentPlayTime");
        g gVar = this.f8718a;
        if (gVar != null) {
            return gVar.O();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public int P() {
        q.b("FullRewardExpressView", "onGetVideoState");
        g gVar = this.f8718a;
        if (gVar != null) {
            return gVar.P();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void Q() {
        g gVar = this.f8718a;
        if (gVar != null) {
            gVar.Q();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void a() {
        this.p = true;
        this.n = new FrameLayout(this.g);
        addView(this.n, new FrameLayout.LayoutParams(-1, -1));
        super.a();
        getWebView().setBackgroundColor(0);
        c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.j
    public void a(int i, com.bytedance.sdk.openadsdk.core.e.g gVar) {
        if (i == -1 || gVar == null || i != 3) {
            super.a(i, gVar);
        } else {
            Q();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.j
    public void a(k kVar) {
        if (kVar != null && kVar.a()) {
            b(kVar);
        }
        super.a(kVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void b() {
        super.b();
        this.i.a((g) this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void c(int i) {
        q.b("FullRewardExpressView", "onChangeVideoState,stateType:".concat(String.valueOf(i)));
        g gVar = this.f8718a;
        if (gVar != null) {
            gVar.c(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void f(boolean z) {
        q.b("FullRewardExpressView", "onMuteVideo,mute:".concat(String.valueOf(z)));
        g gVar = this.f8718a;
        if (gVar != null) {
            gVar.f(z);
        }
    }

    public FrameLayout getVideoFrameLayout() {
        return n() ? this.f8719b.getVideoContainer() : this.n;
    }

    public void setExpressVideoListenerProxy(g gVar) {
        this.f8718a = gVar;
    }
}
