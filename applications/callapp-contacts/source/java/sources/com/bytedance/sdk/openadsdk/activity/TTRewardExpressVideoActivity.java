package com.bytedance.sdk.openadsdk.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.component.reward.C4430g;
import com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4616d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4617e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.explorestack.iab.vast.VastError;
import com.mopub.common.AdType;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity.class */
public class TTRewardExpressVideoActivity extends TTRewardVideoActivity implements TTNativeExpressAd.ExpressAdInteractionListener, AbstractC4619g {

    /* renamed from: aS */
    FullRewardExpressView f15855aS;

    /* renamed from: aT */
    FrameLayout f15856aT;

    /* renamed from: aU */
    AbstractC3234c f15857aU;

    /* renamed from: aW */
    Handler f15859aW;

    /* renamed from: aV */
    String f15858aV = AdType.REWARDED_VIDEO;

    /* renamed from: aX */
    boolean f15860aX = false;

    /* renamed from: aY */
    boolean f15861aY = false;

    /* renamed from: bi */
    private boolean f15862bi = false;

    /* renamed from: V */
    private void m35844V() {
        if (this.f15862bi) {
            return;
        }
        this.f15862bi = true;
        final View decorView = getWindow().getDecorView();
        decorView.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.1
            /* JADX WARN: Code restructure failed: missing block: B:19:0x009a, code lost:
                if (r0[1] < 10.0f) goto L20;
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
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.RunnableC43201.run():void");
            }
        });
    }

    /* renamed from: a */
    private AbstractC3234c m35841a(C4557i c4557i) {
        if (c4557i.m35243D() == 4) {
            return C3235d.m39089a(this.f15703i, c4557i, this.f15858aV);
        }
        return null;
    }

    /* renamed from: a */
    private EmptyView m35843a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m35839a(float[] fArr) {
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this, this.f15717w, new AdSlot.Builder().setCodeId(String.valueOf(C5438af.m32278d(this.f15717w.m35228S()))).setExpressViewAcceptedSize(fArr[0], fArr[1]).build(), this.f15858aV);
        this.f15855aS = fullRewardExpressView;
        fullRewardExpressView.setExpressVideoListenerProxy(this);
        this.f15855aS.setExpressInteractionListener(this);
        m35840a(this.f15855aS, this.f15717w);
        this.f15856aT = this.f15855aS.getVideoFrameLayout();
        this.f15713s.addView(this.f15855aS, new FrameLayout.LayoutParams(-1, -1));
        this.f15855aS.m34767i();
        if (!this.f15855aS.m34762n()) {
            m35836g(false);
        }
        this.f15855aS.m34766j();
    }

