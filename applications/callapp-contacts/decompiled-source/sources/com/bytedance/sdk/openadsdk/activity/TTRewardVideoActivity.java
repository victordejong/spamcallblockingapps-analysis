package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.component.reward.h;
import com.bytedance.sdk.openadsdk.component.reward.top.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.widget.a;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.x;
import com.explorestack.iab.vast.VastError;
import com.facebook.AccessToken;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity.class */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private static TTRewardVideoAd.RewardAdInteractionListener aX;
    private o aS;
    private String aT;
    private int aU;
    private String aV;
    private String aW;
    protected int aZ;
    protected int ba;
    protected TTRewardVideoAd.RewardAdInteractionListener bb;
    private AtomicBoolean aY = new AtomicBoolean(false);
    protected final AtomicBoolean bc = new AtomicBoolean(false);
    String bd = x.a(n.a(), "tt_msgPlayable");
    String be = x.a(n.a(), "tt_negtiveBtnBtnText");
    String bf = x.a(n.a(), "tt_postiveBtnText");
    String bg = x.a(n.a(), "tt_postiveBtnTextPlayable");
    String bh = x.a(n.a(), "tt_reward_msg");

    private void N() {
        this.aS = n.f();
        if (this.w == null) {
            q.e("TTRewardVideoActivity", "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!");
            finish();
            return;
        }
        if (this.w.w() && this.w.f() == 1) {
            a(getApplicationContext());
        }
        this.au = 7;
        this.V = af.d(this.w.S());
        this.R = n.h().b(this.V);
        this.T = this.w.T();
        this.M = this.w.P();
        this.N = this.w.S();
        this.S = (int) J();
        this.O = 7;
        this.P = 3505;
        m();
        a(this.R);
        d();
        l();
        r();
        k();
        i();
        n();
        j();
        a("reward_endcard");
        O();
        b(AdType.REWARDED_VIDEO);
        p();
    }

    private void O() {
        if (this.n != null) {
            this.n.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTRewardVideoActivity.this.X();
                    TTRewardVideoActivity.this.Y();
                    if (i.b(TTRewardVideoActivity.this.w)) {
                        TTRewardVideoActivity.this.f(true);
                    } else {
                        TTRewardVideoActivity.this.finish();
                    }
                }
            });
        }
        if (this.g != null) {
            this.g.setListener(new b() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.3
                @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
                public void a(View view) {
                    TTRewardVideoActivity.this.X();
                    TTRewardVideoActivity.this.Y();
                    if (TTRewardVideoActivity.this.w != null && TTRewardVideoActivity.this.w.w() && TTRewardVideoActivity.this.w.f() == 1) {
                        TTRewardVideoActivity.this.f(true);
                    } else {
                        TTRewardVideoActivity.this.f(false);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
                public void b(View view) {
                    TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                    tTRewardVideoActivity.R = !tTRewardVideoActivity.R;
                    q.b("TTRewardVideoActivity", "will set is Mute " + TTRewardVideoActivity.this.R + " mLastVolume=" + TTRewardVideoActivity.this.av.b());
                    if (TTRewardVideoActivity.this.G != null) {
                        TTRewardVideoActivity.this.G.c(TTRewardVideoActivity.this.R);
                    }
                    if (!i.c(TTRewardVideoActivity.this.w) || TTRewardVideoActivity.this.W.get()) {
                        if (i.a(TTRewardVideoActivity.this.w)) {
                            TTRewardVideoActivity.this.av.a(TTRewardVideoActivity.this.R, true);
                        }
                        TTRewardVideoActivity tTRewardVideoActivity2 = TTRewardVideoActivity.this;
                        tTRewardVideoActivity2.c(tTRewardVideoActivity2.R);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
                public void c(View view) {
                    TTRewardVideoActivity.this.K();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (this.G != null) {
            this.G.m();
        }
        a(AdType.REWARDED_VIDEO, EventConstants.SKIP, (Map<String, Object>) null);
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap.put("rit_scene", this.ag);
        }
        hashMap.put("play_type", Integer.valueOf(af.a(this.G, this.D)));
        a(AdType.REWARDED_VIDEO, "feed_break", hashMap);
        G();
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onSkippedVideo");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
        if (rewardAdInteractionListener != null) {
            rewardAdInteractionListener.onSkippedVideo();
        }
    }

    private void Q() {
        Intent intent = getIntent();
        if (intent != null) {
            this.aT = intent.getStringExtra("reward_name");
            this.aU = intent.getIntExtra("reward_amount", 0);
            this.aV = intent.getStringExtra("media_extra");
            this.aW = intent.getStringExtra(AccessToken.USER_ID_KEY);
            this.z = intent.getBooleanExtra("show_download_bar", true);
            this.B = intent.getStringExtra("video_cache_url");
            this.C = intent.getIntExtra("orientation", 2);
            this.ag = intent.getStringExtra("rit_scene");
        }
    }

    private JSONObject V() {
        JSONObject jSONObject = new JSONObject();
        int s = this.G != null ? (int) this.G.s() : 0;
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("reward_name", this.aT);
            jSONObject.put("reward_amount", this.aU);
            jSONObject.put("network", t.c(this.i));
            jSONObject.put("sdk_version", "3.5.0.5");
            int y = this.w.y();
            String str = "unKnow";
            if (y == 2) {
                str = af.a();
            } else if (y == 1) {
                str = af.b();
            }
            jSONObject.put("user_agent", str);
            jSONObject.put("extra", new JSONObject(this.N));
            jSONObject.put("media_extra", this.aV);
            jSONObject.put("video_duration", this.w.B().e());
            jSONObject.put("play_start_ts", this.aZ);
            jSONObject.put("play_end_ts", this.ba);
            jSONObject.put(VastIconXmlManager.DURATION, s);
            jSONObject.put(AccessToken.USER_ID_KEY, this.aW);
            jSONObject.put("trans_id", UUID.randomUUID().toString().replace(VerificationLanguage.REGION_PREFIX, ""));
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    private void W() {
        if (!this.ax) {
            this.ax = true;
            if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                d("onAdClose");
                return;
            }
            TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
            if (rewardAdInteractionListener != null) {
                rewardAdInteractionListener.onAdClose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        HashMap hashMap = new HashMap();
        if (this.w != null && this.w.f() == 1 && this.w.w()) {
            hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(System.currentTimeMillis() - this.az));
        }
        e.d(this.i, this.w, AdType.REWARDED_VIDEO, "click_close", (Map<String, Object>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final boolean z, final int i, final String str2) {
        com.bytedance.sdk.openadsdk.l.e.b(new g("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTRewardVideoActivity.this.a(0).executeRewardVideoCallback(TTRewardVideoActivity.this.y, str, z, i, str2);
                } catch (Throwable th) {
                    q.c("TTRewardVideoActivity", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    private boolean a(Bundle bundle) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                this.y = intent.getStringExtra("multi_process_meta_md5");
                if (stringExtra != null) {
                    try {
                        this.w = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra));
                    } catch (Exception e) {
                        q.c("TTRewardVideoActivity", "TTRewardVideoActivity MultiGlobalInfo throw ", e);
                    }
                }
            }
            if (this.w != null && this.w.D() == 4) {
                this.H = d.a(this.i, this.w, AdType.REWARDED_VIDEO);
            }
        } else {
            this.w = com.bytedance.sdk.openadsdk.core.t.a().c();
            this.bb = com.bytedance.sdk.openadsdk.core.t.a().d();
            this.H = com.bytedance.sdk.openadsdk.core.t.a().f();
            com.bytedance.sdk.openadsdk.core.t.a().g();
        }
        if (bundle != null) {
            if (this.bb == null) {
                this.bb = aX;
                aX = null;
            }
            try {
                String string = bundle.getString("material_meta");
                this.y = bundle.getString("multi_process_meta_md5");
                this.B = bundle.getString("video_cache_url");
                this.C = bundle.getInt("orientation", 2);
                this.R = bundle.getBoolean("is_mute");
                this.ag = bundle.getString("rit_scene");
                this.w = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(string));
                this.Y.set(bundle.getBoolean("has_show_skip_btn"));
                if (this.Y.get() && this.g != null) {
                    this.g.setShowSkip(true);
                    this.g.a((CharSequence) null, f8419b);
                    this.g.setSkipEnable(true);
                }
            } catch (Throwable th) {
            }
            if (this.H == null) {
                this.H = d.a(this.i, this.w, AdType.REWARDED_VIDEO);
            }
        }
        boolean z = false;
        if (this.w == null) {
            q.e("TTRewardVideoActivity", "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!");
            finish();
            return false;
        }
        this.ah = this.w.l() == 1;
        if (this.w.l() == 3) {
            z = true;
        }
        this.ai = z;
        if (this.w == null) {
            return true;
        }
        this.w.B();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(final boolean z) {
        if (!n.h().e(String.valueOf(this.V))) {
            if (z) {
                finish();
            } else {
                P();
            }
        } else if (!this.aY.get()) {
            this.ac.set(true);
            if (this.G != null) {
                this.G.i();
            }
            if (z) {
                E();
            }
            this.ad = new a(this);
            if (z) {
                this.ad.a(this.bd).b(this.bg).c(this.be);
            } else {
                this.ad.a(this.bh).b(this.bf).c(this.be);
            }
            this.ad.a(new a.AbstractC0170a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.4
                @Override // com.bytedance.sdk.openadsdk.core.widget.a.AbstractC0170a
                public void a() {
                    if (TTRewardVideoActivity.this.G != null) {
                        TTRewardVideoActivity.this.G.k();
                    }
                    if (z) {
                        TTRewardVideoActivity.this.F();
                    }
                    TTRewardVideoActivity.this.ad.dismiss();
                    TTRewardVideoActivity.this.ac.set(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.a.AbstractC0170a
                public void b() {
                    TTRewardVideoActivity.this.ad.dismiss();
                    TTRewardVideoActivity.this.ac.set(false);
                    if (z) {
                        TTRewardVideoActivity.this.finish();
                    } else {
                        TTRewardVideoActivity.this.P();
                    }
                }
            }).show();
        } else if (z) {
            finish();
        } else {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M() {
        if (this.w == null) {
            finish();
            return;
        }
        if (this.w.l() != 0) {
            if (this.w.l() == 1) {
                setContentView(x.f(this, "tt_activity_reward_video_newstyle"));
                return;
            } else if (this.w.l() == 3) {
                setContentView(x.f(this, "tt_activity_rewardvideo_new_bar_3_style"));
                return;
            }
        }
        setContentView(x.f(this, "tt_activity_rewardvideo"));
    }

    public void R() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onAdShow");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
        if (rewardAdInteractionListener != null) {
            rewardAdInteractionListener.onAdShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void S() {
        if (!this.aY.get()) {
            this.aY.set(true);
            if (!n.h().n(String.valueOf(this.V))) {
                this.aS.a(V(), new o.b() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.6
                    @Override // com.bytedance.sdk.openadsdk.core.o.b
                    public void a(int i, String str) {
                        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                            TTRewardVideoActivity.this.a("onRewardVerify", false, 0, "");
                        } else if (TTRewardVideoActivity.this.bb != null) {
                            TTRewardVideoActivity.this.bb.onRewardVerify(false, 0, "");
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.o.b
                    public void a(p.b bVar) {
                        int a2 = bVar.f9088c.a();
                        String b2 = bVar.f9088c.b();
                        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                            TTRewardVideoActivity.this.a("onRewardVerify", bVar.f9087b, a2, b2);
                        } else if (TTRewardVideoActivity.this.bb != null) {
                            TTRewardVideoActivity.this.bb.onRewardVerify(bVar.f9087b, a2, b2);
                        }
                    }
                });
            } else if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                a("onRewardVerify", true, this.aU, this.aT);
            } else {
                TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
                if (rewardAdInteractionListener != null) {
                    rewardAdInteractionListener.onRewardVerify(true, this.aU, this.aT);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void T() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onAdVideoBarClick");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
        if (rewardAdInteractionListener != null) {
            rewardAdInteractionListener.onAdVideoBarClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onVideoComplete");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
        if (rewardAdInteractionListener != null) {
            rewardAdInteractionListener.onVideoComplete();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void a(View view, int i, int i2, int i3, int i4) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onAdVideoBarClick");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.bb;
        if (rewardAdInteractionListener != null) {
            rewardAdInteractionListener.onAdVideoBarClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    void a(JSONObject jSONObject) {
        e.a(this.i, this.w, AdType.REWARDED_VIDEO, "click", jSONObject);
    }

    public boolean a(long j, boolean z) {
        HashMap hashMap;
        if (this.G == null) {
            this.G = new com.bytedance.sdk.openadsdk.component.reward.g(this.i, this.s, this.w);
        }
        String str = null;
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap = new HashMap();
            hashMap.put("rit_scene", this.ag);
        } else {
            hashMap = null;
        }
        this.G.a(hashMap);
        this.G.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a() {
                if (TTRewardVideoActivity.this.L != null) {
                    TTRewardVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardVideoActivity.this.L();
                }
                TTRewardVideoActivity.this.s();
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTRewardVideoActivity.this.a(AdType.REWARDED_VIDEO, hashMap2);
                if (TTRewardVideoActivity.this.G != null) {
                    TTRewardVideoActivity.this.G.m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, int i) {
                if (TTRewardVideoActivity.this.L != null) {
                    TTRewardVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardVideoActivity.this.L();
                }
                TTRewardVideoActivity.this.U();
                TTRewardVideoActivity.this.s();
                TTRewardVideoActivity.this.ba = (int) (System.currentTimeMillis() / 1000);
                TTRewardVideoActivity.this.S();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, long j3) {
                if (TTRewardVideoActivity.this.L != null) {
                    TTRewardVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTRewardVideoActivity.this.aL) {
                        TTRewardVideoActivity.this.L();
                    }
                }
                TTRewardVideoActivity.this.aL = j2;
                int i = n.h().q(String.valueOf(TTRewardVideoActivity.this.V)).f;
                if (j3 > 0 && ((float) (100 * j2)) / ((float) j3) >= i) {
                    TTRewardVideoActivity.this.S();
                }
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                double J = tTRewardVideoActivity.J();
                long j4 = j2 / 1000;
                tTRewardVideoActivity.S = (int) (J - j4);
                if (TTRewardVideoActivity.this.S >= 0 && TTRewardVideoActivity.this.g != null) {
                    TTRewardVideoActivity.this.g.setShowCountDown(true);
                    TTRewardVideoActivity.this.g.a(String.valueOf(TTRewardVideoActivity.this.S), (CharSequence) null);
                }
                int i2 = (int) j4;
                if (TTRewardVideoActivity.this.U != -1 && i2 == TTRewardVideoActivity.this.U && !TTRewardVideoActivity.this.bc.get()) {
                    TTRewardVideoActivity.this.h.setVisibility(0);
                    TTRewardVideoActivity.this.bc.set(true);
                    TTRewardVideoActivity.this.q();
                }
                int g = n.h().g(String.valueOf(TTRewardVideoActivity.this.V));
                boolean z2 = false;
                if (g != -1) {
                    z2 = false;
                    if (g >= 0) {
                        z2 = true;
                    }
                }
                if (z2 && i2 >= g) {
                    if (!TTRewardVideoActivity.this.Y.getAndSet(true) && TTRewardVideoActivity.this.g != null) {
                        TTRewardVideoActivity.this.g.setShowSkip(true);
                    }
                    if (TTRewardVideoActivity.this.g != null) {
                        TTRewardVideoActivity.this.g.a((CharSequence) null, TTBaseVideoActivity.f8419b);
                        TTRewardVideoActivity.this.g.setSkipEnable(true);
                    }
                }
                if (TTRewardVideoActivity.this.S <= 0) {
                    TTRewardVideoActivity.this.s();
                }
                if ((TTRewardVideoActivity.this.ac.get() || TTRewardVideoActivity.this.aa.get()) && TTRewardVideoActivity.this.t()) {
                    TTRewardVideoActivity.this.G.i();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b(long j2, int i) {
                if (TTRewardVideoActivity.this.L != null) {
                    TTRewardVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                    TTRewardVideoActivity.this.d("onVideoError");
                } else if (TTRewardVideoActivity.this.bb != null) {
                    TTRewardVideoActivity.this.bb.onVideoError();
                }
                TTRewardVideoActivity.this.e(true);
                if (!TTRewardVideoActivity.this.t()) {
                    TTRewardVideoActivity.this.L();
                    if (TTRewardVideoActivity.this.G != null) {
                        TTRewardVideoActivity.this.G.m();
                    }
                    TTRewardVideoActivity.this.s();
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("vbtt_skip_type", 1);
                    TTRewardVideoActivity.this.a(AdType.REWARDED_VIDEO, hashMap2);
                }
            }
        });
        if (this.w.B() != null) {
            str = this.w.B().h();
        }
        String str2 = str;
        if (this.B != null) {
            File file = new File(this.B);
            str2 = str;
            if (file.exists()) {
                str2 = str;
                if (file.length() > 0) {
                    str2 = this.B;
                    this.D = true;
                }
            }
        }
        q.e("wzj", "videoUrl:".concat(String.valueOf(str2)));
        if (this.G == null) {
            return false;
        }
        Message message = new Message();
        message.what = VastError.ERROR_CODE_GENERAL_WRAPPER;
        message.arg1 = 1;
        this.L.sendMessageDelayed(message, 5000L);
        boolean a2 = this.G.a(str2, this.w.P(), this.s.getWidth(), this.s.getHeight(), null, this.w.S(), j, this.R);
        if (a2 && !z) {
            e.a(this.i, this.w, AdType.REWARDED_VIDEO, hashMap);
            R();
            this.aZ = (int) (System.currentTimeMillis() / 1000);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(String str) {
        a(str, false, 0, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void e(int i) {
        if (i == 10000) {
            S();
        } else if (i == 10001) {
            U();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        aX = null;
    }

    @Override // android.app.Activity
    public void finish() {
        W();
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Q();
        if (a(bundle)) {
            M();
            e();
            N();
            c();
            x();
            B();
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        W();
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("recycleRes");
        }
        if (this.bb != null) {
            this.bb = null;
        }
        if (TextUtils.isEmpty(this.B)) {
            h.a(n.a()).a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        aX = this.bb;
        try {
            bundle2.putString("material_meta", this.w != null ? this.w.ag().toString() : null);
            bundle2.putString("multi_process_meta_md5", this.y);
            bundle2.putLong("video_current", this.G == null ? this.A : this.G.n());
            bundle2.putString("video_cache_url", this.B);
            bundle2.putInt("orientation", this.C);
            bundle2.putBoolean("is_mute", this.R);
            bundle2.putBoolean("has_show_skip_btn", this.Y.get());
            bundle2.putString("rit_scene", this.ag);
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }
}
