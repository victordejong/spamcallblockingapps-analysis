package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4493b;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.C4804z;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4716a;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4724e;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.C4725f;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.p161d.C4699d;
import com.bytedance.sdk.openadsdk.core.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4785a;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4797b;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4798c;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.p164d.C4805a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.p165e.C4863a;
import com.bytedance.sdk.openadsdk.p166f.AbstractC4869d;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.preload.falconx.p204a.C5300a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2Connection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity.class */
public class TTVideoLandingPageActivity extends Activity implements AbstractC4869d {

    /* renamed from: A */
    private ViewStub f15897A;

    /* renamed from: B */
    private Button f15898B;

    /* renamed from: C */
    private ProgressBar f15899C;

    /* renamed from: D */
    private AbstractC3234c f15900D;

    /* renamed from: F */
    private String f15902F;

    /* renamed from: K */
    private int f15907K;

    /* renamed from: L */
    private C5095a f15908L;

    /* renamed from: M */
    private C4822k f15909M;

    /* renamed from: P */
    private String f15912P;

    /* renamed from: Q */
    private C5300a f15913Q;

    /* renamed from: a */
    private SSWebView f15920a;

    /* renamed from: b */
    private ImageView f15921b;

    /* renamed from: c */
    private ImageView f15922c;

    /* renamed from: d */
    private TextView f15923d;

    /* renamed from: e */
    private Context f15924e;

    /* renamed from: f */
    private int f15925f;

    /* renamed from: g */
    private String f15926g;

    /* renamed from: h */
    private String f15927h;

    /* renamed from: i */
    private C4754w f15928i;

    /* renamed from: j */
    private int f15929j;

    /* renamed from: k */
    private RelativeLayout f15930k;

    /* renamed from: l */
    private FrameLayout f15931l;

    /* renamed from: n */
    private NativeVideoTsView f15933n;

    /* renamed from: o */
    private long f15934o;

    /* renamed from: p */
    private C4557i f15935p;

    /* renamed from: v */
    private RelativeLayout f15941v;

    /* renamed from: w */
    private TextView f15942w;

    /* renamed from: x */
    private RoundImageView f15943x;

    /* renamed from: y */
    private TextView f15944y;

    /* renamed from: z */
    private TextView f15945z;

    /* renamed from: m */
    private int f15932m = -1;

    /* renamed from: q */
    private int f15936q = 0;

    /* renamed from: r */
    private int f15937r = 0;

    /* renamed from: s */
    private int f15938s = 0;

    /* renamed from: t */
    private int f15939t = 0;

    /* renamed from: u */
    private String f15940u = "ダウンロード";

    /* renamed from: E */
    private boolean f15901E = false;

    /* renamed from: G */
    private boolean f15903G = false;

    /* renamed from: H */
    private boolean f15904H = true;

    /* renamed from: I */
    private boolean f15905I = false;

    /* renamed from: J */
    private String f15906J = null;

    /* renamed from: N */
    private AtomicBoolean f15910N = new AtomicBoolean(true);

    /* renamed from: O */
    private JSONArray f15911O = null;

    /* renamed from: R */
    private int f15914R = 0;

    /* renamed from: S */
    private int f15915S = 0;

    /* renamed from: T */
    private C4494a f15916T = null;

