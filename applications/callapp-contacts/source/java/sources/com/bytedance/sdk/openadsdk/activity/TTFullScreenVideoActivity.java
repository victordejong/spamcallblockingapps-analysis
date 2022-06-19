package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.component.reward.C4407b;
import com.bytedance.sdk.openadsdk.component.reward.C4408c;
import com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.explorestack.iab.vast.VastError;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity.class */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {

    /* renamed from: aS */
    private static int f15780aS = 5;

    /* renamed from: aU */
    private static TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f15781aU;

    /* renamed from: aT */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f15782aT;

    /* renamed from: N */
    private void m35903N() {
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        this.f15720z = intent.getBooleanExtra("show_download_bar", true);
        this.f15618B = intent.getStringExtra("video_cache_url");
        this.f15619C = intent.getIntExtra("orientation", 2);
        this.f15676ag = intent.getStringExtra("rit_scene");
        this.f15692aw = intent.getBooleanExtra("is_verity_playable", false);
    }

    /* renamed from: O */
    private void m35902O() {
        if (this.f15717w == null) {
            C5478q.m32106e("TTFullScreenVideoActivity", "mMaterialMeta is null , no data to display ,the TTFullScreenVideoActivity finished !!");
            finish();
            return;
        }
        if (this.f15717w.m35137w() && this.f15717w.m35175f() == 1) {
            m35995a(getApplicationContext());
        }
        this.f15690au = 8;
        this.f15638V = C5438af.m32278d(this.f15717w.m35228S());
        this.f15636T = this.f15717w.m35227T();
        this.f15629M = this.f15717w.m35231P();
        this.f15630N = this.f15717w.m35228S();
        this.f15635S = (int) m36015J();
        this.f15631O = 5;
        this.f15634R = C4600n.m34805h().m34906b(this.f15638V);
        this.f15632P = 3505;
        m35942m();
        m35979a(this.f15634R);
        m35943l();
        m35937r();
        m35944k();
        m35941n();
        m35945j();
        m35946i();
        m35984a("fullscreen_endcard");
        m35901P();
        mo35838b("fullscreen_interstitial_ad");
        m35939p();
    }

    /* renamed from: P */
    private void m35901P() {
        if (this.f15708n != null) {
            this.f15708n.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTFullScreenVideoActivity.this.m35896W();
                    TTFullScreenVideoActivity.this.finish();
                }
            });
        }
        if (this.f15701g != null) {
            this.f15701g.setListener(new AbstractC4451b() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.3
                @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b
                /* renamed from: a */
                public void mo35546a(View view) {
                    if (C4557i.m35191b(TTFullScreenVideoActivity.this.f15717w)) {
                        TTFullScreenVideoActivity.this.m35896W();
                        TTFullScreenVideoActivity.this.finish();
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    if (!TextUtils.isEmpty(TTFullScreenVideoActivity.this.f15676ag)) {
                        hashMap.put("rit_scene", TTFullScreenVideoActivity.this.f15676ag);
                    }
                    hashMap.put("play_type", Integer.valueOf(C5438af.m32301a(TTFullScreenVideoActivity.this.f15623G, TTFullScreenVideoActivity.this.f15620D)));
                    TTFullScreenVideoActivity.this.m35982a("fullscreen_interstitial_ad", "feed_break", hashMap);
                    TTFullScreenVideoActivity.this.m35982a("fullscreen_interstitial_ad", EventConstants.SKIP, (Map<String, Object>) null);
                    TTFullScreenVideoActivity.this.f15701g.setShowSkip(false);
                    if (C5094b.m33091b()) {
                        TTFullScreenVideoActivity.this.m35889d("onSkippedVideo");
                    } else if (TTFullScreenVideoActivity.this.f15782aT != null) {
                        TTFullScreenVideoActivity.this.f15782aT.onSkippedVideo();
                    }
                    if (TTFullScreenVideoActivity.this.m35899S()) {
                        TTFullScreenVideoActivity.this.m36016G();
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b
                /* renamed from: b */
                public void mo35545b(View view) {
                    TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                    tTFullScreenVideoActivity.f15634R = !tTFullScreenVideoActivity.f15634R;
                    if (TTFullScreenVideoActivity.this.f15623G != null) {
                        TTFullScreenVideoActivity.this.f15623G.mo34287c(TTFullScreenVideoActivity.this.f15634R);
                    }
                    if (!C4557i.m35184c(TTFullScreenVideoActivity.this.f15717w) || TTFullScreenVideoActivity.this.f15639W.get()) {
                        if (C4557i.m35209a(TTFullScreenVideoActivity.this.f15717w)) {
                            TTFullScreenVideoActivity.this.f15691av.m33560a(TTFullScreenVideoActivity.this.f15634R, true);
                        }
                        TTFullScreenVideoActivity tTFullScreenVideoActivity2 = TTFullScreenVideoActivity.this;
                        tTFullScreenVideoActivity2.m35960c(tTFullScreenVideoActivity2.f15634R);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.AbstractC4451b
                /* renamed from: c */
                public void mo35544c(View view) {
                    TTFullScreenVideoActivity.this.m36014K();
                }
            });
        }
    }

    /* renamed from: Q */
    private void m35900Q() {
        if (this.f15701g != null) {
            this.f15701g.mo35549a((CharSequence) null, f15614b);
            this.f15701g.setSkipEnable(true);
        }
    }

    /* renamed from: V */
    private void m35897V() {
        if (!this.f15693ax) {
            this.f15693ax = true;
            if (C5094b.m33091b()) {
                m35889d("onAdClose");
                return;
            }
            TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.f15782aT;
            if (fullScreenVideoAdInteractionListener == null) {
                return;
            }
            fullScreenVideoAdInteractionListener.onAdClose();
        }
    }

    /* renamed from: W */
    public void m35896W() {
        HashMap hashMap = new HashMap();
        if (this.f15717w != null && this.f15717w.m35137w() && this.f15717w.m35175f() == 1) {
            hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(System.currentTimeMillis() - this.f15695az));
        }
        C4811e.m33864d(this.f15703i, this.f15717w, "fullscreen_interstitial_ad", "click_close", hashMap);
    }

    /* renamed from: a */
    private boolean m35895a(Bundle bundle) {
        if (C5094b.m33091b()) {
            Intent intent = getIntent();
            if (intent != null) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                this.f15719y = intent.getStringExtra("multi_process_meta_md5");
                if (stringExtra != null) {
                    try {
                        this.f15717w = C4493b.m35502a(new JSONObject(stringExtra));
                    } catch (Exception e) {
                        C5478q.m32108c("TTFullScreenVideoActivity", "initData MultiGlobalInfo throws ", e);
                    }
                }
            }
            if (this.f15717w != null && this.f15717w.m35243D() == 4) {
                this.f15624H = C3235d.m39089a(this.f15703i, this.f15717w, "fullscreen_interstitial_ad");
            }
        } else {
            this.f15717w = C4651t.m34621a().m34613c();
            this.f15782aT = C4651t.m34621a().m34611e();
            this.f15624H = C4651t.m34621a().m34610f();
            C4651t.m34621a().m34609g();
        }
        if (bundle != null) {
            if (this.f15782aT == null) {
                this.f15782aT = f15781aU;
                f15781aU = null;
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
                if (this.f15641Y.get()) {
                    if (this.f15701g != null) {
                        this.f15701g.setShowSkip(true);
                    }
                    m35900Q();
                }
            } catch (Throwable th) {
            }
            if (this.f15624H == null) {
                this.f15624H = C3235d.m39089a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO);
            }
        }
        if (this.f15717w == null) {
            C5478q.m32106e("TTFullScreenVideoActivity", "mMaterialMeta is null , no data to display ,the TTFullScreenVideoActivity finished !!");
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

    /* renamed from: c */
    private void m35891c(int i) {
        if (this.f15701g != null) {
            this.f15701g.mo35549a((CharSequence) null, new SpannableStringBuilder(String.format(C5486x.m32071a(C4600n.m34815a(), "tt_skip_ad_time_text"), Integer.valueOf(i))));
        }
    }

    /* renamed from: d */
    public void m35889d(final String str) {
        C5052e.m33157b(new AbstractRunnableC5055g("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTFullScreenVideoActivity.this.m35999a(1).executeFullVideoCallback(TTFullScreenVideoActivity.this.f15719y, str);
                } catch (Throwable th) {
                    C5478q.m32108c("TTFullScreenVideoActivity", "executeFullVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    /* renamed from: M */
    public void mo35904M() {
        if (this.f15717w == null) {
            finish();
            return;
        }
        if (this.f15717w.m35157l() != 0) {
            if (this.f15717w.m35157l() == 1) {
                setContentView(C5486x.m32065f(this, "tt_activity_full_video_newstyle"));
            } else if (this.f15717w.m35157l() == 3) {
                setContentView(C5486x.m32065f(this, "tt_activity_full_video_new_bar_3_style"));
            }
            C5478q.m32112b("report-5", "getPlayBarStyle=" + this.f15717w.m35157l());
        }
        setContentView(C5486x.m32065f(this, "tt_activity_full_video"));
        C5478q.m32112b("report-5", "getPlayBarStyle=" + this.f15717w.m35157l());
    }

    /* renamed from: R */
    public void mo34501R() {
        if (C5094b.m33091b()) {
            m35889d("onAdShow");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.f15782aT;
        if (fullScreenVideoAdInteractionListener == null) {
            return;
        }
        fullScreenVideoAdInteractionListener.onAdShow();
    }

    /* renamed from: S */
    public boolean m35899S() {
        return C4600n.m34805h().m34878k(String.valueOf(this.f15638V)) == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: T */
    public void mo34500T() {
        if (C5094b.m33091b()) {
            m35889d("onAdVideoBarClick");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.f15782aT;
        if (fullScreenVideoAdInteractionListener == null) {
            return;
        }
        fullScreenVideoAdInteractionListener.onAdVideoBarClick();
    }

    /* renamed from: U */
    public void m35898U() {
        if (C5094b.m33091b()) {
            m35889d("onVideoComplete");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.f15782aT;
        if (fullScreenVideoAdInteractionListener == null) {
            return;
        }
        fullScreenVideoAdInteractionListener.onVideoComplete();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: a */
    public void mo34498a(View view, int i, int i2, int i3, int i4) {
        if (C5094b.m33091b()) {
            m35889d("onAdVideoBarClick");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.f15782aT;
        if (fullScreenVideoAdInteractionListener == null) {
            return;
        }
        fullScreenVideoAdInteractionListener.onAdVideoBarClick();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    /* renamed from: a */
    void mo35819a(JSONObject jSONObject) {
        C4811e.m33878a(this.f15703i, this.f15717w, "fullscreen_interstitial_ad", "click", jSONObject);
    }

    /* renamed from: a */
    public boolean mo34499a(long j, boolean z) {
        HashMap hashMap;
        if (this.f15623G == null) {
            this.f15623G = new C4407b(this.f15703i, this.f15713s, this.f15717w);
        }
        String str = null;
        if (!TextUtils.isEmpty(this.f15676ag)) {
            hashMap = new HashMap();
            hashMap.put("rit_scene", this.f15676ag);
        } else {
            hashMap = null;
        }
        this.f15623G.mo34309a(hashMap);
        this.f15623G.mo34320a(new AbstractC4719c.AbstractC4720a() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34365a() {
                if (TTFullScreenVideoActivity.this.f15628L != null) {
                    TTFullScreenVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTFullScreenVideoActivity.this.m36013L();
                }
                C5478q.m32112b("TTFullScreenVideoActivity", "onTimeOut、、、、、、、、");
                if (TTFullScreenVideoActivity.this.m35899S()) {
                    TTFullScreenVideoActivity.this.m35936s();
                } else {
                    TTFullScreenVideoActivity.this.finish();
                }
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTFullScreenVideoActivity.this.m35981a("fullscreen_interstitial_ad", hashMap2);
                if (TTFullScreenVideoActivity.this.f15623G != null) {
                    TTFullScreenVideoActivity.this.f15623G.mo34257m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34364a(long j2, int i) {
                if (TTFullScreenVideoActivity.this.f15628L != null) {
                    TTFullScreenVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTFullScreenVideoActivity.this.m36013L();
                }
                TTFullScreenVideoActivity.this.m35898U();
                if (TTFullScreenVideoActivity.this.m35899S()) {
                    TTFullScreenVideoActivity.this.m35936s();
                } else {
                    TTFullScreenVideoActivity.this.finish();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: a */
            public void mo34363a(long j2, long j3) {
                if (TTFullScreenVideoActivity.this.f15628L != null) {
                    TTFullScreenVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTFullScreenVideoActivity.this.f15655aL) {
                        TTFullScreenVideoActivity.this.m36013L();
                    }
                }
                TTFullScreenVideoActivity.this.f15655aL = j2;
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                double J = tTFullScreenVideoActivity.m36015J();
                long j4 = j2 / 1000;
                tTFullScreenVideoActivity.f15635S = (int) (J - j4);
                TTFullScreenVideoActivity.this.m35890d((int) j4);
                if (TTFullScreenVideoActivity.this.f15635S >= 0 && TTFullScreenVideoActivity.this.f15701g != null) {
                    TTFullScreenVideoActivity.this.f15701g.setShowCountDown(true);
                    TTFullScreenVideoActivity.this.f15701g.mo35549a(String.valueOf(TTFullScreenVideoActivity.this.f15635S), (CharSequence) null);
                }
                if (TTFullScreenVideoActivity.this.f15635S <= 0) {
                    C5478q.m32112b("TTFullScreenVideoActivity", "onProgressUpdate、、、、、、、、");
                    if (TTFullScreenVideoActivity.this.m35899S()) {
                        TTFullScreenVideoActivity.this.m35936s();
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                    }
                }
                if ((TTFullScreenVideoActivity.this.f15672ac.get() || TTFullScreenVideoActivity.this.f15670aa.get()) && TTFullScreenVideoActivity.this.m35935t()) {
                    TTFullScreenVideoActivity.this.f15623G.mo34264i();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: b */
            public void mo34362b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
            /* renamed from: b */
            public void mo34361b(long j2, int i) {
                if (TTFullScreenVideoActivity.this.f15628L != null) {
                    TTFullScreenVideoActivity.this.f15628L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                TTFullScreenVideoActivity.this.m35953e(false);
                if (TTFullScreenVideoActivity.this.m35935t()) {
                    return;
                }
                TTFullScreenVideoActivity.this.m36013L();
                if (TTFullScreenVideoActivity.this.f15623G != null) {
                    TTFullScreenVideoActivity.this.f15623G.mo34257m();
                }
                C5478q.m32106e("TTFullScreenVideoActivity", "onError、、、、、、、、");
                if (!TTFullScreenVideoActivity.this.m35899S()) {
                    TTFullScreenVideoActivity.this.finish();
                    return;
                }
                TTFullScreenVideoActivity.this.m35936s();
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 1);
                TTFullScreenVideoActivity.this.m35981a("fullscreen_interstitial_ad", hashMap2);
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
        message.arg1 = 0;
        this.f15628L.sendMessageDelayed(message, 5000L);
        boolean mo34310a = this.f15623G.mo34310a(str2, this.f15717w.m35231P(), this.f15713s.getWidth(), this.f15713s.getHeight(), null, this.f15717w.m35228S(), j, this.f15634R);
        if (mo34310a && !z) {
            C4811e.m33877a(this.f15703i, this.f15717w, "fullscreen_interstitial_ad", hashMap);
            mo34501R();
        }
        return mo34310a;
    }

    /* renamed from: d */
    public void m35890d(int i) {
        int m34894e = C4600n.m34805h().m34894e(this.f15638V);
        f15780aS = m34894e;
        if (m34894e < 0) {
            f15780aS = 5;
        }
        if (!C4600n.m34805h().m34901c(String.valueOf(this.f15638V))) {
            if (i < f15780aS) {
                return;
            }
            if (!this.f15641Y.getAndSet(true) && this.f15701g != null) {
                this.f15701g.setShowSkip(true);
            }
            m35900Q();
            return;
        }
        if (!this.f15641Y.getAndSet(true) && this.f15701g != null) {
            this.f15701g.setShowSkip(true);
        }
        int i2 = f15780aS;
        if (i > i2) {
            m35900Q();
            return;
        }
        m35891c(i2 - i);
        if (this.f15701g == null) {
            return;
        }
        this.f15701g.setSkipEnable(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b
    /* renamed from: e */
    public void mo34497e(int i) {
        if (i == 10002) {
            m35898U();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        f15781aU = null;
    }

    @Override // android.app.Activity
    public void finish() {
        try {
            if (this.f15692aw && !TextUtils.isEmpty(this.f15633Q) && this.f15688as != 0) {
                C4927a.m33549a().m33542a(this.f15633Q, this.f15688as, this.f15689at);
            }
        } catch (Throwable th) {
        }
        try {
            if (this.f15692aw && !TextUtils.isEmpty(this.f15633Q)) {
                C4927a.m33549a().m33539b(this.f15633Q);
            }
        } catch (Throwable th2) {
        }
        m35897V();
        super.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m35903N();
        if (!m35895a(bundle)) {
            return;
        }
        mo35904M();
        mo35837e();
        m35902O();
        m35965c();
        m35931x();
        m36021B();
        if (this.f15717w != null) {
            this.f15638V = C5438af.m32278d(this.f15717w.m35228S());
        }
        m36000a();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m35897V();
        if (C5094b.m33091b()) {
            m35889d("recycleRes");
        }
        if (this.f15782aT != null) {
            this.f15782aT = null;
        }
        if (TextUtils.isEmpty(this.f15618B)) {
            C4408c.m35637a(C4600n.m34815a()).m35629b();
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
        f15781aU = this.f15782aT;
        try {
            bundle2.putString("material_meta", this.f15717w != null ? this.f15717w.m35196ag().toString() : null);
            bundle2.putString("multi_process_meta_md5", this.f15719y);
            bundle2.putLong("video_current", this.f15623G == null ? this.f15617A : this.f15623G.mo34256n());
            bundle2.putString("video_cache_url", this.f15618B);
            bundle2.putInt("orientation", this.f15619C);
            bundle2.putBoolean("is_mute", this.f15634R);
            bundle2.putString("rit_scene", this.f15676ag);
            bundle2.putBoolean("has_show_skip_btn", this.f15641Y.get());
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }
}
