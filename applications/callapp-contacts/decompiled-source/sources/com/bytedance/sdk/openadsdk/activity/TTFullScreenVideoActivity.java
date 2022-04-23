package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.component.reward.top.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.i.a;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.explorestack.iab.vast.VastError;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity.class */
public class TTFullScreenVideoActivity extends TTBaseVideoActivity {
    private static int aS = 5;
    private static TTFullScreenVideoAd.FullScreenVideoAdInteractionListener aU;
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener aT;

    private void N() {
        Intent intent = getIntent();
        if (intent != null) {
            this.z = intent.getBooleanExtra("show_download_bar", true);
            this.B = intent.getStringExtra("video_cache_url");
            this.C = intent.getIntExtra("orientation", 2);
            this.ag = intent.getStringExtra("rit_scene");
            this.aw = intent.getBooleanExtra("is_verity_playable", false);
        }
    }

    private void O() {
        if (this.w == null) {
            q.e("TTFullScreenVideoActivity", "mMaterialMeta is null , no data to display ,the TTFullScreenVideoActivity finished !!");
            finish();
            return;
        }
        if (this.w.w() && this.w.f() == 1) {
            a(getApplicationContext());
        }
        this.au = 8;
        this.V = af.d(this.w.S());
        this.T = this.w.T();
        this.M = this.w.P();
        this.N = this.w.S();
        this.S = (int) J();
        this.O = 5;
        this.R = n.h().b(this.V);
        this.P = 3505;
        m();
        a(this.R);
        l();
        r();
        k();
        n();
        j();
        i();
        a("fullscreen_endcard");
        P();
        b("fullscreen_interstitial_ad");
        p();
    }

