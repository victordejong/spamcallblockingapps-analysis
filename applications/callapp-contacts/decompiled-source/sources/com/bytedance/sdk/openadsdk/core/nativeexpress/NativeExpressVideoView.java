package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.k;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView.class */
public class NativeExpressVideoView extends NativeExpressView implements g, c.b, c.AbstractC0169c {

    /* renamed from: d  reason: collision with root package name */
    int f9021d;
    private ExpressVideoView u;
    private a v;
    private long w;
    private long x;

    /* renamed from: a  reason: collision with root package name */
    int f9018a = 1;

    /* renamed from: b  reason: collision with root package name */
    boolean f9019b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f9020c = true;
    boolean e = true;

    public NativeExpressVideoView(Context context, i iVar, AdSlot adSlot, String str) {
        super(context, iVar, adSlot, str);
        g();
    }

    private void b(final k kVar) {
        if (kVar != null) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                c(kVar);
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.2
                    @Override // java.lang.Runnable
                    public void run() {
                        NativeExpressVideoView.this.c(kVar);
                    }
                });
            }
        }
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
            if (this.u != null) {
                this.n.addView(this.u);
                this.u.a(0L, true, false);
                a(this.f9021d);
                if (!t.d(this.g) && !this.f9020c && this.e) {
                    this.u.f();
                }
                setShowAdInteractionView(false);
            }
        }
    }

    private void o() {
        try {
            this.v = new a();
            ExpressVideoView expressVideoView = new ExpressVideoView(this.g, this.l, this.j);
            this.u = expressVideoView;
            expressVideoView.setShouldCheckNetChange(false);
            this.u.setControllerStatusCallBack(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.1
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
                public void a(boolean z, long j, long j2, long j3, boolean z2) {
                    NativeExpressVideoView.this.v.f9888a = z;
                    NativeExpressVideoView.this.v.e = j;
                    NativeExpressVideoView.this.v.f = j2;
                    NativeExpressVideoView.this.v.g = j3;
                    NativeExpressVideoView.this.v.f9891d = z2;
                }
            });
            this.u.setVideoAdLoadListener(this);
            this.u.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.j)) {
                this.u.setIsAutoPlay(this.f9019b ? this.k.isAutoPlay() : this.f9020c);
            } else if ("splash_ad".equals(this.j)) {
                this.u.setIsAutoPlay(true);
            } else {
                this.u.setIsAutoPlay(this.f9020c);
            }
            if ("splash_ad".equals(this.j)) {
                this.u.setIsQuiet(true);
            } else {
                this.u.setIsQuiet(n.h().a(this.f9021d));
            }
            this.u.e();
        } catch (Exception e) {
            this.u = null;
        }
    }

    private void setShowAdInteractionView(boolean z) {
        ExpressVideoView expressVideoView = this.u;
        if (expressVideoView != null) {
            expressVideoView.setShowAdInteractionView(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void N() {
        q.b("NativeExpressVideoView", "onSkipVideo");
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public long O() {
        return this.w;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public int P() {
        ExpressVideoView expressVideoView;
        if (this.f9018a == 3 && (expressVideoView = this.u) != null) {
            expressVideoView.e();
        }
        ExpressVideoView expressVideoView2 = this.u;
        if (expressVideoView2 == null || !expressVideoView2.getNativeVideoController().x()) {
            return this.f9018a;
        }
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void Q() {
    }

    void a(int i) {
        int c2 = n.h().c(i);
        if (3 == c2) {
            this.f9019b = false;
            this.f9020c = false;
        } else if (1 == c2) {
            this.f9019b = false;
            this.f9020c = t.d(this.g);
        } else if (2 == c2) {
            if (t.e(this.g) || t.d(this.g)) {
                this.f9019b = false;
                this.f9020c = true;
            }
        } else if (4 == c2) {
            this.f9019b = true;
        }
        if (!this.f9020c) {
            this.f9018a = 3;
        }
        q.c("NativeVideoAdView", "mIsAutoPlay=" + this.f9020c + ",status=" + c2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.AbstractC0169c
    public void a(int i, int i2) {
        q.b("NativeExpressVideoView", "onVideoError,errorCode:" + i + ",extraCode:" + i2);
        if (this.m != null) {
            this.m.onVideoError(i, i2);
        }
        this.w = this.x;
        this.f9018a = 4;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.j
    public void a(int i, g gVar) {
        if (i != -1 && gVar != null) {
            if (i == 4 && this.j == "draw_ad") {
                ExpressVideoView expressVideoView = this.u;
                if (expressVideoView != null) {
                    expressVideoView.performClick();
                    return;
                }
                return;
            }
            super.a(i, gVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public void a(long j, long j2) {
        this.e = false;
        if (this.m != null) {
            this.m.onProgressUpdate(j, j2);
        }
        int i = this.f9018a;
        if (!(i == 5 || i == 3 || j <= this.w)) {
            this.f9018a = 2;
        }
        this.w = j;
        this.x = j2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.j
    public void a(k kVar) {
        if (kVar != null && kVar.a()) {
            b(kVar);
        }
        super.a(kVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void b() {
        super.b();
        this.i.a((g) this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public void c() {
        this.e = false;
        q.b("NativeExpressVideoView", "onVideoAdContinuePlay");
        if (this.m != null) {
            this.m.onVideoAdContinuePlay();
        }
        this.o = false;
        this.f9018a = 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void c(int i) {
        q.b("NativeExpressVideoView", "onChangeVideoState,stateType:".concat(String.valueOf(i)));
        ExpressVideoView expressVideoView = this.u;
        if (expressVideoView == null) {
            q.e("NativeExpressVideoView", "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!");
        } else if (i == 1) {
            expressVideoView.a(0L, true, false);
        } else if (i == 2 || i == 3) {
            expressVideoView.setCanInterruptVideoPlay(true);
            this.u.performClick();
        } else if (i == 4) {
            expressVideoView.getNativeVideoController().m();
        } else if (i == 5) {
            expressVideoView.a(0L, true, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public void d() {
        this.e = false;
        q.b("NativeExpressVideoView", "onVideoAdPaused");
        if (this.m != null) {
            this.m.onVideoAdPaused();
        }
        this.o = true;
        this.f9018a = 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public void d_() {
        this.e = false;
        q.b("NativeExpressVideoView", "onVideoComplete");
        if (this.m != null) {
            this.m.onVideoAdComplete();
        }
        this.f9018a = 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.b
    public void e() {
        this.e = false;
        q.b("NativeExpressVideoView", "onVideoAdStartPlay");
        if (this.m != null) {
            this.m.onVideoAdStartPlay();
        }
        this.f9018a = 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.AbstractC0169c
    public void f() {
        q.b("NativeExpressVideoView", "onVideoLoad");
        if (this.m != null) {
            this.m.onVideoLoad();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void f(boolean z) {
        q.b("NativeExpressVideoView", "onMuteVideo,mute:".concat(String.valueOf(z)));
        ExpressVideoView expressVideoView = this.u;
        if (expressVideoView != null && expressVideoView.getNativeVideoController() != null) {
            this.u.getNativeVideoController().c(z);
        }
    }

    protected void g() {
        this.n = new FrameLayout(this.g);
        int d2 = af.d(this.l.S());
        this.f9021d = d2;
        a(d2);
        o();
        addView(this.n, new FrameLayout.LayoutParams(-1, -1));
        super.a();
        getWebView().setBackgroundColor(0);
    }

    public a getVideoModel() {
        return this.v;
    }

    public void setCanInterruptVideoPlay(boolean z) {
        ExpressVideoView expressVideoView = this.u;
        if (expressVideoView != null) {
            expressVideoView.setCanInterruptVideoPlay(z);
        }
    }
}