    /* renamed from: U */
    private final AbstractC4724e f15917U = new AbstractC4724e() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.7
        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4724e
        /* renamed from: a */
        public void mo34353a(boolean z) {
            TTVideoLandingPageActivity.this.f15901E = z;
            if (!TTVideoLandingPageActivity.this.isFinishing()) {
                if (!z) {
                    C5443ag.m32228a((View) TTVideoLandingPageActivity.this.f15920a, 0);
                    C5443ag.m32228a((View) TTVideoLandingPageActivity.this.f15930k, 0);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.f15931l.getLayoutParams();
                    marginLayoutParams.width = TTVideoLandingPageActivity.this.f15938s;
                    marginLayoutParams.height = TTVideoLandingPageActivity.this.f15939t;
                    marginLayoutParams.leftMargin = TTVideoLandingPageActivity.this.f15937r;
                    marginLayoutParams.topMargin = TTVideoLandingPageActivity.this.f15936q;
                    TTVideoLandingPageActivity.this.f15931l.setLayoutParams(marginLayoutParams);
                    return;
                }
                C5443ag.m32228a((View) TTVideoLandingPageActivity.this.f15920a, 8);
                C5443ag.m32228a((View) TTVideoLandingPageActivity.this.f15930k, 8);
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.f15931l.getLayoutParams();
                TTVideoLandingPageActivity.this.f15937r = marginLayoutParams2.leftMargin;
                TTVideoLandingPageActivity.this.f15936q = marginLayoutParams2.topMargin;
                TTVideoLandingPageActivity.this.f15938s = marginLayoutParams2.width;
                TTVideoLandingPageActivity.this.f15939t = marginLayoutParams2.height;
                marginLayoutParams2.width = -1;
                marginLayoutParams2.height = -1;
                marginLayoutParams2.topMargin = 0;
                marginLayoutParams2.leftMargin = 0;
                TTVideoLandingPageActivity.this.f15931l.setLayoutParams(marginLayoutParams2);
            }
        }
    };

    /* renamed from: V */
    private boolean f15918V = false;

    /* renamed from: W */
    private final BroadcastReceiver f15919W = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.8
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                int m32088c = C5482t.m32088c(TTVideoLandingPageActivity.this.getApplicationContext());
                if (TTVideoLandingPageActivity.this.f15907K == 0 && m32088c != 0 && TTVideoLandingPageActivity.this.f15920a != null && TTVideoLandingPageActivity.this.f15906J != null) {
                    TTVideoLandingPageActivity.this.f15920a.loadUrl(TTVideoLandingPageActivity.this.f15906J);
                }
                if (TTVideoLandingPageActivity.this.f15933n != null && TTVideoLandingPageActivity.this.f15933n.getNativeVideoController() != null && !TTVideoLandingPageActivity.this.f15903G && TTVideoLandingPageActivity.this.f15907K != m32088c) {
                    ((C4725f) TTVideoLandingPageActivity.this.f15933n.getNativeVideoController()).m34332a(context);
                }
                TTVideoLandingPageActivity.this.f15907K = m32088c;
            }
        }
    };

    /* renamed from: a */
    public void m35813a(int i) {
        if (this.f15922c == null || !m35776n()) {
            return;
        }
        C5443ag.m32228a((View) this.f15922c, i);
    }

    /* renamed from: a */
    private void m35809a(AbstractC4719c abstractC4719c) {
        C5478q.m32106e("mutilproces", "initFeedNaitiveControllerData-isComplete=" + abstractC4719c.mo34247w() + ",position=" + abstractC4719c.mo34256n() + ",totalPlayDuration=" + abstractC4719c.mo34254p() + ",duration=" + abstractC4719c.mo34251s());
        C5106a.m33045a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.TRUE);
        C5106a.m33045a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.TRUE);
        C5106a.m33045a("sp_multi_native_video_data", "key_native_video_complete", Boolean.valueOf(abstractC4719c.mo34247w()));
        C5106a.m33042a("sp_multi_native_video_data", "key_video_current_play_position", Long.valueOf(abstractC4719c.mo34256n()));
        C5106a.m33042a("sp_multi_native_video_data", "key_video_total_play_duration", Long.valueOf(abstractC4719c.mo34254p()));
        C5106a.m33042a("sp_multi_native_video_data", "key_video_duration", Long.valueOf(abstractC4719c.mo34251s()));
    }

    /* renamed from: a */
    private void m35808a(final String str) {
        Button button;
        if (!TextUtils.isEmpty(str) && (button = this.f15898B) != null) {
            button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    if (TTVideoLandingPageActivity.this.f15898B == null || TTVideoLandingPageActivity.this.isFinishing()) {
                        return;
                    }
                    TTVideoLandingPageActivity.this.f15898B.setText(str);
                }
            });
        }
    }

    /* renamed from: a */
    private void m35807a(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", z);
            this.f15928i.mo33701a("temai_back_event", jSONObject);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    private JSONArray m35803b(String str) {
        int i;
        JSONArray jSONArray = this.f15911O;
        if (jSONArray == null || jSONArray.length() <= 0) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            int indexOf = str.indexOf("?id=");
            int indexOf2 = str.indexOf("&");
            if (indexOf == -1 || indexOf2 == -1 || (i = indexOf + 4) >= indexOf2) {
                return null;
            }
            String substring = str.substring(i, indexOf2);
            if (TextUtils.isEmpty(substring)) {
                return null;
            }
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(substring);
            return jSONArray2;
        }
        return this.f15911O;
    }

    /* renamed from: c */
    static /* synthetic */ int m35801c(TTVideoLandingPageActivity tTVideoLandingPageActivity) {
        int i = tTVideoLandingPageActivity.f15914R;
        tTVideoLandingPageActivity.f15914R = i + 1;
        return i;
    }

    /* renamed from: c */
    private void m35802c() {
        C4557i c4557i = this.f15935p;
        if (c4557i == null || c4557i.m35243D() != 4) {
            return;
        }
        this.f15897A.setVisibility(0);
        Button button = (Button) findViewById(C5486x.m32066e(this, "tt_browser_download_btn"));
        this.f15898B = button;
        if (button == null) {
            return;
        }
        m35808a(m35799d());
        this.f15898B.setOnClickListener(this.f15916T);
        this.f15898B.setOnTouchListener(this.f15916T);
    }

    /* renamed from: d */
    private String m35799d() {
        C4557i c4557i = this.f15935p;
        if (c4557i != null && !TextUtils.isEmpty(c4557i.m35232O())) {
            this.f15940u = this.f15935p.m35232O();
        }
        return this.f15940u;
    }

    /* renamed from: e */
    static /* synthetic */ int m35795e(TTVideoLandingPageActivity tTVideoLandingPageActivity) {
        int i = tTVideoLandingPageActivity.f15915S;
        tTVideoLandingPageActivity.f15915S = i + 1;
        return i;
    }

    /* renamed from: e */
    private void m35796e() {
        this.f15899C = (ProgressBar) findViewById(C5486x.m32066e(this, "tt_browser_progress"));
        this.f15897A = (ViewStub) findViewById(C5486x.m32066e(this, "tt_browser_download_btn_stub"));
        this.f15920a = (SSWebView) findViewById(C5486x.m32066e(this, "tt_browser_webview"));
        ImageView imageView = (ImageView) findViewById(C5486x.m32066e(this, "tt_titlebar_back"));
        this.f15921b = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTVideoLandingPageActivity.this.f15920a != null) {
                        if (TTVideoLandingPageActivity.this.f15920a.canGoBack()) {
                            TTVideoLandingPageActivity.this.f15920a.goBack();
                        } else if (TTVideoLandingPageActivity.this.m35776n()) {
                            TTVideoLandingPageActivity.this.onBackPressed();
                        } else {
                            Map<String, Object> map = null;
                            if (TTVideoLandingPageActivity.this.f15933n != null) {
                                map = null;
                                if (TTVideoLandingPageActivity.this.f15933n.getNativeVideoController() != null) {
                                    map = C5438af.m32304a(TTVideoLandingPageActivity.this.f15935p, TTVideoLandingPageActivity.this.f15933n.getNativeVideoController().mo34255o(), TTVideoLandingPageActivity.this.f15933n.getNativeVideoController().mo34249u());
                                }
                            }
                            TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                            C4811e.m33880a(tTVideoLandingPageActivity, tTVideoLandingPageActivity.f15935p, "embeded_ad", "detail_back", TTVideoLandingPageActivity.this.m35790g(), TTVideoLandingPageActivity.this.m35788h(), map);
                            TTVideoLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(C5486x.m32066e(this, "tt_titlebar_close"));
        this.f15922c = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTVideoLandingPageActivity.this.f15933n != null) {
                        Map<String, Object> map = null;
                        if (TTVideoLandingPageActivity.this.f15933n.getNativeVideoController() != null) {
                            map = C5438af.m32304a(TTVideoLandingPageActivity.this.f15935p, TTVideoLandingPageActivity.this.f15933n.getNativeVideoController().mo34255o(), TTVideoLandingPageActivity.this.f15933n.getNativeVideoController().mo34249u());
                        }
                        TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                        C4811e.m33880a(tTVideoLandingPageActivity, tTVideoLandingPageActivity.f15935p, "embeded_ad", "detail_skip", TTVideoLandingPageActivity.this.m35790g(), TTVideoLandingPageActivity.this.m35788h(), map);
                    }
                    TTVideoLandingPageActivity.this.finish();
                }
            });
        }
        this.f15923d = (TextView) findViewById(C5486x.m32066e(this, "tt_titlebar_title"));
        this.f15931l = (FrameLayout) findViewById(C5486x.m32066e(this, "tt_native_video_container"));
        this.f15930k = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_native_video_titlebar"));
        this.f15941v = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_rl_download"));
        this.f15942w = (TextView) findViewById(C5486x.m32066e(this, "tt_video_btn_ad_image_tv"));
        this.f15944y = (TextView) findViewById(C5486x.m32066e(this, "tt_video_ad_name"));
        this.f15945z = (TextView) findViewById(C5486x.m32066e(this, "tt_video_ad_button"));
        this.f15943x = (RoundImageView) findViewById(C5486x.m32066e(this, "tt_video_ad_logo_image"));
        m35786i();
    }

    /* renamed from: f */
    private void m35793f() {
        if (this.f15932m == 5) {
            try {
                NativeVideoTsView nativeVideoTsView = new NativeVideoTsView(this.f15924e, this.f15935p, true);
                this.f15933n = nativeVideoTsView;
                if (nativeVideoTsView.getNativeVideoController() != null) {
                    this.f15933n.getNativeVideoController().mo34295b(false);
                }
                if (this.f15903G) {
                    this.f15931l.setVisibility(0);
                    this.f15931l.removeAllViews();
                    this.f15931l.addView(this.f15933n);
                    this.f15933n.m34389b(true);
                } else {
                    if (!this.f15905I) {
                        this.f15934o = 0L;
                    }
                    if (this.f15908L != null && this.f15933n.getNativeVideoController() != null) {
                        this.f15933n.getNativeVideoController().mo34304b(this.f15908L.f18365g);
                        this.f15933n.getNativeVideoController().mo34291c(this.f15908L.f18363e);
                    }
                    if (this.f15933n.m34393a(this.f15934o, this.f15904H, this.f15903G)) {
                        this.f15931l.setVisibility(0);
                        this.f15931l.removeAllViews();
                        this.f15931l.addView(this.f15933n);
                    }
                    if (this.f15933n.getNativeVideoController() != null) {
                        this.f15933n.getNativeVideoController().mo34295b(false);
                        this.f15933n.getNativeVideoController().mo34318a(this.f15917U);
                        this.f15933n.setIsQuiet(C4600n.m34805h().m34914a(C5438af.m32278d(this.f15935p.m35228S())));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (C5482t.m32088c(this) != 0) {
                return;
            }
            try {
                Toast.makeText(this, C5486x.m32069b(this, "tt_no_network"), 0).show();
            } catch (Throwable th) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: g */
    public long m35790g() {
        NativeVideoTsView nativeVideoTsView = this.f15933n;
        return (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) ? (char) 0 : this.f15933n.getNativeVideoController().mo34254p();
    }

    /* renamed from: h */
    public int m35788h() {
        NativeVideoTsView nativeVideoTsView = this.f15933n;
        return (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) ? 0 : this.f15933n.getNativeVideoController().mo34252r();
    }

    /* renamed from: i */
    private void m35786i() {
        C4557i c4557i = this.f15935p;
        if (c4557i == null || c4557i.m35243D() != 4) {
            return;
        }
        C5443ag.m32228a((View) this.f15941v, 0);
        String m35234M = !TextUtils.isEmpty(this.f15935p.m35234M()) ? this.f15935p.m35234M() : !TextUtils.isEmpty(this.f15935p.m35233N()) ? this.f15935p.m35233N() : !TextUtils.isEmpty(this.f15935p.m35244C()) ? this.f15935p.m35244C() : "";
        if (this.f15935p.m35242E() != null && this.f15935p.m35242E().m35254a() != null) {
            C5443ag.m32228a((View) this.f15943x, 0);
            C5443ag.m32228a((View) this.f15942w, 4);
            C4959e.m33434c().m33439a(this.f15935p.m35242E().m35254a(), this.f15943x);
        } else if (!TextUtils.isEmpty(m35234M)) {
            C5443ag.m32228a((View) this.f15943x, 4);
            C5443ag.m32228a((View) this.f15942w, 0);
            this.f15942w.setText(m35234M.substring(0, 1));
        }
        if (!TextUtils.isEmpty(this.f15935p.m35232O())) {
            this.f15945z.setText(this.f15935p.m35232O());
        }
        if (!TextUtils.isEmpty(m35234M)) {
            this.f15944y.setText(m35234M);
        }
        C5443ag.m32228a((View) this.f15944y, 0);
        C5443ag.m32228a((View) this.f15945z, 0);
    }

    /* renamed from: j */
    private void m35784j() {
        C4557i c4557i = this.f15935p;
        if (c4557i == null || c4557i.m35243D() != 4) {
            return;
        }
        this.f15900D = C3235d.m39089a(this, this.f15935p, this.f15902F);
        C4494a c4494a = new C4494a(this, this.f15935p, this.f15902F, this.f15929j);
        this.f15916T = c4494a;
        c4494a.m35490a(false);
        this.f15916T.m35486c(true);
        this.f15945z.setOnClickListener(this.f15916T);
        this.f15945z.setOnTouchListener(this.f15916T);
        this.f15916T.m35480a(this.f15900D);
    }

    /* renamed from: k */
    private void m35782k() {
        C4754w c4754w = new C4754w(this);
        this.f15928i = c4754w;
        c4754w.m34128b(this.f15920a).m34141a(this.f15926g).m34127b(this.f15927h).m34131b(this.f15929j).m34158a(this.f15935p).m34162a(this.f15935p.m35135y()).m34149a(this.f15920a).m34121c(C5438af.m32270f(this.f15935p));
    }

    /* renamed from: l */
    private void m35780l() {
        NativeVideoTsView nativeVideoTsView = this.f15933n;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return;
        }
        this.f15933n.setIsQuiet(false);
        C4699d mo34249u = this.f15933n.getNativeVideoController().mo34249u();
        if (mo34249u != null && mo34249u.m34421i()) {
            this.f15933n.m34393a(this.f15934o, this.f15904H, this.f15903G);
        } else if ((mo34249u != null || !this.f15918V) && (mo34249u == null || !mo34249u.m34420j())) {
        } else {
            this.f15918V = false;
            this.f15933n.m34393a(this.f15934o, this.f15904H, this.f15903G);
        }
    }

    /* renamed from: m */
    private void m35778m() {
        NativeVideoTsView nativeVideoTsView = this.f15933n;
        if (nativeVideoTsView != null) {
            C4699d mo34249u = nativeVideoTsView.getNativeVideoController().mo34249u();
            if (mo34249u != null && mo34249u.m34422h()) {
                this.f15918V = true;
                ((C4725f) this.f15933n.getNativeVideoController()).m34278e(this.f15933n.getNativeVideoController().mo34254p());
                this.f15933n.getNativeVideoController().mo34308a(false);
            } else if (mo34249u == null || mo34249u.m34418l()) {
            } else {
                ((C4725f) this.f15933n.getNativeVideoController()).m34278e(this.f15933n.getNativeVideoController().mo34254p());
                this.f15933n.getNativeVideoController().mo34308a(false);
            }
        }
    }

    /* renamed from: n */
    public boolean m35776n() {
        return !TextUtils.isEmpty(this.f15906J) && this.f15906J.contains("__luban_sdk");
    }

    /* renamed from: o */
    private void m35774o() {
        if (this.f15935p == null) {
            return;
        }
        JSONArray m35803b = m35803b(this.f15906J);
        int m32278d = C5438af.m32278d(this.f15927h);
        int m32284c = C5438af.m32284c(this.f15927h);
        AbstractC4635o<C4805a> m34807f = C4600n.m34807f();
        if (m35803b == null || m34807f == null || m32278d <= 0 || m32284c <= 0) {
            return;
        }
        C4559j c4559j = new C4559j();
        c4559j.f16592d = m35803b;
        AdSlot m35151n = this.f15935p.m35151n();
        if (m35151n == null) {
            return;
        }
        m35151n.setAdCount(6);
        m34807f.mo34679a(m35151n, c4559j, m32284c, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.9
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                TTVideoLandingPageActivity.this.m35813a(0);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a != null) {
                    try {
                        TTVideoLandingPageActivity.this.f15910N.set(false);
                        TTVideoLandingPageActivity.this.f15928i.m34125b(new JSONObject(c4545a.m35340c()));
                    } catch (Exception e) {
                        TTVideoLandingPageActivity.this.m35813a(0);
                    }
                }
            }
        });
    }

    /* renamed from: a */
    protected void m35814a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            this.f15924e.registerReceiver(this.f15919W, intentFilter);
        } catch (Exception e) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p166f.AbstractC4869d
    /* renamed from: a */
    public void mo33693a(boolean z, JSONArray jSONArray) {
        if (!z || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.f15911O = jSONArray;
        m35774o();
    }

    /* renamed from: b */
    protected void m35806b() {
        try {
            this.f15924e.unregisterReceiver(this.f15919W);
        } catch (Exception e) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        NativeVideoTsView nativeVideoTsView;
        if (this.f15901E && (nativeVideoTsView = this.f15933n) != null && nativeVideoTsView.getNativeVideoController() != null) {
            ((AbstractC4716a) this.f15933n.getNativeVideoController()).mo34277e(null, null);
            this.f15901E = false;
        } else if (!m35776n() || this.f15910N.getAndSet(true)) {
            super.onBackPressed();
        } else {
            m35807a(true);
            m35813a(0);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m35802c();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            getWindow().addFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        } catch (Throwable th) {
        }
        try {
            C4600n.m34814a(this);
        } catch (Throwable th2) {
        }
        this.f15907K = C5482t.m32088c(getApplicationContext());
        setContentView(C5486x.m32065f(this, "tt_activity_videolandingpage"));
        this.f15913Q = C4863a.m33717a().m33711b();
        this.f15924e = this;
        Intent intent = getIntent();
        this.f15925f = intent.getIntExtra("sdk_version", 1);
        this.f15926g = intent.getStringExtra("adid");
        this.f15927h = intent.getStringExtra("log_extra");
        this.f15929j = intent.getIntExtra(Payload.SOURCE, -1);
        this.f15906J = intent.getStringExtra("url");
        String stringExtra = intent.getStringExtra("web_title");
        this.f15902F = intent.getStringExtra("event_tag");
        this.f15912P = intent.getStringExtra("gecko_id");
        this.f15905I = intent.getBooleanExtra("video_is_auto_play", true);
        if (bundle != null && bundle.getLong("video_play_position") > 0) {
            this.f15934o = bundle.getLong("video_play_position", 0L);
        }
        String stringExtra2 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_DATA);
        if (C5094b.m33091b()) {
            String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
            if (stringExtra3 != null) {
                try {
                    this.f15935p = C4493b.m35502a(new JSONObject(stringExtra3));
                } catch (Exception e) {
                }
            }
            C4557i c4557i = this.f15935p;
            if (c4557i != null) {
                this.f15932m = c4557i.m35227T();
            }
        } else {
            C4557i m34613c = C4651t.m34621a().m34613c();
            this.f15935p = m34613c;
            if (m34613c != null) {
                this.f15932m = m34613c.m35227T();
            }
            C4651t.m34621a().m34609g();
        }
        if (this.f15935p == null) {
            finish();
            return;
        }
        if (stringExtra2 != null) {
            try {
                this.f15908L = C5095a.m33088a(new JSONObject(stringExtra2));
            } catch (Exception e2) {
            }
            C5095a c5095a = this.f15908L;
            if (c5095a != null) {
                this.f15934o = c5095a.f18365g;
                this.f15903G = this.f15908L.f18359a;
            }
        }
        if (bundle != null) {
            String string = bundle.getString("material_meta");
            if (this.f15935p == null) {
                try {
                    this.f15935p = C4493b.m35502a(new JSONObject(string));
                } catch (Throwable th3) {
                }
            }
            long j = bundle.getLong("video_play_position");
            boolean z = bundle.getBoolean("is_complete");
            if (j > 0) {
                this.f15934o = j;
            }
            if (z) {
                this.f15903G = z;
            }
        }
        m35796e();
        m35784j();
        m35782k();
        m35813a(4);
        C4785a.m33991a(this.f15924e).m33988a(Build.VERSION.SDK_INT >= 16).m33986b(false).m33989a(this.f15920a);
        this.f15909M = new C4822k(this, this.f15935p, this.f15920a).m33815a(true);
        this.f15920a.setWebViewClient(new C4798c(this.f15924e, this.f15928i, this.f15926g, this.f15909M) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTVideoLandingPageActivity.this.f15899C == null || TTVideoLandingPageActivity.this.isFinishing()) {
                        return;
                    }
                    TTVideoLandingPageActivity.this.f15899C.setVisibility(8);
                } catch (Throwable th4) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TextUtils.isEmpty(TTVideoLandingPageActivity.this.f15912P)) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTVideoLandingPageActivity.m35801c(TTVideoLandingPageActivity.this);
                    WebResourceResponse m33715a = C4863a.m33717a().m33715a(TTVideoLandingPageActivity.this.f15913Q, TTVideoLandingPageActivity.this.f15912P, str);
                    if (m33715a == null) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTVideoLandingPageActivity.m35795e(TTVideoLandingPageActivity.this);
                    return m33715a;
                } catch (Throwable th4) {
                    Log.e("TTVideoLandingPage", "shouldInterceptRequest url error", th4);
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        this.f15920a.getSettings().setUserAgentString(C5472n.m32126a(this.f15920a, this.f15925f));
        if (Build.VERSION.SDK_INT >= 21) {
            this.f15920a.getSettings().setMixedContentMode(0);
        }
        C4811e.m33884a(this.f15924e, this.f15935p);
        this.f15920a.loadUrl(this.f15906J);
        this.f15920a.setWebChromeClient(new C4797b(this.f15928i, this.f15909M) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4797b, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTVideoLandingPageActivity.this.f15899C == null || TTVideoLandingPageActivity.this.isFinishing()) {
                    return;
                }
                if (i != 100 || !TTVideoLandingPageActivity.this.f15899C.isShown()) {
                    TTVideoLandingPageActivity.this.f15899C.setProgress(i);
                } else {
                    TTVideoLandingPageActivity.this.f15899C.setVisibility(8);
                }
            }
        });
        this.f15920a.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.3
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                if (TTVideoLandingPageActivity.this.f15900D != null) {
                    TTVideoLandingPageActivity.this.f15900D.mo39091e();
                }
            }
        });
        TextView textView = this.f15923d;
        if (textView != null) {
            String str = stringExtra;
            if (TextUtils.isEmpty(stringExtra)) {
                str = C5486x.m32071a(this, "tt_web_title_default");
            }
            textView.setText(str);
        }
        m35814a();
        m35793f();
        m35802c();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        m35806b();
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable th) {
        }
        C4804z.m33900a(this.f15924e, this.f15920a);
        C4804z.m33899a(this.f15920a);
        this.f15920a = null;
        C4754w c4754w = this.f15928i;
        if (c4754w != null) {
            c4754w.m34105h();
        }
        NativeVideoTsView nativeVideoTsView = this.f15933n;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            this.f15933n.getNativeVideoController().mo34257m();
        }
        this.f15933n = null;
        this.f15935p = null;
        C4822k c4822k = this.f15909M;
        if (c4822k != null) {
            c4822k.m33811d();
        }
        if (!TextUtils.isEmpty(this.f15912P)) {
            C4811e.C4812a.m33859a(this.f15915S, this.f15914R, this.f15935p);
        }
        C4863a.m33717a().m33716a(this.f15913Q);
    }

    @Override // android.app.Activity
    protected void onPause() {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2;
        super.onPause();
        C4754w c4754w = this.f15928i;
        if (c4754w != null) {
            c4754w.m34108g();
        }
        m35778m();
        if (this.f15903G || ((nativeVideoTsView2 = this.f15933n) != null && nativeVideoTsView2.getNativeVideoController() != null && this.f15933n.getNativeVideoController().mo34247w())) {
            this.f15903G = true;
            C5106a.m33045a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.TRUE);
            C5106a.m33045a("sp_multi_native_video_data", "key_native_video_complete", Boolean.TRUE);
            C5106a.m33045a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.TRUE);
        }
        if (this.f15903G || (nativeVideoTsView = this.f15933n) == null || nativeVideoTsView.getNativeVideoController() == null) {
            return;
        }
        m35809a(this.f15933n.getNativeVideoController());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f15904H = false;
        C4754w c4754w = this.f15928i;
        if (c4754w != null) {
            c4754w.m34111f();
        }
        m35780l();
        C4822k c4822k = this.f15909M;
        if (c4822k != null) {
            c4822k.m33814b();
        }
        m35774o();
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        C4557i c4557i = this.f15935p;
        bundle2.putString("material_meta", c4557i != null ? c4557i.m35196ag().toString() : null);
        bundle2.putLong("video_play_position", this.f15934o);
        bundle2.putBoolean("is_complete", this.f15903G);
        ?? r0 = this.f15934o;
        NativeVideoTsView nativeVideoTsView = this.f15933n;
        char c = r0;
        if (nativeVideoTsView != null) {
            c = r0;
            if (nativeVideoTsView.getNativeVideoController() != null) {
                c = this.f15933n.getNativeVideoController().mo34256n();
            }
        }
        bundle2.putLong("video_play_position", c);
        super.onSaveInstanceState(bundle2);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        C4822k c4822k = this.f15909M;
        if (c4822k != null) {
            c4822k.m33812c();
        }
    }
}
