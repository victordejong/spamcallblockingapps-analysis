package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.component.reward.C4430g;
import com.bytedance.sdk.openadsdk.component.reward.C4431h;
import com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4638p;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.widget.DialogC4766a;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.explorestack.iab.vast.VastError;
import com.facebook.AccessToken;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
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

    /* renamed from: aX */
    private static TTRewardVideoAd.RewardAdInteractionListener f15870aX;

    /* renamed from: aS */
    private AbstractC4635o f15871aS;

    /* renamed from: aT */
    private String f15872aT;

    /* renamed from: aU */
    private int f15873aU;

    /* renamed from: aV */
    private String f15874aV;

    /* renamed from: aW */
    private String f15875aW;

    /* renamed from: aZ */
    protected int f15877aZ;

    /* renamed from: ba */
    protected int f15878ba;

    /* renamed from: bb */
    protected TTRewardVideoAd.RewardAdInteractionListener f15879bb;

    /* renamed from: aY */
    private AtomicBoolean f15876aY = new AtomicBoolean(false);

    /* renamed from: bc */
    protected final AtomicBoolean f15880bc = new AtomicBoolean(false);

    /* renamed from: bd */
    String f15881bd = C5486x.m32071a(C4600n.m34815a(), "tt_msgPlayable");

    /* renamed from: be */
    String f15882be = C5486x.m32071a(C4600n.m34815a(), "tt_negtiveBtnBtnText");

    /* renamed from: bf */
    String f15883bf = C5486x.m32071a(C4600n.m34815a(), "tt_postiveBtnText");

    /* renamed from: bg */
    String f15884bg = C5486x.m32071a(C4600n.m34815a(), "tt_postiveBtnTextPlayable");

    /* renamed from: bh */
    String f15885bh = C5486x.m32071a(C4600n.m34815a(), "tt_reward_msg");

    /* renamed from: N */
    private void m35834N() {
        this.f15871aS = C4600n.m34807f();
        if (this.f15717w == null) {
            C5478q.m32106e("TTRewardVideoActivity", "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!");
            finish();
            return;
        }
        if (this.f15717w.m35137w() && this.f15717w.m35175f() == 1) {
            m35995a(getApplicationContext());
        }
        this.f15690au = 7;
        this.f15638V = C5438af.m32278d(this.f15717w.m35228S());
        this.f15634R = C4600n.m34805h().m34906b(this.f15638V);
        this.f15636T = this.f15717w.m35227T();
        this.f15629M = this.f15717w.m35231P();
        this.f15630N = this.f15717w.m35228S();
        this.f15635S = (int) m36015J();
        this.f15631O = 7;
        this.f15632P = 3505;
        m35942m();
        m35979a(this.f15634R);
        m35959d();
        m35943l();
        m35937r();
        m35944k();
        m35946i();
        m35941n();
        m35945j();
        m35984a("reward_endcard");
        m35833O();
        mo35838b(AdType.REWARDED_VIDEO);
        m35939p();
    }

    /* renamed from: O */
    private void m35833O() {
        if (this.f15708n != null) {
            this.f15708n.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTRewardVideoActivity.this.m35826X();
                    TTRewardVideoActivity.this.m35825Y();
                    if (C4557i.m35191b(TTRewardVideoActivity.this.f15717w)) {
                        TTRewardVideoActivity.this.m35815f(true);
                    } else {
                        TTRewardVideoActivity.this.finish();
                    }
                }
            });
        }
        if (this.f15701g != null) {
            this.f15701g.setListener(new AbstractC4451b() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.3
                @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b
                /* renamed from: a */
                public void mo35546a(View view) {
                    TTRewardVideoActivity.this.m35826X();
                    TTRewardVideoActivity.this.m35825Y();
                    if (TTRewardVideoActivity.this.f15717w != null && TTRewardVideoActivity.this.f15717w.m35137w() && TTRewardVideoActivity.this.f15717w.m35175f() == 1) {
                        TTRewardVideoActivity.this.m35815f(true);
                    } else {
                        TTRewardVideoActivity.this.m35815f(false);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b
                /* renamed from: b */
                public void mo35545b(View view) {
                    TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                    tTRewardVideoActivity.f15634R = !tTRewardVideoActivity.f15634R;
                    C5478q.m32112b("TTRewardVideoActivity", "will set is Mute " + TTRewardVideoActivity.this.f15634R + " mLastVolume=" + TTRewardVideoActivity.this.f15691av.m33559b());
                    if (TTRewardVideoActivity.this.f15623G != null) {
                        TTRewardVideoActivity.this.f15623G.mo34287c(TTRewardVideoActivity.this.f15634R);
                    }
                    if (!C4557i.m35184c(TTRewardVideoActivity.this.f15717w) || TTRewardVideoActivity.this.f15639W.get()) {
                        if (C4557i.m35209a(TTRewardVideoActivity.this.f15717w)) {
                            TTRewardVideoActivity.this.f15691av.m33560a(TTRewardVideoActivity.this.f15634R, true);
                        }
                        TTRewardVideoActivity tTRewardVideoActivity2 = TTRewardVideoActivity.this;
                        tTRewardVideoActivity2.m35960c(tTRewardVideoActivity2.f15634R);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b
                /* renamed from: c */
                public void mo35544c(View view) {
                    TTRewardVideoActivity.this.m36014K();
                }
            });
        }
    }

    /* renamed from: P */
    public void m35832P() {
        if (this.f15623G != null) {
            this.f15623G.mo34257m();
        }
        m35982a(AdType.REWARDED_VIDEO, EventConstants.SKIP, (Map<String, Object>) null);
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.f15676ag)) {
            hashMap.put("rit_scene", this.f15676ag);
        }
        hashMap.put("play_type", Integer.valueOf(C5438af.m32301a(this.f15623G, this.f15620D)));
        m35982a(AdType.REWARDED_VIDEO, "feed_break", hashMap);
        m36016G();
        if (C5094b.m33091b()) {
            m35816d("onSkippedVideo");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
        if (rewardAdInteractionListener == null) {
            return;
        }
        rewardAdInteractionListener.onSkippedVideo();
    }

    /* renamed from: Q */
    private void m35831Q() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        this.f15872aT = intent.getStringExtra("reward_name");
        this.f15873aU = intent.getIntExtra("reward_amount", 0);
        this.f15874aV = intent.getStringExtra("media_extra");
        this.f15875aW = intent.getStringExtra(AccessToken.USER_ID_KEY);
        this.f15720z = intent.getBooleanExtra("show_download_bar", true);
        this.f15618B = intent.getStringExtra("video_cache_url");
        this.f15619C = intent.getIntExtra("orientation", 2);
        this.f15676ag = intent.getStringExtra("rit_scene");
    }

    /* renamed from: V */
    private JSONObject m35828V() {
        JSONObject jSONObject = new JSONObject();
        int mo34251s = this.f15623G != null ? (int) this.f15623G.mo34251s() : 0;
        try {
            jSONObject.put("oversea_version_type", 1);
            jSONObject.put("reward_name", this.f15872aT);
            jSONObject.put("reward_amount", this.f15873aU);
            jSONObject.put("network", C5482t.m32088c(this.f15703i));
            jSONObject.put("sdk_version", "3.5.0.5");
            int m35135y = this.f15717w.m35135y();
            String str = "unKnow";
            if (m35135y == 2) {
                str = C5438af.m32312a();
            } else if (m35135y == 1) {
                str = C5438af.m32295b();
            }
            jSONObject.put("user_agent", str);
            jSONObject.put("extra", new JSONObject(this.f15630N));
            jSONObject.put("media_extra", this.f15874aV);
            jSONObject.put("video_duration", this.f15717w.m35245B().m35049e());
            jSONObject.put("play_start_ts", this.f15877aZ);
            jSONObject.put("play_end_ts", this.f15878ba);
            jSONObject.put(VastIconXmlManager.DURATION, mo34251s);
            jSONObject.put(AccessToken.USER_ID_KEY, this.f15875aW);
            jSONObject.put("trans_id", UUID.randomUUID().toString().replace(VerificationLanguage.REGION_PREFIX, ""));
            return jSONObject;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: W */
    private void m35827W() {
        if (!this.f15693ax) {
            this.f15693ax = true;
            if (C5094b.m33091b()) {
                m35816d("onAdClose");
                return;
            }
            TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
            if (rewardAdInteractionListener == null) {
                return;
            }
            rewardAdInteractionListener.onAdClose();
        }
    }

    /* renamed from: X */
    public void m35826X() {
        HashMap hashMap = new HashMap();
        if (this.f15717w != null && this.f15717w.m35175f() == 1 && this.f15717w.m35137w()) {
            hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(System.currentTimeMillis() - this.f15695az));
        }
        C4811e.m33864d(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO, "click_close", (Map<String, Object>) null);
    }

    /* renamed from: Y */
    public void m35825Y() {
    }

    /* renamed from: a */
    public void m35820a(final String str, final boolean z, final int i, final String str2) {
        C5052e.m33157b(new AbstractRunnableC5055g("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTRewardVideoActivity.this.m35999a(0).executeRewardVideoCallback(TTRewardVideoActivity.this.f15719y, str, z, i, str2);
                } catch (Throwable th) {
                    C5478q.m32108c("TTRewardVideoActivity", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    /* renamed from: a */
    private boolean m35824a(Bundle bundle) {
        if (C5094b.m33091b()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                this.f15719y = intent.getStringExtra("multi_process_meta_md5");
                if (stringExtra != null) {
                    try {
                        this.f15717w = C4493b.m35502a(new JSONObject(stringExtra));
                    } catch (Exception e) {
                        C5478q.m32108c("TTRewardVideoActivity", "TTRewardVideoActivity MultiGlobalInfo throw ", e);
                    }
                }
            }
            if (this.f15717w != null && this.f15717w.m35243D() == 4) {
                this.f15624H = C3235d.m39089a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO);
            }
        } else {
            this.f15717w = C4651t.m34621a().m34613c();
            this.f15879bb = C4651t.m34621a().m34612d();
            this.f15624H = C4651t.m34621a().m34610f();
            C4651t.m34621a().m34609g();
        }
        if (bundle != null) {
            if (this.f15879bb == null) {
                this.f15879bb = f15870aX;
                f15870aX = null;
            }
            try {
                String string = bundle.getString("material_meta");
                this.f15719y = bundle.getString("multi_process_meta_md5");
                this.f15618B = bundle.getString("video_cache_url");
                this.f15619C = bundle.getInt("orientation", 2);
                this.f15634R = bundle.getBoolean("is_mute");
                this.f15676ag = bundle.getString("rit_scene");
                this.f15717w = C4493b.m35502a(new JSONObject(string));
                this.f15641Y.set(bundle.getBoolean("has_show_skip_btn"));
                if (this.f15641Y.get() && this.f15701g != null) {
                    this.f15701g.setShowSkip(true);
                    this.f15701g.mo35549a((CharSequence) null, f15614b);
                    this.f15701g.setSkipEnable(true);
                }
            } catch (Throwable th) {
            }
            if (this.f15624H == null) {
                this.f15624H = C3235d.m39089a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO);
            }
        }
        if (this.f15717w == null) {
            C5478q.m32106e("TTRewardVideoActivity", "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!");
            finish();
            return false;
        }
        this.f15677ah = this.f15717w.m35157l() == 1;
        boolean z = false;
        if (this.f15717w.m35157l() == 3) {
            z = true;
        }
        this.f15678ai = z;
        if (this.f15717w == null) {
            return true;
        }
        this.f15717w.m35245B();
        return true;
    }

    /* renamed from: f */
    public void m35815f(final boolean z) {
        if (!C4600n.m34805h().m34893e(String.valueOf(this.f15638V))) {
            if (z) {
                finish();
            } else {
                m35832P();
            }
        } else if (this.f15876aY.get()) {
            if (z) {
                finish();
            } else {
                m35832P();
            }
        } else {
            this.f15672ac.set(true);
            if (this.f15623G != null) {
                this.f15623G.mo34264i();
            }
            if (z) {
                m36018E();
            }
            this.f15673ad = new DialogC4766a(this);
            if (z) {
                this.f15673ad.m34058a(this.f15881bd).m34056b(this.f15884bg).m34054c(this.f15882be);
            } else {
                this.f15673ad.m34058a(this.f15885bh).m34056b(this.f15883bf).m34054c(this.f15882be);
            }
            this.f15673ad.m34059a(new DialogC4766a.AbstractC4769a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.4
                @Override // com.bytedance.sdk.openadsdk.core.widget.DialogC4766a.AbstractC4769a
                /* renamed from: a */
                public void mo34053a() {
                    if (TTRewardVideoActivity.this.f15623G != null) {
                        TTRewardVideoActivity.this.f15623G.mo34260k();
                    }
                    if (z) {
                        TTRewardVideoActivity.this.m36017F();
                    }
                    TTRewardVideoActivity.this.f15673ad.dismiss();
                    TTRewardVideoActivity.this.f15672ac.set(false);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.DialogC4766a.AbstractC4769a
                /* renamed from: b */
                public void mo34052b() {
                    TTRewardVideoActivity.this.f15673ad.dismiss();
                    TTRewardVideoActivity.this.f15672ac.set(false);
                    if (z) {
                        TTRewardVideoActivity.this.finish();
                    } else {
                        TTRewardVideoActivity.this.m35832P();
                    }
                }
            }).show();
        }
    }

    /* renamed from: M */
    public void mo35835M() {
        if (this.f15717w == null) {
            finish();
            return;
        }
        if (this.f15717w.m35157l() != 0) {
            if (this.f15717w.m35157l() == 1) {
                setContentView(C5486x.m32065f(this, "tt_activity_reward_video_newstyle"));
                return;
            } else if (this.f15717w.m35157l() == 3) {
                setContentView(C5486x.m32065f(this, "tt_activity_rewardvideo_new_bar_3_style"));
                return;
            }
        }
        setContentView(C5486x.m32065f(this, "tt_activity_rewardvideo"));
    }

    /* renamed from: R */
    public void mo34501R() {
        if (C5094b.m33091b()) {
            m35816d("onAdShow");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
        if (rewardAdInteractionListener == null) {
            return;
        }
        rewardAdInteractionListener.onAdShow();
    }

    /* renamed from: S */
    public void m35830S() {
        if (this.f15876aY.get()) {
            return;
        }
        this.f15876aY.set(true);
        if (!C4600n.m34805h().m34872n(String.valueOf(this.f15638V))) {
            this.f15871aS.mo34665a(m35828V(), new AbstractC4635o.AbstractC4637b() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.6
                @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4637b
                /* renamed from: a */
                public void mo34687a(int i, String str) {
                    if (C5094b.m33091b()) {
                        TTRewardVideoActivity.this.m35820a("onRewardVerify", false, 0, "");
                    } else if (TTRewardVideoActivity.this.f15879bb == null) {
                    } else {
                        TTRewardVideoActivity.this.f15879bb.onRewardVerify(false, 0, "");
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4637b
                /* renamed from: a */
                public void mo34686a(C4638p.C4646b c4646b) {
                    int m35069a = c4646b.f16993c.m35069a();
                    String m35066b = c4646b.f16993c.m35066b();
                    if (C5094b.m33091b()) {
                        TTRewardVideoActivity.this.m35820a("onRewardVerify", c4646b.f16992b, m35069a, m35066b);
                    } else if (TTRewardVideoActivity.this.f15879bb == null) {
                    } else {
                        TTRewardVideoActivity.this.f15879bb.onRewardVerify(c4646b.f16992b, m35069a, m35066b);
                    }
                }
            });
        } else if (C5094b.m33091b()) {
            m35820a("onRewardVerify", true, this.f15873aU, this.f15872aT);
        } else {
            TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
            if (rewardAdInteractionListener == null) {
                return;
            }
            rewardAdInteractionListener.onRewardVerify(true, this.f15873aU, this.f15872aT);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: T */
    public void mo34500T() {
        if (C5094b.m33091b()) {
            m35816d("onAdVideoBarClick");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
        if (rewardAdInteractionListener == null) {
            return;
        }
        rewardAdInteractionListener.onAdVideoBarClick();
    }

    /* renamed from: U */
    public void m35829U() {
        if (C5094b.m33091b()) {
            m35816d("onVideoComplete");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
        if (rewardAdInteractionListener == null) {
            return;
        }
        rewardAdInteractionListener.onVideoComplete();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: a */
    public void mo34498a(View view, int i, int i2, int i3, int i4) {
        if (C5094b.m33091b()) {
            m35816d("onAdVideoBarClick");
            return;
        }
        TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener = this.f15879bb;
        if (rewardAdInteractionListener == null) {
            return;
        }
        rewardAdInteractionListener.onAdVideoBarClick();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    /* renamed from: a */
    void mo35819a(JSONObject jSONObject) {
        C4811e.m33878a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO, "click", jSONObject);
    }

    /* renamed from: a */
    public boolean mo34499a(long j, boolean z) {
        HashMap hashMap;
        if (this.f15623G == null) {
            this.f15623G = new C4430g(this.f15703i, this.f15713s, this.f15717w);
        }
        String str = null;
        if (!TextUtils.isEmpty(this.f15676ag)) {
            hashMap = new HashMap();
            hashMap.put("rit_scene", this.f15676ag);
        } else {
            hashMap = null;
        }
        this.f15623G.mo34309a(hashMap);
        this.f15623G.mo34320a(new AbstractC4719c.AbstractC4720a() { // from class: com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity.5
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34365a() {
                if (TTRewardVideoActivity.this.f15628L != null) {
                    TTRewardVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardVideoActivity.this.m36013L();
                }
                TTRewardVideoActivity.this.m35936s();
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTRewardVideoActivity.this.m35981a(AdType.REWARDED_VIDEO, hashMap2);
                if (TTRewardVideoActivity.this.f15623G != null) {
                    TTRewardVideoActivity.this.f15623G.mo34257m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34364a(long j2, int i) {
                if (TTRewardVideoActivity.this.f15628L != null) {
                    TTRewardVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTRewardVideoActivity.this.m36013L();
                }
                TTRewardVideoActivity.this.m35829U();
                TTRewardVideoActivity.this.m35936s();
                TTRewardVideoActivity.this.f15878ba = (int) (System.currentTimeMillis() / 1000);
                TTRewardVideoActivity.this.m35830S();
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34363a(long j2, long j3) {
                if (TTRewardVideoActivity.this.f15628L != null) {
                    TTRewardVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTRewardVideoActivity.this.f15655aL) {
                        TTRewardVideoActivity.this.m36013L();
                    }
                }
                TTRewardVideoActivity.this.f15655aL = j2;
                int i = C4600n.m34805h().m34866q(String.valueOf(TTRewardVideoActivity.this.f15638V)).f16700f;
                if (j3 > 0 && ((float) (100 * j2)) / ((float) j3) >= i) {
                    TTRewardVideoActivity.this.m35830S();
                }
                TTRewardVideoActivity tTRewardVideoActivity = TTRewardVideoActivity.this;
                double J = tTRewardVideoActivity.m36015J();
                long j4 = j2 / 1000;
                tTRewardVideoActivity.f15635S = (int) (J - j4);
                if (TTRewardVideoActivity.this.f15635S >= 0 && TTRewardVideoActivity.this.f15701g != null) {
                    TTRewardVideoActivity.this.f15701g.setShowCountDown(true);
                    TTRewardVideoActivity.this.f15701g.mo35549a(String.valueOf(TTRewardVideoActivity.this.f15635S), (CharSequence) null);
                }
                int i2 = (int) j4;
                if (TTRewardVideoActivity.this.f15637U != -1 && i2 == TTRewardVideoActivity.this.f15637U && !TTRewardVideoActivity.this.f15880bc.get()) {
                    TTRewardVideoActivity.this.f15702h.setVisibility(0);
                    TTRewardVideoActivity.this.f15880bc.set(true);
                    TTRewardVideoActivity.this.m35938q();
                }
                int m34886g = C4600n.m34805h().m34886g(String.valueOf(TTRewardVideoActivity.this.f15638V));
                boolean z2 = false;
                if (m34886g != -1) {
                    z2 = false;
                    if (m34886g >= 0) {
                        z2 = true;
                    }
                }
                if (z2 && i2 >= m34886g) {
                    if (!TTRewardVideoActivity.this.f15641Y.getAndSet(true) && TTRewardVideoActivity.this.f15701g != null) {
                        TTRewardVideoActivity.this.f15701g.setShowSkip(true);
                    }
                    if (TTRewardVideoActivity.this.f15701g != null) {
                        TTRewardVideoActivity.this.f15701g.mo35549a((CharSequence) null, TTBaseVideoActivity.f15614b);
                        TTRewardVideoActivity.this.f15701g.setSkipEnable(true);
                    }
                }
                if (TTRewardVideoActivity.this.f15635S <= 0) {
                    TTRewardVideoActivity.this.m35936s();
                }
                if ((TTRewardVideoActivity.this.f15672ac.get() || TTRewardVideoActivity.this.f15670aa.get()) && TTRewardVideoActivity.this.m35935t()) {
                    TTRewardVideoActivity.this.f15623G.mo34264i();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: b */
            public void mo34362b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: b */
            public void mo34361b(long j2, int i) {
                if (TTRewardVideoActivity.this.f15628L != null) {
                    TTRewardVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                if (C5094b.m33091b()) {
                    TTRewardVideoActivity.this.m35816d("onVideoError");
                } else if (TTRewardVideoActivity.this.f15879bb != null) {
                    TTRewardVideoActivity.this.f15879bb.onVideoError();
                }
                TTRewardVideoActivity.this.m35953e(true);
                if (TTRewardVideoActivity.this.m35935t()) {
                    return;
                }
                TTRewardVideoActivity.this.m36013L();
                if (TTRewardVideoActivity.this.f15623G != null) {
                    TTRewardVideoActivity.this.f15623G.mo34257m();
                }
                TTRewardVideoActivity.this.m35936s();
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 1);
                TTRewardVideoActivity.this.m35981a(AdType.REWARDED_VIDEO, hashMap2);
            }
        });
        if (this.f15717w.m35245B() != null) {
            str = this.f15717w.m35245B().m35043h();
        }
        String str2 = str;
        if (this.f15618B != null) {
            File file = new File(this.f15618B);
            str2 = str;
            if (file.exists()) {
                str2 = str;
                if (file.length() > 0) {
                    str2 = this.f15618B;
                    this.f15620D = true;
                }
            }
        }
        C5478q.m32106e("wzj", "videoUrl:".concat(String.valueOf(str2)));
        if (this.f15623G == null) {
            return false;
        }
        Message message = new Message();
        message.what = VastError.ERROR_CODE_GENERAL_WRAPPER;
        message.arg1 = 1;
        this.f15628L.sendMessageDelayed(message, 5000L);
        boolean mo34310a = this.f15623G.mo34310a(str2, this.f15717w.m35231P(), this.f15713s.getWidth(), this.f15713s.getHeight(), null, this.f15717w.m35228S(), j, this.f15634R);
        if (mo34310a && !z) {
            C4811e.m33877a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO, hashMap);
            mo34501R();
            this.f15877aZ = (int) (System.currentTimeMillis() / 1000);
        }
        return mo34310a;
    }

    /* renamed from: d */
    public void m35816d(String str) {
        m35820a(str, false, 0, "");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: e */
    public void mo34497e(int i) {
        if (i == 10000) {
            m35830S();
        } else if (i != 10001) {
        } else {
            m35829U();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        f15870aX = null;
    }

    @Override // android.app.Activity
    public void finish() {
        m35827W();
        super.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m35831Q();
        if (!m35824a(bundle)) {
            return;
        }
        mo35835M();
        mo35837e();
        m35834N();
        m35965c();
        m35931x();
        m36021B();
        m36000a();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m35827W();
        if (C5094b.m33091b()) {
            m35816d("recycleRes");
        }
        if (this.f15879bb != null) {
            this.f15879bb = null;
        }
        if (TextUtils.isEmpty(this.f15618B)) {
            C4431h.m35601a(C4600n.m34815a()).m35602a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        f15870aX = this.f15879bb;
        try {
            bundle2.putString("material_meta", this.f15717w != null ? this.f15717w.m35196ag().toString() : null);
            bundle2.putString("multi_process_meta_md5", this.f15719y);
            bundle2.putLong("video_current", this.f15623G == null ? this.f15617A : this.f15623G.mo34256n());
            bundle2.putString("video_cache_url", this.f15618B);
            bundle2.putInt("orientation", this.f15619C);
            bundle2.putBoolean("is_mute", this.f15634R);
            bundle2.putBoolean("has_show_skip_btn", this.f15641Y.get());
            bundle2.putString("rit_scene", this.f15676ag);
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }
}