    private void P() {
        if (this.n != null) {
            this.n.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTFullScreenVideoActivity.this.W();
                    TTFullScreenVideoActivity.this.finish();
                }
            });
        }
        if (this.g != null) {
            this.g.setListener(new b() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.3
                @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
                public void a(View view) {
                    if (i.b(TTFullScreenVideoActivity.this.w)) {
                        TTFullScreenVideoActivity.this.W();
                        TTFullScreenVideoActivity.this.finish();
                        return;
                    }
                    HashMap hashMap = new HashMap();
                    if (!TextUtils.isEmpty(TTFullScreenVideoActivity.this.ag)) {
                        hashMap.put("rit_scene", TTFullScreenVideoActivity.this.ag);
                    }
                    hashMap.put("play_type", Integer.valueOf(af.a(TTFullScreenVideoActivity.this.G, TTFullScreenVideoActivity.this.D)));
                    TTFullScreenVideoActivity.this.a("fullscreen_interstitial_ad", "feed_break", hashMap);
                    TTFullScreenVideoActivity.this.a("fullscreen_interstitial_ad", EventConstants.SKIP, (Map<String, Object>) null);
                    TTFullScreenVideoActivity.this.g.setShowSkip(false);
                    if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                        TTFullScreenVideoActivity.this.d("onSkippedVideo");
                    } else if (TTFullScreenVideoActivity.this.aT != null) {
                        TTFullScreenVideoActivity.this.aT.onSkippedVideo();
                    }
                    if (TTFullScreenVideoActivity.this.S()) {
                        TTFullScreenVideoActivity.this.G();
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
                public void b(View view) {
                    TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                    tTFullScreenVideoActivity.R = !tTFullScreenVideoActivity.R;
                    if (TTFullScreenVideoActivity.this.G != null) {
                        TTFullScreenVideoActivity.this.G.c(TTFullScreenVideoActivity.this.R);
                    }
                    if (!i.c(TTFullScreenVideoActivity.this.w) || TTFullScreenVideoActivity.this.W.get()) {
                        if (i.a(TTFullScreenVideoActivity.this.w)) {
                            TTFullScreenVideoActivity.this.av.a(TTFullScreenVideoActivity.this.R, true);
                        }
                        TTFullScreenVideoActivity tTFullScreenVideoActivity2 = TTFullScreenVideoActivity.this;
                        tTFullScreenVideoActivity2.c(tTFullScreenVideoActivity2.R);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.top.b
                public void c(View view) {
                    TTFullScreenVideoActivity.this.K();
                }
            });
        }
    }

    private void Q() {
        if (this.g != null) {
            this.g.a((CharSequence) null, f8419b);
            this.g.setSkipEnable(true);
        }
    }

    private void V() {
        if (!this.ax) {
            this.ax = true;
            if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                d("onAdClose");
                return;
            }
            TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.aT;
            if (fullScreenVideoAdInteractionListener != null) {
                fullScreenVideoAdInteractionListener.onAdClose();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void W() {
        HashMap hashMap = new HashMap();
        if (this.w != null && this.w.w() && this.w.f() == 1) {
            hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(System.currentTimeMillis() - this.az));
        }
        e.d(this.i, this.w, "fullscreen_interstitial_ad", "click_close", hashMap);
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
                        q.c("TTFullScreenVideoActivity", "initData MultiGlobalInfo throws ", e);
                    }
                }
            }
            if (this.w != null && this.w.D() == 4) {
                this.H = d.a(this.i, this.w, "fullscreen_interstitial_ad");
            }
        } else {
            this.w = t.a().c();
            this.aT = t.a().e();
            this.H = t.a().f();
            t.a().g();
        }
        if (bundle != null) {
            if (this.aT == null) {
                this.aT = aU;
                aU = null;
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
                if (this.Y.get()) {
                    if (this.g != null) {
                        this.g.setShowSkip(true);
                    }
                    Q();
                }
            } catch (Throwable th) {
            }
            if (this.H == null) {
                this.H = d.a(this.i, this.w, AdType.REWARDED_VIDEO);
            }
        }
        boolean z = false;
        if (this.w == null) {
            q.e("TTFullScreenVideoActivity", "mMaterialMeta is null , no data to display ,the TTFullScreenVideoActivity finished !!");
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

    private void c(int i) {
        if (this.g != null) {
            this.g.a((CharSequence) null, new SpannableStringBuilder(String.format(x.a(n.a(), "tt_skip_ad_time_text"), Integer.valueOf(i))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final String str) {
        com.bytedance.sdk.openadsdk.l.e.b(new g("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTFullScreenVideoActivity.this.a(1).executeFullVideoCallback(TTFullScreenVideoActivity.this.y, str);
                } catch (Throwable th) {
                    q.c("TTFullScreenVideoActivity", "executeFullVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M() {
        if (this.w == null) {
            finish();
            return;
        }
        if (this.w.l() != 0) {
            if (this.w.l() == 1) {
                setContentView(x.f(this, "tt_activity_full_video_newstyle"));
            } else if (this.w.l() == 3) {
                setContentView(x.f(this, "tt_activity_full_video_new_bar_3_style"));
            }
            q.b("report-5", "getPlayBarStyle=" + this.w.l());
        }
        setContentView(x.f(this, "tt_activity_full_video"));
        q.b("report-5", "getPlayBarStyle=" + this.w.l());
    }

    public void R() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onAdShow");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.aT;
        if (fullScreenVideoAdInteractionListener != null) {
            fullScreenVideoAdInteractionListener.onAdShow();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean S() {
        return n.h().k(String.valueOf(this.V)) == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void T() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onAdVideoBarClick");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.aT;
        if (fullScreenVideoAdInteractionListener != null) {
            fullScreenVideoAdInteractionListener.onAdVideoBarClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void U() {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onVideoComplete");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.aT;
        if (fullScreenVideoAdInteractionListener != null) {
            fullScreenVideoAdInteractionListener.onVideoComplete();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void a(View view, int i, int i2, int i3, int i4) {
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("onAdVideoBarClick");
            return;
        }
        TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener = this.aT;
        if (fullScreenVideoAdInteractionListener != null) {
            fullScreenVideoAdInteractionListener.onAdVideoBarClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    void a(JSONObject jSONObject) {
        e.a(this.i, this.w, "fullscreen_interstitial_ad", "click", jSONObject);
    }

    public boolean a(long j, boolean z) {
        HashMap hashMap;
        if (this.G == null) {
            this.G = new com.bytedance.sdk.openadsdk.component.reward.b(this.i, this.s, this.w);
        }
        String str = null;
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap = new HashMap();
            hashMap.put("rit_scene", this.ag);
        } else {
            hashMap = null;
        }
        this.G.a(hashMap);
        this.G.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a() {
                if (TTFullScreenVideoActivity.this.L != null) {
                    TTFullScreenVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTFullScreenVideoActivity.this.L();
                }
                q.b("TTFullScreenVideoActivity", "onTimeOut、、、、、、、、");
                if (TTFullScreenVideoActivity.this.S()) {
                    TTFullScreenVideoActivity.this.s();
                } else {
                    TTFullScreenVideoActivity.this.finish();
                }
                HashMap hashMap2 = new HashMap();
                hashMap2.put("vbtt_skip_type", 0);
                TTFullScreenVideoActivity.this.a("fullscreen_interstitial_ad", hashMap2);
                if (TTFullScreenVideoActivity.this.G != null) {
                    TTFullScreenVideoActivity.this.G.m();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, int i) {
                if (TTFullScreenVideoActivity.this.L != null) {
                    TTFullScreenVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    TTFullScreenVideoActivity.this.L();
                }
                TTFullScreenVideoActivity.this.U();
                if (TTFullScreenVideoActivity.this.S()) {
                    TTFullScreenVideoActivity.this.s();
                } else {
                    TTFullScreenVideoActivity.this.finish();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void a(long j2, long j3) {
                if (TTFullScreenVideoActivity.this.L != null) {
                    TTFullScreenVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                    if (j2 != TTFullScreenVideoActivity.this.aL) {
                        TTFullScreenVideoActivity.this.L();
                    }
                }
                TTFullScreenVideoActivity.this.aL = j2;
                TTFullScreenVideoActivity tTFullScreenVideoActivity = TTFullScreenVideoActivity.this;
                double J = tTFullScreenVideoActivity.J();
                long j4 = j2 / 1000;
                tTFullScreenVideoActivity.S = (int) (J - j4);
                TTFullScreenVideoActivity.this.d((int) j4);
                if (TTFullScreenVideoActivity.this.S >= 0 && TTFullScreenVideoActivity.this.g != null) {
                    TTFullScreenVideoActivity.this.g.setShowCountDown(true);
                    TTFullScreenVideoActivity.this.g.a(String.valueOf(TTFullScreenVideoActivity.this.S), (CharSequence) null);
                }
                if (TTFullScreenVideoActivity.this.S <= 0) {
                    q.b("TTFullScreenVideoActivity", "onProgressUpdate、、、、、、、、");
                    if (TTFullScreenVideoActivity.this.S()) {
                        TTFullScreenVideoActivity.this.s();
                    } else {
                        TTFullScreenVideoActivity.this.finish();
                    }
                }
                if ((TTFullScreenVideoActivity.this.ac.get() || TTFullScreenVideoActivity.this.aa.get()) && TTFullScreenVideoActivity.this.t()) {
                    TTFullScreenVideoActivity.this.G.i();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
            public void b(long j2, int i) {
                if (TTFullScreenVideoActivity.this.L != null) {
                    TTFullScreenVideoActivity.this.L.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
                }
                TTFullScreenVideoActivity.this.e(false);
                if (!TTFullScreenVideoActivity.this.t()) {
                    TTFullScreenVideoActivity.this.L();
                    if (TTFullScreenVideoActivity.this.G != null) {
                        TTFullScreenVideoActivity.this.G.m();
                    }
                    q.e("TTFullScreenVideoActivity", "onError、、、、、、、、");
                    if (TTFullScreenVideoActivity.this.S()) {
                        TTFullScreenVideoActivity.this.s();
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put("vbtt_skip_type", 1);
                        TTFullScreenVideoActivity.this.a("fullscreen_interstitial_ad", hashMap2);
                        return;
                    }
                    TTFullScreenVideoActivity.this.finish();
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
        message.arg1 = 0;
        this.L.sendMessageDelayed(message, 5000L);
        boolean a2 = this.G.a(str2, this.w.P(), this.s.getWidth(), this.s.getHeight(), null, this.w.S(), j, this.R);
        if (a2 && !z) {
            e.a(this.i, this.w, "fullscreen_interstitial_ad", hashMap);
            R();
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(int i) {
        int e = n.h().e(this.V);
        aS = e;
        if (e < 0) {
            aS = 5;
        }
        if (n.h().c(String.valueOf(this.V))) {
            if (!this.Y.getAndSet(true) && this.g != null) {
                this.g.setShowSkip(true);
            }
            int i2 = aS;
            if (i <= i2) {
                c(i2 - i);
                if (this.g != null) {
                    this.g.setSkipEnable(false);
                    return;
                }
                return;
            }
            Q();
        } else if (i >= aS) {
            if (!this.Y.getAndSet(true) && this.g != null) {
                this.g.setShowSkip(true);
            }
            Q();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.b
    public void e(int i) {
        if (i == 10002) {
            U();
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        aU = null;
    }

    @Override // android.app.Activity
    public void finish() {
        try {
            if (this.aw && !TextUtils.isEmpty(this.Q) && this.as != 0) {
                a.a().a(this.Q, this.as, this.at);
            }
        } catch (Throwable th) {
        }
        try {
            if (this.aw && !TextUtils.isEmpty(this.Q)) {
                a.a().b(this.Q);
            }
        } catch (Throwable th2) {
        }
        V();
        super.finish();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        N();
        if (a(bundle)) {
            M();
            e();
            O();
            c();
            x();
            B();
            if (this.w != null) {
                this.V = af.d(this.w.S());
            }
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        V();
        if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
            d("recycleRes");
        }
        if (this.aT != null) {
            this.aT = null;
        }
        if (TextUtils.isEmpty(this.B)) {
            com.bytedance.sdk.openadsdk.component.reward.c.a(n.a()).b();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        aU = this.aT;
        try {
            bundle2.putString("material_meta", this.w != null ? this.w.ag().toString() : null);
            bundle2.putString("multi_process_meta_md5", this.y);
            bundle2.putLong("video_current", this.G == null ? this.A : this.G.n());
            bundle2.putString("video_cache_url", this.B);
            bundle2.putInt("orientation", this.C);
            bundle2.putBoolean("is_mute", this.R);
            bundle2.putString("rit_scene", this.ag);
            bundle2.putBoolean("has_show_skip_btn", this.Y.get());
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }
}
