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
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.explorestack.iab.vast.VastError;
import com.mopub.common.AdType;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity.class */
public class TTRewardExpressVideoActivity extends TTRewardVideoActivity implements TTNativeExpressAd.ExpressAdInteractionListener, g {
    FullRewardExpressView aS;
    FrameLayout aT;
    c aU;
    Handler aW;
    String aV = AdType.REWARDED_VIDEO;
    boolean aX = false;
    boolean aY = false;
    private boolean bi = false;

    private void V() {
        if (!this.bi) {
            this.bi = true;
            final View decorView = getWindow().getDecorView();
            decorView.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.1
                /* JADX WARN: Code restructure failed: missing block: B:19:0x009a, code lost:
                    if (r0[1] < 10.0f) goto L_0x009d;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 195
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.AnonymousClass1.run():void");
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
        if (this.g != null && !this.W.get()) {
            this.g.setShowSkip(z);
            this.g.setShowSound(z);
            if (this.w.ae()) {
                this.g.setShowDislike(z);
            } else {
                this.g.setShowDislike(false);
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

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity
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
        q.e("TTRewardExpressVideoActivity", "onGetCurrentPlayTime mVideoCurrent:" + this.aL);
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

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
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
            emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.4
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
            com.bytedance.sdk.openadsdk.core.nativeexpress.e eVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.e(context, iVar, str, af.a(str)) { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
                public void a(View view, int i, int i2, int i3, int i4) {
                    super.a(view, i, i2, i3, i4);
                    TTRewardExpressVideoActivity.this.a(view, i, i2, i3, i4);
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
            com.bytedance.sdk.openadsdk.core.nativeexpress.d dVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.d(context2, iVar, str2, af.a(str2)) { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.6
                @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
                public void a(View view, int i, int i2, int i3, int i4) {
                    super.a(view, i, i2, i3, i4);
                    TTRewardExpressVideoActivity.this.a(view, i, i2, i3, i4);
                }
            };
            dVar.a(nativeExpressView);
            if (!TextUtils.isEmpty(this.ag)) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("rit_scene", this.ag);
                dVar.a(hashMap2);
            }
            dVar.a(this.aU);
            this.aS.setClickCreativeListener(dVar);
            emptyView.setNeedCheckingShow(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.video.c.b
    public boolean a(long j, boolean z) {
        this.aT = this.aS.getVideoFrameLayout();
        if (this.G == null) {
            this.G = new com.bytedance.sdk.openadsdk.component.reward.g(this.i, this.aT, this.w);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("dynamic_show_type", Integer.valueOf(this.aS.n() ? 1 : 0));
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap.put("rit_scene", this.ag);
        }
        this.G.a(hashMap);
        this.G.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a() {
                if (TTRewardExpressVideoActivity.this.L != null) {
                    TTRewardExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardExpressVideoActivity.this.L();
                }
                TTRewardExpressVideoActivity.this.s();
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTRewardExpressVideoActivity.this.a(AdType.REWARDED_VIDEO, hashMap2);
                if (TTRewardExpressVideoActivity.this.G != null) {
                    TTRewardExpressVideoActivity.this.G.m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, int i) {
                if (TTRewardExpressVideoActivity.this.L != null) {
                    TTRewardExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardExpressVideoActivity.this.L();
                }
                TTRewardExpressVideoActivity.this.aY = true;
                TTRewardExpressVideoActivity.this.U();
                TTRewardExpressVideoActivity.this.s();
                TTRewardExpressVideoActivity.this.ba = (int) (System.currentTimeMillis() / 1000);
                TTRewardExpressVideoActivity.this.S();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, long j3) {
                if (TTRewardExpressVideoActivity.this.L != null) {
                    TTRewardExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTRewardExpressVideoActivity.this.aL) {
                        TTRewardExpressVideoActivity.this.L();
                    }
                }
                TTRewardExpressVideoActivity.this.aL = j2;
                int i = n.h().q(String.valueOf(TTRewardExpressVideoActivity.this.V)).f;
                if (j3 > 0 && ((float) (100 * j2)) / ((float) j3) >= i) {
                    TTRewardExpressVideoActivity.this.S();
                }
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                double J = tTRewardExpressVideoActivity.J();
                long j4 = j2 / 1000;
                tTRewardExpressVideoActivity.S = (int) (J - j4);
                if (TTRewardExpressVideoActivity.this.S >= 0 && TTRewardExpressVideoActivity.this.g != null) {
                    TTRewardExpressVideoActivity.this.g.a(String.valueOf(TTRewardExpressVideoActivity.this.S), (CharSequence) null);
                }
                int i2 = (int) j4;
                if (TTRewardExpressVideoActivity.this.U != -1 && i2 == TTRewardExpressVideoActivity.this.U && !TTRewardExpressVideoActivity.this.bc.get()) {
                    TTRewardExpressVideoActivity.this.h.setVisibility(0);
                    TTRewardExpressVideoActivity.this.bc.set(true);
                    TTRewardExpressVideoActivity.this.q();
                }
                int g = n.h().g(String.valueOf(TTRewardExpressVideoActivity.this.V));
                boolean z2 = false;
                if (TTRewardExpressVideoActivity.this.aS.n()) {
                    z2 = false;
                    if (g != -1) {
                        z2 = false;
                        if (g >= 0) {
                            z2 = true;
                        }
                    }
                }
                if (z2 && i2 >= g) {
                    if (!TTRewardExpressVideoActivity.this.Y.getAndSet(true) && TTRewardExpressVideoActivity.this.g != null) {
                        TTRewardExpressVideoActivity.this.g.setShowSkip(true);
                    }
                    if (TTRewardExpressVideoActivity.this.g != null) {
                        TTRewardExpressVideoActivity.this.g.a((CharSequence) null, TTBaseVideoActivity.f8419b);
                        TTRewardExpressVideoActivity.this.g.setSkipEnable(true);
                    }
                }
                if (TTRewardExpressVideoActivity.this.S <= 0) {
                    TTRewardExpressVideoActivity.this.s();
                }
                if (TTRewardExpressVideoActivity.this.ac.get() && TTRewardExpressVideoActivity.this.G != null && TTRewardExpressVideoActivity.this.G.u() != null && TTRewardExpressVideoActivity.this.G.u().g()) {
                    TTRewardExpressVideoActivity.this.G.i();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b(long j2, int i) {
                if (TTRewardExpressVideoActivity.this.L != null) {
                    TTRewardExpressVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                if (b.b()) {
                    TTRewardExpressVideoActivity.this.d("onVideoError");
                } else if (TTRewardExpressVideoActivity.this.bb != null) {
                    TTRewardExpressVideoActivity.this.bb.onVideoError();
                }
                TTRewardExpressVideoActivity.this.e(true);
                if (!TTRewardExpressVideoActivity.this.t()) {
                    TTRewardExpressVideoActivity.this.L();
                    if (TTRewardExpressVideoActivity.this.G != null) {
                        TTRewardExpressVideoActivity.this.G.m();
                    }
                    TTRewardExpressVideoActivity.this.s();
                    TTRewardExpressVideoActivity.this.aX = true;
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("vbtt_skip_type", 1);
                    TTRewardExpressVideoActivity.this.a(AdType.REWARDED_VIDEO, hashMap2);
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
        message.arg1 = 1;
        this.L.sendMessageDelayed(message, 5000L);
        boolean a2 = this.G.a(str, this.w.P(), this.aT.getWidth(), this.aT.getHeight(), null, this.w.S(), j, this.R);
        if (a2 && !z) {
            e.a(this.i, this.w, AdType.REWARDED_VIDEO, hashMap);
            R();
            this.aZ = (int) (System.currentTimeMillis() / 1000);
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
                    q.e("TTRewardExpressVideoActivity", "onPause throw Exception :" + th.getMessage());
                }
            } else if (i == 3) {
                try {
                    if (u()) {
                        this.G.k();
                    }
                } catch (Throwable th2) {
                    q.e("TTRewardExpressVideoActivity", "onPause throw Exception :" + th2.getMessage());
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

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
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
        this.aW.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.3
            @Override // java.lang.Runnable
            public void run() {
                TTRewardExpressVideoActivity.this.s();
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