    /* renamed from: g */
    private void m35836g(boolean z) {
        if (this.f15701g != null && !this.f15639W.get()) {
            this.f15701g.setShowSkip(z);
            this.f15701g.setShowSound(z);
            if (this.f15717w.m35198ae()) {
                this.f15701g.setShowDislike(z);
            } else {
                this.f15701g.setShowDislike(false);
            }
        }
        if (z) {
            C5443ag.m32228a((View) this.f15702h, 0);
            C5443ag.m32228a((View) this.f15694ay, 0);
            return;
        }
        C5443ag.m32228a((View) this.f15702h, 4);
        C5443ag.m32228a((View) this.f15694ay, 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity
    /* renamed from: M */
    public void mo35835M() {
        if (this.f15717w == null) {
            finish();
            return;
        }
        this.f15652aI = false;
        super.mo35835M();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: N */
    public void mo34724N() {
        if (this.f15701g != null) {
            this.f15701g.mo35550a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: O */
    public long mo34723O() {
        C5478q.m32106e("TTRewardExpressVideoActivity", "onGetCurrentPlayTime mVideoCurrent:" + this.f15655aL);
        return this.f15655aL;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: P */
    public int mo34722P() {
        if (this.f15860aX) {
            return 4;
        }
        if (this.f15861aY) {
            return 5;
        }
        if (m35933v()) {
            return 1;
        }
        if (m35935t()) {
            return 2;
        }
        if (m35934u()) {
        }
        return 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: Q */
    public void mo34721Q() {
        m36014K();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: R */
    public void mo34501R() {
        super.mo34501R();
        FullRewardExpressView fullRewardExpressView = this.f15855aS;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.m34768h();
        }
    }

    /* renamed from: a */
    protected void m35840a(NativeExpressView nativeExpressView, C4557i c4557i) {
        if (nativeExpressView == null || this.f15717w == null) {
            return;
        }
        this.f15857aU = m35841a(c4557i);
        C4811e.m33874a(c4557i);
        EmptyView m35843a = m35843a((ViewGroup) nativeExpressView);
        EmptyView emptyView = m35843a;
        if (m35843a == null) {
            emptyView = new EmptyView(this.f15703i, nativeExpressView);
            nativeExpressView.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.AbstractC4461a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34692a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34691a(View view) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34690a(boolean z) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: b */
            public void mo34689b() {
            }
        });
        Context context = this.f15703i;
        String str = this.f15858aV;
        C4617e c4617e = new C4617e(context, c4557i, str, C5438af.m32300a(str)) { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b, com.bytedance.sdk.openadsdk.core.p151b.AbstractView$OnClickListenerC4497c
            /* renamed from: a */
            public void mo35468a(View view, int i, int i2, int i3, int i4) {
                super.mo35468a(view, i, i2, i3, i4);
                TTRewardExpressVideoActivity.this.mo34498a(view, i, i2, i3, i4);
            }
        };
        c4617e.m35481a(nativeExpressView);
        c4617e.m35480a(this.f15857aU);
        if (!TextUtils.isEmpty(this.f15676ag)) {
            HashMap hashMap = new HashMap();
            hashMap.put("rit_scene", this.f15676ag);
            c4617e.m35473a(hashMap);
        }
        this.f15855aS.setClickListener(c4617e);
        Context context2 = this.f15703i;
        String str2 = this.f15858aV;
        C4616d c4616d = new C4616d(context2, c4557i, str2, C5438af.m32300a(str2)) { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.6
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4494a, com.bytedance.sdk.openadsdk.core.p151b.C4495b, com.bytedance.sdk.openadsdk.core.p151b.AbstractView$OnClickListenerC4497c
            /* renamed from: a */
            public void mo35468a(View view, int i, int i2, int i3, int i4) {
                super.mo35468a(view, i, i2, i3, i4);
                TTRewardExpressVideoActivity.this.mo34498a(view, i, i2, i3, i4);
            }
        };
        c4616d.m35481a(nativeExpressView);
        if (!TextUtils.isEmpty(this.f15676ag)) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("rit_scene", this.f15676ag);
            c4616d.m35473a(hashMap2);
        }
        c4616d.m35480a(this.f15857aU);
        this.f15855aS.setClickCreativeListener(c4616d);
        emptyView.setNeedCheckingShow(false);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: a */
    public boolean mo34499a(long j, boolean z) {
        this.f15856aT = this.f15855aS.getVideoFrameLayout();
        if (this.f15623G == null) {
            this.f15623G = new C4430g(this.f15703i, this.f15856aT, this.f15717w);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("dynamic_show_type", Integer.valueOf(this.f15855aS.m34762n() ? 1 : 0));
        if (!TextUtils.isEmpty(this.f15676ag)) {
            hashMap.put("rit_scene", this.f15676ag);
        }
        this.f15623G.mo34309a(hashMap);
        this.f15623G.mo34320a(new AbstractC4719c.AbstractC4720a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34365a() {
                if (TTRewardExpressVideoActivity.this.f15628L != null) {
                    TTRewardExpressVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardExpressVideoActivity.this.m36013L();
                }
                TTRewardExpressVideoActivity.this.m35936s();
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTRewardExpressVideoActivity.this.m35981a(AdType.REWARDED_VIDEO, hashMap2);
                if (TTRewardExpressVideoActivity.this.f15623G != null) {
                    TTRewardExpressVideoActivity.this.f15623G.mo34257m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34364a(long j2, int i) {
                if (TTRewardExpressVideoActivity.this.f15628L != null) {
                    TTRewardExpressVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardExpressVideoActivity.this.m36013L();
                }
                TTRewardExpressVideoActivity.this.f15861aY = true;
                TTRewardExpressVideoActivity.this.m35829U();
                TTRewardExpressVideoActivity.this.m35936s();
                TTRewardExpressVideoActivity.this.f15878ba = (int) (System.currentTimeMillis() / 1000);
                TTRewardExpressVideoActivity.this.m35830S();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34363a(long j2, long j3) {
                if (TTRewardExpressVideoActivity.this.f15628L != null) {
                    TTRewardExpressVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTRewardExpressVideoActivity.this.f15655aL) {
                        TTRewardExpressVideoActivity.this.m36013L();
                    }
                }
                TTRewardExpressVideoActivity.this.f15655aL = j2;
                int i = C4600n.m34805h().m34866q(String.valueOf(TTRewardExpressVideoActivity.this.f15638V)).f16700f;
                if (j3 > 0 && ((float) (100 * j2)) / ((float) j3) >= i) {
                    TTRewardExpressVideoActivity.this.m35830S();
                }
                TTRewardExpressVideoActivity tTRewardExpressVideoActivity = TTRewardExpressVideoActivity.this;
                double J = tTRewardExpressVideoActivity.m36015J();
                long j4 = j2 / 1000;
                tTRewardExpressVideoActivity.f15635S = (int) (J - j4);
                if (TTRewardExpressVideoActivity.this.f15635S >= 0 && TTRewardExpressVideoActivity.this.f15701g != null) {
                    TTRewardExpressVideoActivity.this.f15701g.mo35549a(String.valueOf(TTRewardExpressVideoActivity.this.f15635S), (CharSequence) null);
                }
                int i2 = (int) j4;
                if (TTRewardExpressVideoActivity.this.f15637U != -1 && i2 == TTRewardExpressVideoActivity.this.f15637U && !TTRewardExpressVideoActivity.this.f15880bc.get()) {
                    TTRewardExpressVideoActivity.this.f15702h.setVisibility(0);
                    TTRewardExpressVideoActivity.this.f15880bc.set(true);
                    TTRewardExpressVideoActivity.this.m35938q();
                }
                int m34886g = C4600n.m34805h().m34886g(String.valueOf(TTRewardExpressVideoActivity.this.f15638V));
                boolean z2 = false;
                if (TTRewardExpressVideoActivity.this.f15855aS.m34762n()) {
                    z2 = false;
                    if (m34886g != -1) {
                        z2 = false;
                        if (m34886g >= 0) {
                            z2 = true;
                        }
                    }
                }
                if (z2 && i2 >= m34886g) {
                    if (!TTRewardExpressVideoActivity.this.f15641Y.getAndSet(true) && TTRewardExpressVideoActivity.this.f15701g != null) {
                        TTRewardExpressVideoActivity.this.f15701g.setShowSkip(true);
                    }
                    if (TTRewardExpressVideoActivity.this.f15701g != null) {
                        TTRewardExpressVideoActivity.this.f15701g.mo35549a((CharSequence) null, TTBaseVideoActivity.f15614b);
                        TTRewardExpressVideoActivity.this.f15701g.setSkipEnable(true);
                    }
                }
                if (TTRewardExpressVideoActivity.this.f15635S <= 0) {
                    TTRewardExpressVideoActivity.this.m35936s();
                }
                if (!TTRewardExpressVideoActivity.this.f15672ac.get() || TTRewardExpressVideoActivity.this.f15623G == null || TTRewardExpressVideoActivity.this.f15623G.mo34249u() == null || !TTRewardExpressVideoActivity.this.f15623G.mo34249u().m34423g()) {
                    return;
                }
                TTRewardExpressVideoActivity.this.f15623G.mo34264i();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: b */
            public void mo34362b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: b */
            public void mo34361b(long j2, int i) {
                if (TTRewardExpressVideoActivity.this.f15628L != null) {
                    TTRewardExpressVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                if (C5094b.m33091b()) {
                    TTRewardExpressVideoActivity.this.m35816d("onVideoError");
                } else if (TTRewardExpressVideoActivity.this.f15879bb != null) {
                    TTRewardExpressVideoActivity.this.f15879bb.onVideoError();
                }
                TTRewardExpressVideoActivity.this.m35953e(true);
                if (TTRewardExpressVideoActivity.this.m35935t()) {
                    return;
                }
                TTRewardExpressVideoActivity.this.m36013L();
                if (TTRewardExpressVideoActivity.this.f15623G != null) {
                    TTRewardExpressVideoActivity.this.f15623G.mo34257m();
                }
                TTRewardExpressVideoActivity.this.m35936s();
                TTRewardExpressVideoActivity.this.f15860aX = true;
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 1);
                TTRewardExpressVideoActivity.this.m35981a(AdType.REWARDED_VIDEO, hashMap2);
            }
        });
        String m35043h = this.f15717w.m35245B() != null ? this.f15717w.m35245B().m35043h() : null;
        String str = m35043h;
        if (this.f15618B != null) {
            File file = new File(this.f15618B);
            str = m35043h;
            if (file.exists()) {
                str = m35043h;
                if (file.length() > 0) {
                    str = this.f15618B;
                    this.f15620D = true;
                }
            }
        }
        C5478q.m32106e("wzj", "videoUrl:".concat(String.valueOf(str)));
        if (this.f15623G == null) {
            return false;
        }
        Message message = new Message();
        message.what = VastError.ERROR_CODE_GENERAL_WRAPPER;
        message.arg1 = 1;
        this.f15628L.sendMessageDelayed(message, 5000L);
        boolean mo34310a = this.f15623G.mo34310a(str, this.f15717w.m35231P(), this.f15856aT.getWidth(), this.f15856aT.getHeight(), null, this.f15717w.m35228S(), j, this.f15634R);
        if (mo34310a && !z) {
            C4811e.m33877a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO, hashMap);
            mo34501R();
            this.f15877aZ = (int) (System.currentTimeMillis() / 1000);
        }
        return mo34310a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    /* renamed from: b */
    public void mo35838b(String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: c */
    public void mo34720c(int i) {
        if (i == 1) {
            if (m35935t() || m35934u()) {
                return;
            }
            mo34499a(0L, false);
        } else if (i == 2) {
            try {
                if (!m35935t()) {
                    return;
                }
                this.f15623G.mo34264i();
            } catch (Throwable th) {
                C5478q.m32106e("TTRewardExpressVideoActivity", "onPause throw Exception :" + th.getMessage());
            }
        } else if (i == 3) {
            try {
                if (!m35934u()) {
                    return;
                }
                this.f15623G.mo34260k();
            } catch (Throwable th2) {
                C5478q.m32106e("TTRewardExpressVideoActivity", "onPause throw Exception :" + th2.getMessage());
            }
        } else if (i == 4) {
            if (this.f15623G == null) {
                return;
            }
            this.f15623G.mo34258l();
            this.f15623G = null;
        } else if (i != 5 || m35935t() || m35934u()) {
        } else {
            mo34499a(0L, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    /* renamed from: e */
    public void mo35837e() {
        super.mo35837e();
        m35942m();
        m35979a(this.f15634R);
        m35943l();
        m35937r();
        m35944k();
        m35984a("reward_endcard");
        m35939p();
        if (!C4557i.m35191b(this.f15717w)) {
            m35955d(true);
            return;
        }
        this.f15652aI = true;
        this.f15638V = C5438af.m32278d(this.f15717w.m35228S());
        m35947h();
        m35936s();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4619g
    /* renamed from: f */
    public void mo34719f(boolean z) {
        if (this.f15634R == z || this.f15701g == null) {
            return;
        }
        this.f15701g.mo35548b();
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdClicked(View view, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onAdShow(View view, int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        FullRewardExpressView fullRewardExpressView = this.f15855aS;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.m34764l();
        }
        super.onDestroy();
        Handler handler = this.f15859aW;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderFail(View view, String str, int i) {
        this.f15652aI = true;
        m35947h();
        if (this.f15859aW == null) {
            this.f15859aW = new Handler(Looper.getMainLooper());
        }
        this.f15859aW.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity.3
            @Override // java.lang.Runnable
            public void run() {
                TTRewardExpressVideoActivity.this.m35936s();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public void onRenderSuccess(View view, float f, float f2) {
        if (this.f15717w.m35175f() != 1 || !this.f15717w.m35137w()) {
            if (this.f15855aS.m34762n()) {
                m35836g(true);
            }
            m35955d(false);
            this.f15652aI = true;
            m35947h();
            if (mo34499a(this.f15617A, false)) {
                return;
            }
            m35936s();
            HashMap hashMap = new HashMap();
            hashMap.put("vbtt_skip_type", 1);
            m35981a(this.f15858aV, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m35844V();
        FullRewardExpressView fullRewardExpressView = this.f15855aS;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.m34766j();
        }
    }
}
