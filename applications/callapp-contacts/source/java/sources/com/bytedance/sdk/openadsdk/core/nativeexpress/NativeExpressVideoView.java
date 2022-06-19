package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4553g;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4560k;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView.class */
public class NativeExpressVideoView extends NativeExpressView implements AbstractC4619g, AbstractC4719c.AbstractC4721b, AbstractC4719c.AbstractC4722c {

    /* renamed from: d */
    int f16856d;

    /* renamed from: u */
    private ExpressVideoView f16858u;

    /* renamed from: v */
    private C5095a f16859v;

    /* renamed from: w */
    private long f16860w;

    /* renamed from: x */
    private long f16861x;

    /* renamed from: a */
    int f16853a = 1;

    /* renamed from: b */
    boolean f16854b = false;

    /* renamed from: c */
    boolean f16855c = true;

    /* renamed from: e */
    boolean f16857e = true;

    public NativeExpressVideoView(Context context, C4557i c4557i, AdSlot adSlot, String str) {
        super(context, c4557i, adSlot, str);
        m34784g();
    }

    /* renamed from: b */
    private void m34786b(final C4560k c4560k) {
        if (c4560k == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            m34785c(c4560k);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.2
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressVideoView.this.m34785c(c4560k);
                }
            });
        }
    }

    /* renamed from: c */
    public void m34785c(C4560k c4560k) {
        if (c4560k == null) {
            return;
        }
        double m35109d = c4560k.m35109d();
        double m35107e = c4560k.m35107e();
        double m35105f = c4560k.m35105f();
        double m35103g = c4560k.m35103g();
        int m32232a = (int) C5443ag.m32232a(this.f16879g, (float) m35109d);
        int m32232a2 = (int) C5443ag.m32232a(this.f16879g, (float) m35107e);
        int m32232a3 = (int) C5443ag.m32232a(this.f16879g, (float) m35105f);
        int m32232a4 = (int) C5443ag.m32232a(this.f16879g, (float) m35103g);
        C5478q.m32112b("ExpressView", "videoWidth:".concat(String.valueOf(m35105f)));
        C5478q.m32112b("ExpressView", "videoHeight:".concat(String.valueOf(m35103g)));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f16886n.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new FrameLayout.LayoutParams(m32232a3, m32232a4);
        }
        layoutParams2.width = m32232a3;
        layoutParams2.height = m32232a4;
        layoutParams2.topMargin = m32232a2;
        layoutParams2.leftMargin = m32232a;
        this.f16886n.setLayoutParams(layoutParams2);
        this.f16886n.removeAllViews();
        if (this.f16858u == null) {
            return;
        }
        this.f16886n.addView(this.f16858u);
        this.f16858u.m34393a(0L, true, false);
        m34789a(this.f16856d);
        if (!C5482t.m32087d(this.f16879g) && !this.f16855c && this.f16857e) {
            this.f16858u.m34795f();
        }
        setShowAdInteractionView(false);
    }

    /* renamed from: o */
    private void m34783o() {
        try {
            this.f16859v = new C5095a();
            ExpressVideoView expressVideoView = new ExpressVideoView(this.f16879g, this.f16884l, this.f16882j);
            this.f16858u = expressVideoView;
            expressVideoView.setShouldCheckNetChange(false);
            this.f16858u.setControllerStatusCallBack(new NativeVideoTsView.AbstractC4714a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.1
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.AbstractC4714a
                /* renamed from: a */
                public void mo34366a(boolean z, long j, long j2, long j3, boolean z2) {
                    NativeExpressVideoView.this.f16859v.f18359a = z;
                    NativeExpressVideoView.this.f16859v.f18363e = j;
                    NativeExpressVideoView.this.f16859v.f18364f = j2;
                    NativeExpressVideoView.this.f16859v.f18365g = j3;
                    NativeExpressVideoView.this.f16859v.f18362d = z2;
                }
            });
            this.f16858u.setVideoAdLoadListener(this);
            this.f16858u.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.f16882j)) {
                this.f16858u.setIsAutoPlay(this.f16854b ? this.f16883k.isAutoPlay() : this.f16855c);
            } else if ("splash_ad".equals(this.f16882j)) {
                this.f16858u.setIsAutoPlay(true);
            } else {
                this.f16858u.setIsAutoPlay(this.f16855c);
            }
            if ("splash_ad".equals(this.f16882j)) {
                this.f16858u.setIsQuiet(true);
            } else {
                this.f16858u.setIsQuiet(C4600n.m34805h().m34914a(this.f16856d));
            }
            this.f16858u.m34796e();
        } catch (Exception e) {
            this.f16858u = null;
        }
    }

    private void setShowAdInteractionView(boolean z) {
        ExpressVideoView expressVideoView = this.f16858u;
        if (expressVideoView != null) {
            expressVideoView.setShowAdInteractionView(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: N */
    public void mo34724N() {
        C5478q.m32112b("NativeExpressVideoView", "onSkipVideo");
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: O */
    public long mo34723O() {
        return this.f16860w;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: P */
    public int mo34722P() {
        ExpressVideoView expressVideoView;
        if (this.f16853a == 3 && (expressVideoView = this.f16858u) != null) {
            expressVideoView.m34796e();
        }
        ExpressVideoView expressVideoView2 = this.f16858u;
        if (expressVideoView2 == null || !expressVideoView2.getNativeVideoController().mo34246x()) {
            return this.f16853a;
        }
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: Q */
    public void mo34721Q() {
    }

    /* renamed from: a */
    void m34789a(int i) {
        int m34902c = C4600n.m34805h().m34902c(i);
        if (3 == m34902c) {
            this.f16854b = false;
            this.f16855c = false;
        } else if (1 == m34902c) {
            this.f16854b = false;
            this.f16855c = C5482t.m32087d(this.f16879g);
        } else if (2 == m34902c) {
            if (C5482t.m32086e(this.f16879g) || C5482t.m32087d(this.f16879g)) {
                this.f16854b = false;
                this.f16855c = true;
            }
        } else if (4 == m34902c) {
            this.f16854b = true;
        }
        if (!this.f16855c) {
            this.f16853a = 3;
        }
        C5478q.m32109c("NativeVideoAdView", "mIsAutoPlay=" + this.f16855c + ",status=" + m34902c);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4722c
    /* renamed from: a */
    public void mo34355a(int i, int i2) {
        C5478q.m32112b("NativeExpressVideoView", "onVideoError,errorCode:" + i + ",extraCode:" + i2);
        if (this.f16885m != null) {
            this.f16885m.onVideoError(i, i2);
        }
        this.f16860w = this.f16861x;
        this.f16853a = 4;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4628j
    /* renamed from: a */
    public void mo34705a(int i, C4553g c4553g) {
        if (i == -1 || c4553g == null) {
            return;
        }
        if (i != 4 || this.f16882j != "draw_ad") {
            super.mo34705a(i, c4553g);
            return;
        }
        ExpressVideoView expressVideoView = this.f16858u;
        if (expressVideoView == null) {
            return;
        }
        expressVideoView.performClick();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: a */
    public void mo34360a(long j, long j2) {
        this.f16857e = false;
        if (this.f16885m != null) {
            this.f16885m.onProgressUpdate(j, j2);
        }
        int i = this.f16853a;
        if (i != 5 && i != 3 && j > this.f16860w) {
            this.f16853a = 2;
        }
        this.f16860w = j;
        this.f16861x = j2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4628j
    /* renamed from: a */
    public void mo34704a(C4560k c4560k) {
        if (c4560k != null && c4560k.m35119a()) {
            m34786b(c4560k);
        }
        super.mo34704a(c4560k);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    /* renamed from: b */
    public void mo34775b() {
        super.mo34775b();
        this.f16881i.m34157a((AbstractC4619g) this);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: c */
    public void mo34359c() {
        this.f16857e = false;
        C5478q.m32112b("NativeExpressVideoView", "onVideoAdContinuePlay");
        if (this.f16885m != null) {
            this.f16885m.onVideoAdContinuePlay();
        }
        this.f16887o = false;
        this.f16853a = 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: c */
    public void mo34720c(int i) {
        C5478q.m32112b("NativeExpressVideoView", "onChangeVideoState,stateType:".concat(String.valueOf(i)));
        ExpressVideoView expressVideoView = this.f16858u;
        if (expressVideoView == null) {
            C5478q.m32106e("NativeExpressVideoView", "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!");
        } else if (i == 1) {
            expressVideoView.m34393a(0L, true, false);
        } else if (i == 2 || i == 3) {
            expressVideoView.setCanInterruptVideoPlay(true);
            this.f16858u.performClick();
        } else if (i == 4) {
            expressVideoView.getNativeVideoController().mo34257m();
        } else if (i != 5) {
        } else {
            expressVideoView.m34393a(0L, true, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: d */
    public void mo34358d() {
        this.f16857e = false;
        C5478q.m32112b("NativeExpressVideoView", "onVideoAdPaused");
        if (this.f16885m != null) {
            this.f16885m.onVideoAdPaused();
        }
        this.f16887o = true;
        this.f16853a = 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: d_ */
    public void mo34357d_() {
        this.f16857e = false;
        C5478q.m32112b("NativeExpressVideoView", "onVideoComplete");
        if (this.f16885m != null) {
            this.f16885m.onVideoAdComplete();
        }
        this.f16853a = 5;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4721b
    /* renamed from: e */
    public void mo34356e() {
        this.f16857e = false;
        C5478q.m32112b("NativeExpressVideoView", "onVideoAdStartPlay");
        if (this.f16885m != null) {
            this.f16885m.onVideoAdStartPlay();
        }
        this.f16853a = 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4722c
    /* renamed from: f */
    public void mo34354f() {
        C5478q.m32112b("NativeExpressVideoView", "onVideoLoad");
        if (this.f16885m != null) {
            this.f16885m.onVideoLoad();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: f */
    public void mo34719f(boolean z) {
        C5478q.m32112b("NativeExpressVideoView", "onMuteVideo,mute:".concat(String.valueOf(z)));
        ExpressVideoView expressVideoView = this.f16858u;
        if (expressVideoView == null || expressVideoView.getNativeVideoController() == null) {
            return;
        }
        this.f16858u.getNativeVideoController().mo34287c(z);
    }

    /* renamed from: g */
    protected void m34784g() {
        this.f16886n = new FrameLayout(this.f16879g);
        int m32278d = C5438af.m32278d(this.f16884l.m35228S());
        this.f16856d = m32278d;
        m34789a(m32278d);
        m34783o();
        addView(this.f16886n, new FrameLayout.LayoutParams(-1, -1));
        super.mo34782a();
        getWebView().setBackgroundColor(0);
    }

    public C5095a getVideoModel() {
        return this.f16859v;
    }

    public void setCanInterruptVideoPlay(boolean z) {
        ExpressVideoView expressVideoView = this.f16858u;
        if (expressVideoView != null) {
            expressVideoView.setCanInterruptVideoPlay(z);
        }
    }
}
