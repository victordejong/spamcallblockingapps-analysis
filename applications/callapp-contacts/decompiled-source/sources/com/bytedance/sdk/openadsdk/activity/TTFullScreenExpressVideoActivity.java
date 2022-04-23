package com.bytedance.sdk.openadsdk.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.component.reward.b;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.explorestack.iab.vast.VastError;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity.class */
public class TTFullScreenExpressVideoActivity extends TTFullScreenVideoActivity implements TTNativeExpressAd.ExpressAdInteractionListener, g {
    FullRewardExpressView aS;
    FrameLayout aT;
    c aU;
    Handler aW;
    String aV = "fullscreen_interstitial_ad";
    boolean aX = false;
    boolean aY = false;
    private boolean aZ = false;

    private void V() {
        if (!this.aZ) {
            this.aZ = true;
            final View decorView = getWindow().getDecorView();
            decorView.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.1
                /* JADX WARN: Code restructure failed: missing block: B:19:0x0099, code lost:
                    if (r0[1] < 10.0f) goto L_0x009c;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 194
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.AnonymousClass1.run():void");
                }
            });
        }
    }

    private c a(i iVar) {
        if (iVar.D() == 4) {
            return d.a(this.i, iVar, this.aV);
        }
        return null;
    }

    private EmptyView a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float[] fArr) {
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this, this.w, new AdSlot.Builder().setCodeId(String.valueOf(af.d(this.w.S()))).setExpressViewAcceptedSize(fArr[0], fArr[1]).build(), this.aV);
        this.aS = fullRewardExpressView;
        fullRewardExpressView.setExpressVideoListenerProxy(this);
        this.aS.setExpressInteractionListener(this);
        a(this.aS, this.w);
        this.aT = this.aS.getVideoFrameLayout();
        this.s.addView(this.aS, new FrameLayout.LayoutParams(-1, -1));
        this.aS.i();
        if (!this.aS.n()) {
            g(false);
        }
        this.aS.j();
    }

    private void g(boolean z) {
        if (this.g != null) {
            if (this.w.w()) {
                if (!this.W.get()) {
                    this.g.setShowSound(z);
                    if (this.w.ae()) {
                        this.g.setShowDislike(z);
                    } else {
                        this.g.setShowDislike(false);
                    }
                }
            } else if (!this.W.get()) {
                this.g.setShowSkip(z);
                this.g.setShowSound(z);
                if (this.w.ae()) {
                    this.g.setShowDislike(z);
                } else {
                    this.g.setShowDislike(false);
                }
            }
        }
        if (z) {
            ag.a((View) this.h, 0);
            ag.a((View) this.ay, 0);
            return;
        }
        ag.a((View) this.h, 4);
        ag.a((View) this.ay, 8);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity
    protected void M() {
        if (this.w == null) {
            finish();
            return;
        }
        this.aI = false;
        super.M();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void N() {
        if (this.g != null) {
            this.g.a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public long O() {
        return this.aL;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public int P() {
        if (this.aX) {
            return 4;
        }
        if (this.aY) {
            return 5;
        }
        if (v()) {
            return 1;
        }
        if (t()) {
            return 2;
        }
        if (u()) {
        }
        return 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void Q() {
        K();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
    public void R() {
        super.R();
        FullRewardExpressView fullRewardExpressView = this.aS;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.h();
        }
    }

    protected void a(NativeExpressView nativeExpressView, i iVar) {
        if (nativeExpressView != null && this.w != null) {
            this.aU = a(iVar);
            e.a(iVar);
            EmptyView a2 = a((ViewGroup) nativeExpressView);
            EmptyView emptyView = a2;
            if (a2 == null) {
                emptyView = new EmptyView(this.i, nativeExpressView);
                nativeExpressView.addView(emptyView);
            }
            emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.4
                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a() {
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a(View view) {
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a(boolean z) {
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void b() {
                }
            });
            Context context = this.i;
            String str = this.aV;
            com.bytedance.sdk.openadsdk.core.nativeexpress.e eVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.e(context, iVar, str, af.a(str)) { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
                public void a(View view, int i, int i2, int i3, int i4) {
                    super.a(view, i, i2, i3, i4);
                    TTFullScreenExpressVideoActivity.this.a(view, i, i2, i3, i4);
                }
            };
            eVar.a(nativeExpressView);
            eVar.a(this.aU);
            if (!TextUtils.isEmpty(this.ag)) {
                HashMap hashMap = new HashMap();
                hashMap.put("rit_scene", this.ag);
                eVar.a(hashMap);
            }
            this.aS.setClickListener(eVar);
            Context context2 = this.i;
            String str2 = this.aV;
            com.bytedance.sdk.openadsdk.core.nativeexpress.d dVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.d(context2, iVar, str2, af.a(str2)) { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.6
                @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
                public void a(View view, int i, int i2, int i3, int i4) {
                    super.a(view, i, i2, i3, i4);
                    TTFullScreenExpressVideoActivity.this.a(view, i, i2, i3, i4);
                }
            };
            dVar.a(nativeExpressView);
            dVar.a(this.aU);
            if (!TextUtils.isEmpty(this.ag)) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("rit_scene", this.ag);
                dVar.a(hashMap2);
            }
            this.aS.setClickCreativeListener(dVar);
            emptyView.setNeedCheckingShow(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
    public boolean a(long j, boolean z) {
        this.aT = this.aS.getVideoFrameLayout();
        if (this.G == null) {
            this.G = new b(this.i, this.aT, this.w);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("dynamic_show_type", Integer.valueOf(this.aS.n() ? 1 : 0));
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap.put("rit_scene", this.ag);
        }
        this.G.a(hashMap);
        this.G.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a() {
                if (TTFullScreenExpressVideoActivity.this.L != null) {
                    TTFullScreenExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTFullScreenExpressVideoActivity.this.L();
                }
                q.b("TTFullScreenExpressVideoActivity", "onTimeOut、、、、、、、、");
                if (TTFullScreenExpressVideoActivity.this.S()) {
                    TTFullScreenExpressVideoActivity.this.s();
                } else {
                    TTFullScreenExpressVideoActivity.this.finish();
                }
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTFullScreenExpressVideoActivity.this.a("fullscreen_interstitial_ad", hashMap2);
                if (TTFullScreenExpressVideoActivity.this.G != null) {
                    TTFullScreenExpressVideoActivity.this.G.m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, int i) {
                if (TTFullScreenExpressVideoActivity.this.L != null) {
                    TTFullScreenExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTFullScreenExpressVideoActivity.this.L();
                }
                TTFullScreenExpressVideoActivity.this.aY = true;
                TTFullScreenExpressVideoActivity.this.U();
                if (TTFullScreenExpressVideoActivity.this.S()) {
                    TTFullScreenExpressVideoActivity.this.s();
                } else {
                    TTFullScreenExpressVideoActivity.this.finish();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, long j3) {
                if (TTFullScreenExpressVideoActivity.this.L != null) {
                    TTFullScreenExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTFullScreenExpressVideoActivity.this.aL) {
                        TTFullScreenExpressVideoActivity.this.L();
                    }
                }
                TTFullScreenExpressVideoActivity.this.aL = j2;
                TTFullScreenExpressVideoActivity tTFullScreenExpressVideoActivity = TTFullScreenExpressVideoActivity.this;
                double J = tTFullScreenExpressVideoActivity.J();
                long j4 = j2 / 1000;
                tTFullScreenExpressVideoActivity.S = (int) (J - j4);
                if (TTFullScreenExpressVideoActivity.this.aS.n()) {
                    TTFullScreenExpressVideoActivity.this.d((int) j4);
                    if (TTFullScreenExpressVideoActivity.this.S >= 0 && TTFullScreenExpressVideoActivity.this.g != null) {
                        TTFullScreenExpressVideoActivity.this.g.setShowSkip(true);
                        TTFullScreenExpressVideoActivity.this.g.a(String.valueOf(TTFullScreenExpressVideoActivity.this.S), (CharSequence) null);
                    }
                }
                if (TTFullScreenExpressVideoActivity.this.S <= 0) {
                    q.b("TTFullScreenExpressVideoActivity", "onProgressUpdate、、、、、、、、");
                    if (TTFullScreenExpressVideoActivity.this.S()) {
                        TTFullScreenExpressVideoActivity.this.s();
                    } else {
                        TTFullScreenExpressVideoActivity.this.finish();
                    }
                }
                if ((TTFullScreenExpressVideoActivity.this.ac.get() || TTFullScreenExpressVideoActivity.this.aa.get()) && TTFullScreenExpressVideoActivity.this.t()) {
                    TTFullScreenExpressVideoActivity.this.G.i();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b(long j2, int i) {
                if (TTFullScreenExpressVideoActivity.this.L != null) {
                    TTFullScreenExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                TTFullScreenExpressVideoActivity.this.e(false);
                if (!TTFullScreenExpressVideoActivity.this.t()) {
                    TTFullScreenExpressVideoActivity.this.L();
                    if (TTFullScreenExpressVideoActivity.this.G != null) {
                        TTFullScreenExpressVideoActivity.this.G.m();
                    }
                    q.e("TTFullScreenExpressVideoActivity", "onError、、、、、、、、");
                    if (TTFullScreenExpressVideoActivity.this.S()) {
                        TTFullScreenExpressVideoActivity.this.s();
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("vbtt_skip_type", 1);
                        TTFullScreenExpressVideoActivity.this.a("fullscreen_interstitial_ad", hashMap2);
                    } else {
                        TTFullScreenExpressVideoActivity.this.finish();
                    }
                    TTFullScreenExpressVideoActivity.this.aX = true;
                }
            }
        });
        String h = this.w.B() != null ? this.w.B().h() : null;
        String str = h;
        if (this.B != null) {
            File file = new File(this.B);
            str = h;
            if (file.exists()) {
                str = h;
                if (file.length() > 0) {
                    str = this.B;
                    this.D = true;
                }
            }
        }
        q.e("wzj", "videoUrl:".concat(String.valueOf(str)));
        if (this.G == null) {
            return false;
        }
        Message message = new Message();
        message.what = VastError.ERROR_CODE_GENERAL_WRAPPER;
        message.arg1 = 0;
        this.L.sendMessageDelayed(message, 5000L);
        boolean a2 = this.G.a(str, this.w.P(), this.aT.getWidth(), this.aT.getHeight(), null, this.w.S(), j, this.R);
        if (a2 && !z) {
            e.a(this.i, this.w, "fullscreen_interstitial_ad", hashMap);
            R();
        }
        return a2;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void b(String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void c(int i) {
        if (i != 1) {
            if (i == 2) {
                try {
                    if (t()) {
                        this.G.i();
                    }
                } catch (Throwable th) {
                    q.e("TTFullScreenExpressVideoActivity", "onPause throw Exception :" + th.getMessage());
                }
            } else if (i == 3) {
                try {
                    if (u()) {
                        this.G.k();
                    }
                } catch (Throwable th2) {
                    q.e("TTFullScreenExpressVideoActivity", "onPause throw Exception :" + th2.getMessage());
                }
            } else if (i != 4) {
                if (i == 5 && !t() && !u()) {
                    a(0L, false);
                }
            } else if (this.G != null) {
                this.G.l();
                this.G = null;
            }
        } else if (!t() && !u()) {
            a(0L, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void e() {
        super.e();
        m();
        a(this.R);
        l();
        r();
        k();
        a("reward_endcard");
        p();
        if (i.b(this.w)) {
            this.aI = true;
            this.V = af.d(this.w.S());
            h();
            s();
            return;
        }
        d(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.g
    public void f(boolean z) {
        if (this.R != z && this.g != null) {
            this.g.b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdClicked(View view, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdShow(View view, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onDestroy() {
        FullRewardExpressView fullRewardExpressView = this.aS;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.l();
        }
        super.onDestroy();
        Handler handler = this.aW;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderFail(View view, String str, int i) {
        this.aI = true;
        h();
        if (this.aW == null) {
            this.aW = new Handler(Looper.getMainLooper());
        }
        q.b("TTFullScreenExpressVideoActivity", "onRenderFail、、、code:".concat(String.valueOf(i)));
        this.aW.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.3
            @Override // java.lang.Runnable
            public void run() {
                TTFullScreenExpressVideoActivity.this.s();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderSuccess(View view, float f, float f2) {
        if (this.w.f() != 1 || !this.w.w()) {
            if (this.aS.n()) {
                g(true);
            }
            d(false);
            this.aI = true;
            h();
            if (!a(this.A, false)) {
                s();
                HashMap hashMap = new HashMap();
                hashMap.put("vbtt_skip_type", 1);
                a(this.aV, hashMap);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        V();
        FullRewardExpressView fullRewardExpressView = this.aS;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.j();
        }
    }
}
