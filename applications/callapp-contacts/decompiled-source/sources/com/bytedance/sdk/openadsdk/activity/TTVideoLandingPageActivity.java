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
import com.a.a.a.a.a.c;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.e;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.f;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.core.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.f.d;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2Connection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTVideoLandingPageActivity.class */
public class TTVideoLandingPageActivity extends Activity implements d {
    private ViewStub A;
    private Button B;
    private ProgressBar C;
    private c D;
    private String F;
    private int K;
    private a L;
    private k M;
    private String P;
    private com.bytedance.sdk.openadsdk.preload.falconx.a.a Q;

    /* renamed from: a  reason: collision with root package name */
    private SSWebView f8513a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f8514b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f8515c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f8516d;
    private Context e;
    private int f;
    private String g;
    private String h;
    private w i;
    private int j;
    private RelativeLayout k;
    private FrameLayout l;
    private NativeVideoTsView n;
    private long o;
    private i p;
    private RelativeLayout v;
    private TextView w;
    private RoundImageView x;
    private TextView y;
    private TextView z;
    private int m = -1;
    private int q = 0;
    private int r = 0;
    private int s = 0;
    private int t = 0;
    private String u = "ダウンロード";
    private boolean E = false;
    private boolean G = false;
    private boolean H = true;
    private boolean I = false;
    private String J = null;
    private AtomicBoolean N = new AtomicBoolean(true);
    private JSONArray O = null;
    private int R = 0;
    private int S = 0;
    private com.bytedance.sdk.openadsdk.core.b.a T = null;
    private final e U = new e() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.7
        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.e
        public void a(boolean z) {
            TTVideoLandingPageActivity.this.E = z;
            if (TTVideoLandingPageActivity.this.isFinishing()) {
                return;
            }
            if (z) {
                ag.a((View) TTVideoLandingPageActivity.this.f8513a, 8);
                ag.a((View) TTVideoLandingPageActivity.this.k, 8);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.l.getLayoutParams();
                TTVideoLandingPageActivity.this.r = marginLayoutParams.leftMargin;
                TTVideoLandingPageActivity.this.q = marginLayoutParams.topMargin;
                TTVideoLandingPageActivity.this.s = marginLayoutParams.width;
                TTVideoLandingPageActivity.this.t = marginLayoutParams.height;
                marginLayoutParams.width = -1;
                marginLayoutParams.height = -1;
                marginLayoutParams.topMargin = 0;
                marginLayoutParams.leftMargin = 0;
                TTVideoLandingPageActivity.this.l.setLayoutParams(marginLayoutParams);
                return;
            }
            ag.a((View) TTVideoLandingPageActivity.this.f8513a, 0);
            ag.a((View) TTVideoLandingPageActivity.this.k, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoLandingPageActivity.this.l.getLayoutParams();
            marginLayoutParams2.width = TTVideoLandingPageActivity.this.s;
            marginLayoutParams2.height = TTVideoLandingPageActivity.this.t;
            marginLayoutParams2.leftMargin = TTVideoLandingPageActivity.this.r;
            marginLayoutParams2.topMargin = TTVideoLandingPageActivity.this.q;
            TTVideoLandingPageActivity.this.l.setLayoutParams(marginLayoutParams2);
        }
    };
    private boolean V = false;
    private final BroadcastReceiver W = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.8
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                int c2 = t.c(TTVideoLandingPageActivity.this.getApplicationContext());
                if (!(TTVideoLandingPageActivity.this.K != 0 || c2 == 0 || TTVideoLandingPageActivity.this.f8513a == null || TTVideoLandingPageActivity.this.J == null)) {
                    TTVideoLandingPageActivity.this.f8513a.loadUrl(TTVideoLandingPageActivity.this.J);
                }
                if (!(TTVideoLandingPageActivity.this.n == null || TTVideoLandingPageActivity.this.n.getNativeVideoController() == null || TTVideoLandingPageActivity.this.G || TTVideoLandingPageActivity.this.K == c2)) {
                    ((f) TTVideoLandingPageActivity.this.n.getNativeVideoController()).a(context);
                }
                TTVideoLandingPageActivity.this.K = c2;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.f8515c != null && n()) {
            ag.a((View) this.f8515c, i);
        }
    }

    private void a(com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar) {
        q.e("mutilproces", "initFeedNaitiveControllerData-isComplete=" + cVar.w() + ",position=" + cVar.n() + ",totalPlayDuration=" + cVar.p() + ",duration=" + cVar.s());
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.TRUE);
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.TRUE);
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_native_video_complete", Boolean.valueOf(cVar.w()));
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_current_play_position", Long.valueOf(cVar.n()));
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_total_play_duration", Long.valueOf(cVar.p()));
        com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_duration", Long.valueOf(cVar.s()));
    }

    private void a(final String str) {
        Button button;
        if (!TextUtils.isEmpty(str) && (button = this.B) != null) {
            button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    if (TTVideoLandingPageActivity.this.B != null && !TTVideoLandingPageActivity.this.isFinishing()) {
                        TTVideoLandingPageActivity.this.B.setText(str);
                    }
                }
            });
        }
    }

    private void a(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", z);
            this.i.a("temai_back_event", jSONObject);
        } catch (Exception e) {
        }
    }

    private JSONArray b(String str) {
        int i;
        JSONArray jSONArray = this.O;
        if (jSONArray != null && jSONArray.length() > 0) {
            return this.O;
        }
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

    static /* synthetic */ int c(TTVideoLandingPageActivity tTVideoLandingPageActivity) {
        int i = tTVideoLandingPageActivity.R;
        tTVideoLandingPageActivity.R = i + 1;
        return i;
    }

    private void c() {
        i iVar = this.p;
        if (iVar != null && iVar.D() == 4) {
            this.A.setVisibility(0);
            Button button = (Button) findViewById(x.e(this, "tt_browser_download_btn"));
            this.B = button;
            if (button != null) {
                a(d());
                this.B.setOnClickListener(this.T);
                this.B.setOnTouchListener(this.T);
            }
        }
    }

    private String d() {
        i iVar = this.p;
        if (iVar != null && !TextUtils.isEmpty(iVar.O())) {
            this.u = this.p.O();
        }
        return this.u;
    }

    static /* synthetic */ int e(TTVideoLandingPageActivity tTVideoLandingPageActivity) {
        int i = tTVideoLandingPageActivity.S;
        tTVideoLandingPageActivity.S = i + 1;
        return i;
    }

    private void e() {
        this.C = (ProgressBar) findViewById(x.e(this, "tt_browser_progress"));
        this.A = (ViewStub) findViewById(x.e(this, "tt_browser_download_btn_stub"));
        this.f8513a = (SSWebView) findViewById(x.e(this, "tt_browser_webview"));
        ImageView imageView = (ImageView) findViewById(x.e(this, "tt_titlebar_back"));
        this.f8514b = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTVideoLandingPageActivity.this.f8513a == null) {
                        return;
                    }
                    if (TTVideoLandingPageActivity.this.f8513a.canGoBack()) {
                        TTVideoLandingPageActivity.this.f8513a.goBack();
                    } else if (TTVideoLandingPageActivity.this.n()) {
                        TTVideoLandingPageActivity.this.onBackPressed();
                    } else {
                        Map<String, Object> map = null;
                        if (TTVideoLandingPageActivity.this.n != null) {
                            map = null;
                            if (TTVideoLandingPageActivity.this.n.getNativeVideoController() != null) {
                                map = af.a(TTVideoLandingPageActivity.this.p, TTVideoLandingPageActivity.this.n.getNativeVideoController().o(), TTVideoLandingPageActivity.this.n.getNativeVideoController().u());
                            }
                        }
                        TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.d.e.a(tTVideoLandingPageActivity, tTVideoLandingPageActivity.p, "embeded_ad", "detail_back", TTVideoLandingPageActivity.this.g(), TTVideoLandingPageActivity.this.h(), map);
                        TTVideoLandingPageActivity.this.finish();
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(x.e(this, "tt_titlebar_close"));
        this.f8515c = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTVideoLandingPageActivity.this.n != null) {
                        Map<String, Object> map = null;
                        if (TTVideoLandingPageActivity.this.n.getNativeVideoController() != null) {
                            map = af.a(TTVideoLandingPageActivity.this.p, TTVideoLandingPageActivity.this.n.getNativeVideoController().o(), TTVideoLandingPageActivity.this.n.getNativeVideoController().u());
                        }
                        TTVideoLandingPageActivity tTVideoLandingPageActivity = TTVideoLandingPageActivity.this;
                        com.bytedance.sdk.openadsdk.d.e.a(tTVideoLandingPageActivity, tTVideoLandingPageActivity.p, "embeded_ad", "detail_skip", TTVideoLandingPageActivity.this.g(), TTVideoLandingPageActivity.this.h(), map);
                    }
                    TTVideoLandingPageActivity.this.finish();
                }
            });
        }
        this.f8516d = (TextView) findViewById(x.e(this, "tt_titlebar_title"));
        this.l = (FrameLayout) findViewById(x.e(this, "tt_native_video_container"));
        this.k = (RelativeLayout) findViewById(x.e(this, "tt_native_video_titlebar"));
        this.v = (RelativeLayout) findViewById(x.e(this, "tt_rl_download"));
        this.w = (TextView) findViewById(x.e(this, "tt_video_btn_ad_image_tv"));
        this.y = (TextView) findViewById(x.e(this, "tt_video_ad_name"));
        this.z = (TextView) findViewById(x.e(this, "tt_video_ad_button"));
        this.x = (RoundImageView) findViewById(x.e(this, "tt_video_ad_logo_image"));
        i();
    }

    private void f() {
        if (this.m == 5) {
            try {
                NativeVideoTsView nativeVideoTsView = new NativeVideoTsView(this.e, this.p, true);
                this.n = nativeVideoTsView;
                if (nativeVideoTsView.getNativeVideoController() != null) {
                    this.n.getNativeVideoController().b(false);
                }
                if (this.G) {
                    this.l.setVisibility(0);
                    this.l.removeAllViews();
                    this.l.addView(this.n);
                    this.n.b(true);
                } else {
                    if (!this.I) {
                        this.o = 0L;
                    }
                    if (!(this.L == null || this.n.getNativeVideoController() == null)) {
                        this.n.getNativeVideoController().b(this.L.g);
                        this.n.getNativeVideoController().c(this.L.e);
                    }
                    if (this.n.a(this.o, this.H, this.G)) {
                        this.l.setVisibility(0);
                        this.l.removeAllViews();
                        this.l.addView(this.n);
                    }
                    if (this.n.getNativeVideoController() != null) {
                        this.n.getNativeVideoController().b(false);
                        this.n.getNativeVideoController().a(this.U);
                        this.n.setIsQuiet(n.h().a(af.d(this.p.S())));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (t.c(this) == 0) {
                try {
                    Toast.makeText(this, x.b(this, "tt_no_network"), 0).show();
                } catch (Throwable th) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long g() {
        NativeVideoTsView nativeVideoTsView = this.n;
        return (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) ? 0L : this.n.getNativeVideoController().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int h() {
        NativeVideoTsView nativeVideoTsView = this.n;
        return (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) ? 0 : this.n.getNativeVideoController().r();
    }

    private void i() {
        i iVar = this.p;
        if (iVar != null && iVar.D() == 4) {
            ag.a((View) this.v, 0);
            String M = !TextUtils.isEmpty(this.p.M()) ? this.p.M() : !TextUtils.isEmpty(this.p.N()) ? this.p.N() : !TextUtils.isEmpty(this.p.C()) ? this.p.C() : "";
            if (this.p.E() != null && this.p.E().a() != null) {
                ag.a((View) this.x, 0);
                ag.a((View) this.w, 4);
                com.bytedance.sdk.openadsdk.j.e.c().a(this.p.E().a(), this.x);
            } else if (!TextUtils.isEmpty(M)) {
                ag.a((View) this.x, 4);
                ag.a((View) this.w, 0);
                this.w.setText(M.substring(0, 1));
            }
            if (!TextUtils.isEmpty(this.p.O())) {
                this.z.setText(this.p.O());
            }
            if (!TextUtils.isEmpty(M)) {
                this.y.setText(M);
            }
            ag.a((View) this.y, 0);
            ag.a((View) this.z, 0);
        }
    }

    private void j() {
        i iVar = this.p;
        if (iVar != null && iVar.D() == 4) {
            this.D = com.a.a.a.a.a.d.a(this, this.p, this.F);
            com.bytedance.sdk.openadsdk.core.b.a aVar = new com.bytedance.sdk.openadsdk.core.b.a(this, this.p, this.F, this.j);
            this.T = aVar;
            aVar.a(false);
            this.T.c(true);
            this.z.setOnClickListener(this.T);
            this.z.setOnTouchListener(this.T);
            this.T.a(this.D);
        }
    }

    private void k() {
        w wVar = new w(this);
        this.i = wVar;
        wVar.b(this.f8513a).a(this.g).b(this.h).b(this.j).a(this.p).a(this.p.y()).a(this.f8513a).c(af.f(this.p));
    }

    private void l() {
        NativeVideoTsView nativeVideoTsView = this.n;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            this.n.setIsQuiet(false);
            com.bytedance.sdk.openadsdk.core.video.d.d u = this.n.getNativeVideoController().u();
            if (u != null && u.i()) {
                this.n.a(this.o, this.H, this.G);
            } else if ((u == null && this.V) || (u != null && u.j())) {
                this.V = false;
                this.n.a(this.o, this.H, this.G);
            }
        }
    }

    private void m() {
        NativeVideoTsView nativeVideoTsView = this.n;
        if (nativeVideoTsView != null) {
            com.bytedance.sdk.openadsdk.core.video.d.d u = nativeVideoTsView.getNativeVideoController().u();
            if (u != null && u.h()) {
                this.V = true;
                ((f) this.n.getNativeVideoController()).e(this.n.getNativeVideoController().p());
                this.n.getNativeVideoController().a(false);
            } else if (u != null && !u.l()) {
                ((f) this.n.getNativeVideoController()).e(this.n.getNativeVideoController().p());
                this.n.getNativeVideoController().a(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        return !TextUtils.isEmpty(this.J) && this.J.contains("__luban_sdk");
    }

    private void o() {
        if (this.p != null) {
            JSONArray b2 = b(this.J);
            int d2 = af.d(this.h);
            int c2 = af.c(this.h);
            o<com.bytedance.sdk.openadsdk.d.a> f = n.f();
            if (b2 != null && f != null && d2 > 0 && c2 > 0) {
                j jVar = new j();
                jVar.f8908d = b2;
                AdSlot n = this.p.n();
                if (n != null) {
                    n.setAdCount(6);
                    f.a(n, jVar, c2, new o.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.9
                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(int i, String str) {
                            TTVideoLandingPageActivity.this.a(0);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.o.a
                        public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                            if (aVar != null) {
                                try {
                                    TTVideoLandingPageActivity.this.N.set(false);
                                    TTVideoLandingPageActivity.this.i.b(new JSONObject(aVar.c()));
                                } catch (Exception e) {
                                    TTVideoLandingPageActivity.this.a(0);
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    protected void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            this.e.registerReceiver(this.W, intentFilter);
        } catch (Exception e) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d
    public void a(boolean z, JSONArray jSONArray) {
        if (z && jSONArray != null && jSONArray.length() > 0) {
            this.O = jSONArray;
            o();
        }
    }

    protected void b() {
        try {
            this.e.unregisterReceiver(this.W);
        } catch (Exception e) {
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        NativeVideoTsView nativeVideoTsView;
        if (this.E && (nativeVideoTsView = this.n) != null && nativeVideoTsView.getNativeVideoController() != null) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.a) this.n.getNativeVideoController()).e(null, null);
            this.E = false;
        } else if (!n() || this.N.getAndSet(true)) {
            super.onBackPressed();
        } else {
            a(true);
            a(0);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        c();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            getWindow().addFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        } catch (Throwable th) {
        }
        try {
            n.a(this);
        } catch (Throwable th2) {
        }
        this.K = t.c(getApplicationContext());
        setContentView(x.f(this, "tt_activity_videolandingpage"));
        this.Q = com.bytedance.sdk.openadsdk.e.a.a().b();
        this.e = this;
        Intent intent = getIntent();
        this.f = intent.getIntExtra("sdk_version", 1);
        this.g = intent.getStringExtra("adid");
        this.h = intent.getStringExtra("log_extra");
        this.j = intent.getIntExtra(Payload.SOURCE, -1);
        this.J = intent.getStringExtra("url");
        String stringExtra = intent.getStringExtra("web_title");
        this.F = intent.getStringExtra("event_tag");
        this.P = intent.getStringExtra("gecko_id");
        this.I = intent.getBooleanExtra("video_is_auto_play", true);
        if (bundle != null && bundle.getLong("video_play_position") > 0) {
            this.o = bundle.getLong("video_play_position", 0L);
        }
        String stringExtra2 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_DATA);
        if (b.b()) {
            String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
            if (stringExtra3 != null) {
                try {
                    this.p = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(stringExtra3));
                } catch (Exception e) {
                }
            }
            i iVar = this.p;
            if (iVar != null) {
                this.m = iVar.T();
            }
        } else {
            i c2 = com.bytedance.sdk.openadsdk.core.t.a().c();
            this.p = c2;
            if (c2 != null) {
                this.m = c2.T();
            }
            com.bytedance.sdk.openadsdk.core.t.a().g();
        }
        if (this.p == null) {
            finish();
            return;
        }
        if (stringExtra2 != null) {
            try {
                this.L = a.a(new JSONObject(stringExtra2));
            } catch (Exception e2) {
            }
            a aVar = this.L;
            if (aVar != null) {
                this.o = aVar.g;
                this.G = this.L.f9888a;
            }
        }
        if (bundle != null) {
            String string = bundle.getString("material_meta");
            if (this.p == null) {
                try {
                    this.p = com.bytedance.sdk.openadsdk.core.b.a(new JSONObject(string));
                } catch (Throwable th3) {
                }
            }
            long j = bundle.getLong("video_play_position");
            boolean z = bundle.getBoolean("is_complete");
            if (j > 0) {
                this.o = j;
            }
            if (z) {
                this.G = z;
            }
        }
        e();
        j();
        k();
        a(4);
        com.bytedance.sdk.openadsdk.core.widget.webview.a.a(this.e).a(Build.VERSION.SDK_INT >= 16).b(false).a(this.f8513a);
        this.M = new k(this, this.p, this.f8513a).a(true);
        this.f8513a.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.webview.c(this.e, this.i, this.g, this.M) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTVideoLandingPageActivity.this.C != null && !TTVideoLandingPageActivity.this.isFinishing()) {
                        TTVideoLandingPageActivity.this.C.setVisibility(8);
                    }
                } catch (Throwable th4) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TextUtils.isEmpty(TTVideoLandingPageActivity.this.P)) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTVideoLandingPageActivity.c(TTVideoLandingPageActivity.this);
                    WebResourceResponse a2 = com.bytedance.sdk.openadsdk.e.a.a().a(TTVideoLandingPageActivity.this.Q, TTVideoLandingPageActivity.this.P, str);
                    if (a2 == null) {
                        return super.shouldInterceptRequest(webView, str);
                    }
                    TTVideoLandingPageActivity.e(TTVideoLandingPageActivity.this);
                    return a2;
                } catch (Throwable th4) {
                    Log.e("TTVideoLandingPage", "shouldInterceptRequest url error", th4);
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        this.f8513a.getSettings().setUserAgentString(com.bytedance.sdk.openadsdk.utils.n.a(this.f8513a, this.f));
        if (Build.VERSION.SDK_INT >= 21) {
            this.f8513a.getSettings().setMixedContentMode(0);
        }
        com.bytedance.sdk.openadsdk.d.e.a(this.e, this.p);
        this.f8513a.loadUrl(this.J);
        this.f8513a.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.webview.b(this.i, this.M) { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.b, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTVideoLandingPageActivity.this.C != null && !TTVideoLandingPageActivity.this.isFinishing()) {
                    if (i != 100 || !TTVideoLandingPageActivity.this.C.isShown()) {
                        TTVideoLandingPageActivity.this.C.setProgress(i);
                    } else {
                        TTVideoLandingPageActivity.this.C.setVisibility(8);
                    }
                }
            }
        });
        this.f8513a.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.3
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                if (TTVideoLandingPageActivity.this.D != null) {
                    TTVideoLandingPageActivity.this.D.e();
                }
            }
        });
        TextView textView = this.f8516d;
        if (textView != null) {
            String str = stringExtra;
            if (TextUtils.isEmpty(stringExtra)) {
                str = x.a(this, "tt_web_title_default");
            }
            textView.setText(str);
        }
        a();
        f();
        c();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        b();
        try {
            if (!(getWindow() == null || (viewGroup = (ViewGroup) getWindow().getDecorView()) == null)) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable th) {
        }
        z.a(this.e, this.f8513a);
        z.a(this.f8513a);
        this.f8513a = null;
        w wVar = this.i;
        if (wVar != null) {
            wVar.h();
        }
        NativeVideoTsView nativeVideoTsView = this.n;
        if (!(nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null)) {
            this.n.getNativeVideoController().m();
        }
        this.n = null;
        this.p = null;
        k kVar = this.M;
        if (kVar != null) {
            kVar.d();
        }
        if (!TextUtils.isEmpty(this.P)) {
            e.a.a(this.S, this.R, this.p);
        }
        com.bytedance.sdk.openadsdk.e.a.a().a(this.Q);
    }

    @Override // android.app.Activity
    protected void onPause() {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2;
        super.onPause();
        w wVar = this.i;
        if (wVar != null) {
            wVar.g();
        }
        m();
        if (this.G || !((nativeVideoTsView2 = this.n) == null || nativeVideoTsView2.getNativeVideoController() == null || !this.n.getNativeVideoController().w())) {
            this.G = true;
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.TRUE);
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_native_video_complete", Boolean.TRUE);
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.TRUE);
        }
        if (!this.G && (nativeVideoTsView = this.n) != null && nativeVideoTsView.getNativeVideoController() != null) {
            a(this.n.getNativeVideoController());
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.H = false;
        w wVar = this.i;
        if (wVar != null) {
            wVar.f();
        }
        l();
        k kVar = this.M;
        if (kVar != null) {
            kVar.b();
        }
        o();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onSaveInstanceState(android.os.Bundle r6) {
        /*
            r5 = this;
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x000e
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r7 = r0
        L_0x000e:
            r0 = r5
            com.bytedance.sdk.openadsdk.core.e.i r0 = r0.p
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0022
            r0 = r6
            org.json.JSONObject r0 = r0.ag()
            java.lang.String r0 = r0.toString()
            r6 = r0
            goto L_0x0024
        L_0x0022:
            r0 = 0
            r6 = r0
        L_0x0024:
            r0 = r7
            java.lang.String r1 = "material_meta"
            r2 = r6
            r0.putString(r1, r2)
            r0 = r7
            java.lang.String r1 = "video_play_position"
            r2 = r5
            long r2 = r2.o
            r0.putLong(r1, r2)
            r0 = r7
            java.lang.String r1 = "is_complete"
            r2 = r5
            boolean r2 = r2.G
            r0.putBoolean(r1, r2)
            r0 = r5
            long r0 = r0.o
            r8 = r0
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView r0 = r0.n
            r6 = r0
            r0 = r8
            r10 = r0
            r0 = r6
            if (r0 == 0) goto L_0x006b
            r0 = r8
            r10 = r0
            r0 = r6
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c r0 = r0.getNativeVideoController()
            if (r0 == 0) goto L_0x006b
            r0 = r5
            com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView r0 = r0.n
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c r0 = r0.getNativeVideoController()
            long r0 = r0.n()
            r10 = r0
        L_0x006b:
            r0 = r7
            java.lang.String r1 = "video_play_position"
            r2 = r10
            r0.putLong(r1, r2)
            r0 = r5
            r1 = r7
            super.onSaveInstanceState(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity.onSaveInstanceState(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        k kVar = this.M;
        if (kVar != null) {
            kVar.c();
        }
    }
}
