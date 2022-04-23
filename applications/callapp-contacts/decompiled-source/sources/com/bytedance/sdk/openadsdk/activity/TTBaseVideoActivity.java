package com.bytedance.sdk.openadsdk.activity;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeToast;
import com.bytedance.sdk.openadsdk.core.e.d;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.c.b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.widget.c;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.h.d;
import com.bytedance.sdk.openadsdk.h.e;
import com.bytedance.sdk.openadsdk.h.f;
import com.bytedance.sdk.openadsdk.h.g;
import com.bytedance.sdk.openadsdk.h.h;
import com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.EnvironmentInfo;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity.class */
public abstract class TTBaseVideoActivity extends Activity implements b, f, HomeWatcherReceiver.a, ah.a {

    /* renamed from: b  reason: collision with root package name */
    static final String f8419b = x.a(n.a(), "tt_txt_skip");

    /* renamed from: c  reason: collision with root package name */
    static final String f8420c = x.a(n.a(), "tt_feedback_submit_text");

    /* renamed from: d  reason: collision with root package name */
    static final String f8421d = x.a(n.a(), "tt_feedback_thank_text") + StringUtils.LF + x.a(n.a(), "tt_feedback_experience_text");
    long A;
    String B;
    int C;
    RewardDislikeDialog E;
    RewardDislikeToast F;
    c G;
    com.a.a.a.a.a.c H;
    w I;
    w J;
    HomeWatcherReceiver K;
    String M;
    String N;
    int O;
    int P;
    protected String Q;
    int S;
    int V;
    String aG;
    boolean aH;
    protected boolean aI;
    String aJ;
    String aK;
    protected long aL;
    View aM;
    protected com.bytedance.sdk.openadsdk.h.a aN;
    protected e aO;
    protected d aP;
    protected int aQ;
    ProgressBar aR;
    private ObjectAnimator aS;
    private com.bytedance.sdk.openadsdk.core.b.e aT;
    private boolean aU;
    private boolean aV;
    private boolean aW;
    private boolean aX;
    private final AtomicBoolean aY;
    private boolean aZ;
    protected com.bytedance.sdk.openadsdk.core.widget.a ad;
    protected IListenerManager af;
    protected String ag;
    LinearLayout ak;
    TTRoundRectImageView al;
    TextView am;
    TTRatingBar an;
    TextView ao;
    TextView ap;
    protected g av;
    boolean aw;
    boolean ax;
    TextView ay;
    private AtomicBoolean ba;
    private View.OnClickListener bb;
    private boolean bc;
    View e;
    PlayableLoadingView f;
    TopProxyLayout g;
    RelativeLayout h;
    Context i;
    protected SSWebView j;
    protected WeakReference<SSWebView> k;
    SSWebView l;
    ImageView m;
    RelativeLayout n;
    TTRoundRectImageView o;
    TextView p;
    TextView q;
    TextView r;
    FrameLayout s;
    FrameLayout t;
    FrameLayout u;
    TTRatingBar v;
    i w;
    k x;
    String y;

    /* renamed from: a  reason: collision with root package name */
    protected int f8422a = 0;
    boolean z = true;
    boolean D = false;
    final ah L = new ah(Looper.getMainLooper(), this);
    boolean R = false;
    int T = 5;
    int U = 3;
    final AtomicBoolean W = new AtomicBoolean(false);
    final AtomicBoolean X = new AtomicBoolean(false);
    final AtomicBoolean Y = new AtomicBoolean(false);
    final AtomicBoolean Z = new AtomicBoolean(false);
    final AtomicBoolean aa = new AtomicBoolean(false);
    final AtomicBoolean ab = new AtomicBoolean(false);
    protected final AtomicBoolean ac = new AtomicBoolean(false);
    protected final String ae = Build.MODEL;
    protected boolean ah = false;
    protected boolean ai = false;
    protected int aj = 0;
    AtomicBoolean aq = new AtomicBoolean(true);
    boolean ar = false;
    int as = 0;
    String at = "";
    int au = 7;
    long az = 0;
    int aA = 0;
    long aB = 0;
    long aC = 0;
    int aD = 0;
    int aE = 0;
    AtomicBoolean aF = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$a.class */
    public class a {

        /* renamed from: b  reason: collision with root package name */
        private int f8446b;

        /* renamed from: c  reason: collision with root package name */
        private int f8447c;

        /* renamed from: d  reason: collision with root package name */
        private int f8448d;
        private int e;
        private long f;
        private long g;

        a(int i, int i2, int i3, int i4) {
            this.f8446b = i;
            this.f8447c = i2;
            this.f8448d = i3;
            this.e = i4;
        }

        public void a(long j) {
            this.f = j;
        }
    }

    public TTBaseVideoActivity() {
        this.aG = this instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad";
        this.aH = false;
        this.aI = true;
        this.aV = false;
        this.aJ = "video_player";
        this.aK = "";
        this.aW = false;
        this.aX = false;
        this.aY = new AtomicBoolean(false);
        this.aZ = true;
        this.ba = new AtomicBoolean(false);
        this.aM = null;
        this.bb = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTBaseVideoActivity.this.a(view);
                TTBaseVideoActivity.this.b(view);
            }
        };
        this.bc = false;
        this.aN = new com.bytedance.sdk.openadsdk.h.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.10
            @Override // com.bytedance.sdk.openadsdk.h.a
            public int a() {
                int measuredHeight = TTBaseVideoActivity.this.j != null ? TTBaseVideoActivity.this.j.getMeasuredHeight() : -1;
                q.c("TTAndroidObject", "mWebView>>>>height=".concat(String.valueOf(measuredHeight)));
                int i = measuredHeight;
                if (measuredHeight <= 0) {
                    i = ag.d(TTBaseVideoActivity.this.i);
                }
                return i;
            }

            @Override // com.bytedance.sdk.openadsdk.h.a
            public int b() {
                int measuredWidth = TTBaseVideoActivity.this.j != null ? TTBaseVideoActivity.this.j.getMeasuredWidth() : -1;
                q.c("TTAndroidObject", "mWebView>>>>width=".concat(String.valueOf(measuredWidth)));
                int i = measuredWidth;
                if (measuredWidth <= 0) {
                    i = ag.c(TTBaseVideoActivity.this.i);
                }
                return i;
            }
        };
        this.aO = new e() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.11
            @Override // com.bytedance.sdk.openadsdk.h.e
            public void a() {
                TTBaseVideoActivity.this.aa();
            }
        };
        this.aP = new d() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.13
            @Override // com.bytedance.sdk.openadsdk.h.d
            public void a() {
                if (!TTBaseVideoActivity.this.isFinishing()) {
                    if ((TTBaseVideoActivity.this.w == null || TTBaseVideoActivity.this.w.u()) && TTBaseVideoActivity.this.w != null && TTBaseVideoActivity.this.w.v()) {
                        TTBaseVideoActivity.this.L.removeMessages(800);
                        TTBaseVideoActivity.this.L.sendMessage(TTBaseVideoActivity.this.c(1));
                    }
                }
            }
        };
        this.aQ = -1;
    }

    private int M() {
        Resources resources = getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM));
        }
        return 0;
    }

    private int N() {
        Resources resources = getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", Constants.ANDROID_PLATFORM));
        }
        return 0;
    }

    private String O() {
        String j = n.h().j();
        q.c("Playable", "getPlayableLoadH5Url->loadH5Url=".concat(String.valueOf(j)));
        String str = j;
        if (!TextUtils.isEmpty(j)) {
            i iVar = this.w;
            str = j;
            if (iVar != null) {
                if (iVar.Q() == null) {
                    str = j;
                } else {
                    String str2 = this.T == 15 ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE;
                    String b2 = this.w.Q().b();
                    int d2 = this.w.Q().d();
                    int e = this.w.Q().e();
                    String a2 = this.w.E().a();
                    String P = this.w.P();
                    String c2 = this.w.Q().c();
                    String a3 = this.w.Q().a();
                    String b3 = this.w.Q().b();
                    String M = this.w.M();
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("appname=");
                    stringBuffer.append(URLEncoder.encode(b2));
                    stringBuffer.append("&stars=");
                    stringBuffer.append(d2);
                    stringBuffer.append("&comments=");
                    stringBuffer.append(e);
                    stringBuffer.append("&icon=");
                    stringBuffer.append(URLEncoder.encode(a2));
                    stringBuffer.append("&downloading=true&id=");
                    stringBuffer.append(URLEncoder.encode(P));
                    stringBuffer.append("&pkg_name=");
                    stringBuffer.append(URLEncoder.encode(c2));
                    stringBuffer.append("&download_url=");
                    stringBuffer.append(URLEncoder.encode(a3));
                    stringBuffer.append("&name=");
                    stringBuffer.append(URLEncoder.encode(b3));
                    stringBuffer.append("&orientation=");
                    stringBuffer.append(str2);
                    stringBuffer.append("&apptitle=");
                    stringBuffer.append(URLEncoder.encode(M));
                    str = j + "?" + stringBuffer.toString();
                    q.c("Playable", "Playable-loadH5Url=".concat(String.valueOf(str)));
                }
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        SSWebView sSWebView;
        if (!this.ba.getAndSet(true) && (sSWebView = this.j) != null && this.l != null) {
            ag.a((View) sSWebView, 0);
            ag.a((View) this.l, 8);
        }
    }

    private void Q() {
        this.ak = (LinearLayout) findViewById(x.e(this, "tt_reward_full_endcard_backup"));
        this.al = (TTRoundRectImageView) findViewById(x.e(this, "tt_reward_ad_icon_backup"));
        this.am = (TextView) findViewById(x.e(this, "tt_reward_ad_appname_backup"));
        this.an = (TTRatingBar) findViewById(x.e(this, "tt_rb_score_backup"));
        this.ao = (TextView) findViewById(x.e(this, "tt_comment_backup"));
        this.ap = (TextView) findViewById(x.e(this, "tt_reward_ad_download_backup"));
        TTRatingBar tTRatingBar = this.an;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.an.setStarFillNum(4);
            this.an.setStarImageWidth(ag.c(this, 16.0f));
            this.an.setStarImageHeight(ag.c(this, 16.0f));
            this.an.setStarImagePadding(ag.c(this, 4.0f));
            this.an.a();
        }
    }

    private void S() {
        i iVar = this.w;
        if (iVar != null) {
            int d2 = af.d(iVar.S());
            com.bytedance.sdk.openadsdk.i.a.b e = com.bytedance.sdk.openadsdk.i.a.b.b().a(this.au).c(String.valueOf(d2)).e(af.h(this.w.S()));
            e.b(this.as).f(this.at);
            e.g(this.w.S()).d(this.w.P());
            com.bytedance.sdk.openadsdk.i.a.a().f(e);
        }
    }

    private void U() {
        if (this.w.ae()) {
            this.g.setShowDislike(true);
        } else {
            this.g.setShowDislike(false);
        }
    }

    private void V() {
        this.g.c();
        ag.a((View) this.m, 0);
        ag.a((View) this.n, 0);
    }

    private void W() {
        if (w()) {
            a aVar = new a(0, 0, 0, 0);
            aVar.a(System.currentTimeMillis());
            a(aVar, this.h, null, true);
        }
    }

    private boolean X() {
        if ((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) {
            return this.W.get();
        }
        return true;
    }

    private void Y() {
        c cVar = this.G;
        if (cVar != null && cVar.u() != null) {
            this.A = this.G.n();
            if (this.G.u().h() || !this.G.u().l()) {
                this.G.i();
                this.G.l();
                this.bc = true;
            }
        }
    }

    private void Z() {
        TopProxyLayout topProxyLayout = this.g;
        if (topProxyLayout != null) {
            topProxyLayout.setShowSound(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (view != null) {
            if (view.getId() == x.e(this, "tt_rb_score")) {
                a("click_play_star_level", (JSONObject) null);
            } else if (view.getId() == x.e(this, "tt_comment_vertical")) {
                a("click_play_star_nums", (JSONObject) null);
            } else if (view.getId() == x.e(this, "tt_reward_ad_appname")) {
                a("click_play_source", (JSONObject) null);
            } else if (view.getId() == x.e(this, "tt_reward_ad_icon")) {
                a("click_play_logo", (JSONObject) null);
            } else if (view.getId() == x.e(this, "tt_video_reward_bar") || view.getId() == x.e(this, "tt_click_lower_non_content_layout") || view.getId() == x.e(this, "tt_click_upper_non_content_layout")) {
                a("click_start_play_bar", y());
            } else if (view.getId() == x.e(this, "tt_reward_ad_download")) {
                a("click_start_play", y());
            } else if (view.getId() == x.e(this, "tt_video_reward_container")) {
                a("click_video", y());
            } else if (view.getId() == x.e(this, "tt_reward_ad_download_backup")) {
                a("fallback_endcard_click", y());
            }
        }
    }

    private void a(a aVar, View view, View view2, boolean z) {
        HashMap hashMap;
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap = new HashMap();
            hashMap.put("rit_scene", this.ag);
        } else {
            hashMap = null;
        }
        String str = this instanceof TTFullScreenVideoActivity ? "fullscreen_interstitial_ad" : "";
        if (this instanceof TTRewardVideoActivity) {
            str = AdType.REWARDED_VIDEO;
        }
        if (aVar != null && this.w != null) {
            com.bytedance.sdk.openadsdk.d.e.a(this.i, "click_other", this.w, a(aVar.f8446b, aVar.f8447c, aVar.f8448d, aVar.e, aVar.f, aVar.g, view, view2), str, z, hashMap);
        }
    }

    private void a(SSWebView sSWebView) {
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.widget.webview.a.a(this.i).a(false).b(false).a(sSWebView);
            sSWebView.getSettings().setUserAgentString(com.bytedance.sdk.openadsdk.utils.n.a(sSWebView, this.P));
            if (Build.VERSION.SDK_INT >= 21) {
                sSWebView.getSettings().setMixedContentMode(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        com.bytedance.sdk.openadsdk.d.e.b(this, this.w, str, str2, (JSONObject) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, JSONObject jSONObject) {
        if (this instanceof TTFullScreenVideoActivity) {
            com.bytedance.sdk.openadsdk.d.e.a(this.i, this.w, "fullscreen_interstitial_ad", str, (JSONObject) null);
        }
        if (this instanceof TTRewardVideoActivity) {
            com.bytedance.sdk.openadsdk.d.e.a(this.i, this.w, AdType.REWARDED_VIDEO, str, jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aa() {
        int i = n.h().q(String.valueOf(this.V)).f;
        boolean z = false;
        if (i.c(this.w)) {
            if ((1.0d - (this.S / J())) * 100.0d >= i) {
                z = true;
            }
            z = false;
        } else {
            boolean z2 = (1.0f - (((float) this.aA) / ((float) n.h().o(String.valueOf(this.V))))) * 100.0f >= ((float) i);
            int a2 = n.h().a(String.valueOf(this.V));
            if (a2 == 0) {
                if (z2 && this.I.b()) {
                    z = true;
                }
                z = false;
            } else if (a2 == 1) {
                z = z2;
            }
        }
        if (z) {
            e(10000);
        }
    }

    private void ab() {
        this.F.a(f8420c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac() {
        this.F.a(f8421d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        if (!w() || view == null) {
            return;
        }
        if (view.getId() == x.e(this, "tt_rb_score")) {
            W();
        } else if (view.getId() == x.e(this, "tt_comment_vertical")) {
            W();
        } else if (view.getId() == x.e(this, "tt_reward_ad_appname")) {
            W();
        } else if (view.getId() == x.e(this, "tt_reward_ad_icon")) {
            W();
        } else if (view.getId() == x.e(this, "tt_video_reward_bar") || view.getId() == x.e(this, "tt_click_lower_non_content_layout") || view.getId() == x.e(this, "tt_click_upper_non_content_layout")) {
            W();
        } else if (view.getId() == x.e(this, "tt_reward_ad_download")) {
            W();
        } else if (view.getId() == x.e(this, "tt_video_reward_container")) {
            W();
        } else if (view.getId() == x.e(this, "tt_reward_ad_download_backup")) {
            W();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Message c(int i) {
        Message obtain = Message.obtain();
        obtain.what = 800;
        obtain.arg1 = i;
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        i iVar = this.w;
        return iVar != null && iVar.t() && str.endsWith(".mp4");
    }

    private void f(boolean z) {
        if (!z) {
            TTRoundRectImageView tTRoundRectImageView = this.al;
            if (tTRoundRectImageView != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) tTRoundRectImageView.getLayoutParams();
                layoutParams.setMargins(0, (int) ag.a(this, 50.0f), 0, 0);
                this.al.setLayoutParams(layoutParams);
            }
            TextView textView = this.ap;
            if (textView != null) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView.getLayoutParams();
                layoutParams2.setMargins(0, (int) ag.a(this, 35.0f), 0, 0);
                layoutParams2.width = (int) ag.a(this, 342.0f);
                this.ap.setLayoutParams(layoutParams2);
            }
        }
    }

    private String g(boolean z) {
        i iVar = this.w;
        if (iVar == null) {
            return null;
        }
        return iVar.D() != 4 ? "View" : "Install";
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(1:4)|57|5|(2:9|(5:11|59|13|17|(1:19)(6:20|(2:22|(1:24))(2:25|(2:37|(2:39|(2:41|(2:43|(1:45)(2:46|(1:48))))))(2:31|(1:33)(2:34|(1:36))))|49|(1:53)|54|55)))|12|59|13|17|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        r7 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String A() {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.A():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void B() {
        if (this.ai) {
            int[] iArr = {Color.parseColor("#0070FF")};
            com.bytedance.sdk.openadsdk.core.widget.c.a((LinearLayout) findViewById(x.e(this, "tt_reward_ad_download_layout")), new c.a().a(iArr[0]).b(Color.parseColor("#80000000")).a(iArr).c(ag.c(this, 17.0f)).d(0).e(ag.c(this, 3.0f)));
        }
    }

    void C() {
        if (this.E == null) {
            RewardDislikeDialog rewardDislikeDialog = new RewardDislikeDialog(this, this.w);
            this.E = rewardDislikeDialog;
            rewardDislikeDialog.setCallback(new RewardDislikeDialog.a() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.7
                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.a
                public void a(int i, FilterWord filterWord) {
                    if (!TTBaseVideoActivity.this.ab.get() && filterWord != null && !filterWord.hasSecondOptions()) {
                        TTBaseVideoActivity.this.ab.set(true);
                        TTBaseVideoActivity.this.ac();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.a
                public void a(View view) {
                    TTBaseVideoActivity.this.aa.set(true);
                    if (TTBaseVideoActivity.this.t()) {
                        TTBaseVideoActivity.this.G.i();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.a
                public void b(View view) {
                    TTBaseVideoActivity.this.aa.set(false);
                    if (TTBaseVideoActivity.this.u()) {
                        TTBaseVideoActivity.this.G.k();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.a
                public void c(View view) {
                }
            });
            ((FrameLayout) findViewById(16908290)).addView(this.E);
        }
        if (this.F == null) {
            this.F = new RewardDislikeToast(this);
            ((FrameLayout) findViewById(16908290)).addView(this.F);
        }
    }

    protected void D() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar;
        if (this.X.getAndSet(false) || (cVar = this.G) == null) {
            return;
        }
        if (cVar.u() != null) {
            com.bytedance.sdk.openadsdk.core.video.d.d u = this.G.u();
            if (u.i() || u.j()) {
                ((com.bytedance.sdk.openadsdk.core.video.c.a) this.G).y();
                a(this.A, true);
            }
        } else if (this.bc) {
            ((com.bytedance.sdk.openadsdk.core.video.c.a) this.G).y();
            a(this.A, true);
            this.bc = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E() {
        ah ahVar = this.L;
        if (ahVar != null) {
            ahVar.removeMessages(700);
            this.L.removeMessages(VastError.ERROR_CODE_UNKNOWN);
            this.L.removeMessages(950);
            this.L.removeMessages(600);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void F() {
        if (this.L != null) {
            Message obtain = Message.obtain();
            if (this.aD == this.aE) {
                obtain.what = VastError.ERROR_CODE_UNKNOWN;
            } else {
                obtain.what = 950;
            }
            obtain.arg1 = this.aA;
            this.L.sendMessageDelayed(obtain, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G() {
        i iVar;
        this.aa.set(false);
        this.ab.set(false);
        TopProxyLayout topProxyLayout = this.g;
        if (topProxyLayout != null) {
            topProxyLayout.setShowSkip(false);
            this.g.setShowCountDown(false);
            U();
            this.g.setShowSound(i.a(this.w));
            if (((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) && i.a(this.w)) {
                this.g.setShowSound(true);
                this.g.setShowSkip(true);
            }
        }
        b();
        RewardDislikeToast rewardDislikeToast = this.F;
        if (rewardDislikeToast != null) {
            rewardDislikeToast.a();
        }
        if (!this.W.getAndSet(true)) {
            this.Z.set(true);
            if (i.a(this.w, this.aq.get(), this.ar) || (iVar = this.w) == null || iVar.w()) {
                if (Build.VERSION.SDK_INT >= 11) {
                    ag.a(this.j, (float) BitmapDescriptorFactory.HUE_RED);
                    ag.a(this.m, (float) BitmapDescriptorFactory.HUE_RED);
                    ag.a(this.n, (float) BitmapDescriptorFactory.HUE_RED);
                }
                ag.a((View) this.j, 0);
                i iVar2 = this.w;
                if (iVar2 == null || !iVar2.w()) {
                    i iVar3 = this.w;
                    if (iVar3 != null && !iVar3.w()) {
                        int m = n.h().m(String.valueOf(this.V));
                        if (m == -1) {
                            V();
                        } else if (m >= 0) {
                            this.L.sendEmptyMessageDelayed(600, m);
                        }
                    }
                } else {
                    int p = n.h().p(String.valueOf(this.V));
                    if (p == -1) {
                        V();
                    } else if (p >= 0) {
                        this.L.sendEmptyMessageDelayed(600, p);
                    }
                }
                this.L.sendEmptyMessageDelayed(500, 100L);
                a(this.R, true);
                w wVar = this.I;
                if (wVar != null) {
                    wVar.b(true);
                    b(true);
                }
                o();
                return;
            }
            ag.a((View) this.j, 8);
            ag.a((View) this.ak, 0);
            V();
            Z();
            S();
            if ((this instanceof TTFullScreenVideoActivity) && this.G != null && t() && this.Z.get()) {
                this.G.j();
                this.G.m();
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver.a
    public void H() {
        this.aH = true;
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver.a
    public void I() {
        this.aH = true;
    }

    public double J() {
        i iVar = this.w;
        if (iVar == null || iVar.B() == null) {
            return 0.0d;
        }
        return this.w.B().e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void K() {
        if (!isFinishing()) {
            if (this.ab.get()) {
                ab();
                return;
            }
            if (this.E == null) {
                C();
            }
            this.E.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void L() {
        ah ahVar = this.L;
        if (ahVar != null) {
            ahVar.removeMessages(400);
        }
    }

    protected float a(Activity activity) {
        return ag.b(activity, ag.g(activity));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IListenerManager a(int i) {
        if (this.af == null) {
            this.af = com.bytedance.sdk.openadsdk.multipro.aidl.a.a.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.a.a(n.a()).a(i));
        }
        return this.af;
    }

    protected com.bytedance.sdk.openadsdk.core.e.d a(int i, int i2, int i3, int i4, long j, long j2, View view, View view2) {
        return new d.a().d(i).c(i2).b(i3).a(i4).b(j).a(j2).b(ag.a(view)).a(ag.a(view2)).c(ag.c(view)).d(ag.c(view2)).e(1).f(-1).g(0).a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        if ((i.b(this.w) || i.c(this.w)) && this.aQ == 0) {
            this.R = true;
            a(true);
        }
    }

    protected void a(int i, int i2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i);
            jSONObject.put("height", i2);
            this.I.a("resize", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context) {
        try {
            HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
            this.K = homeWatcherReceiver;
            homeWatcherReceiver.a(this);
            context.registerReceiver(this.K, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        } catch (Throwable th) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message.what == 500) {
            if (!i.a(this.w)) {
                Z();
            }
            SSWebView sSWebView = this.k.get();
            if (sSWebView != null) {
                sSWebView.onResume();
                sSWebView.resumeTimers();
            }
            TopProxyLayout topProxyLayout = this.g;
            if (topProxyLayout != null) {
                topProxyLayout.setShowCountDown(false);
            }
            SSWebView sSWebView2 = this.j;
            if (sSWebView2 != null) {
                ag.a((View) sSWebView2, 1.0f);
                ag.a((View) this.m, 1.0f);
                ag.a((View) this.n, 1.0f);
            }
            if ((this instanceof TTFullScreenVideoActivity) && this.G != null && t() && this.Z.get()) {
                this.G.j();
                this.G.m();
            }
        } else if (message.what == 600) {
            V();
        } else if (message.what == 700) {
            if (this.w.f() == 1) {
                int i = message.arg1;
                if (i > 0) {
                    TopProxyLayout topProxyLayout2 = this.g;
                    if (topProxyLayout2 != null) {
                        topProxyLayout2.setShowCountDown(true);
                        this.g.a(String.valueOf(i), (CharSequence) null);
                    }
                    Message obtain = Message.obtain();
                    obtain.what = 700;
                    int i2 = i - 1;
                    obtain.arg1 = i2;
                    this.aB--;
                    this.L.sendMessageDelayed(obtain, 1000L);
                    this.aA = i2;
                    if (i == 1) {
                        this.L.sendEmptyMessageDelayed(600, 1000L);
                    }
                } else {
                    TopProxyLayout topProxyLayout3 = this.g;
                    if (topProxyLayout3 != null) {
                        topProxyLayout3.setShowCountDown(false);
                    }
                    if (this instanceof TTRewardVideoActivity) {
                        e(10001);
                    } else {
                        e(10002);
                    }
                }
                if (this instanceof TTRewardVideoActivity) {
                    aa();
                }
            }
        } else if (message.what == 300) {
            s();
            if (message.arg1 == 1) {
                e(10000);
            }
        } else if (message.what == 800) {
            HashMap hashMap = new HashMap();
            hashMap.put("remove_loading_page_type", Integer.valueOf(message.arg1));
            if (this.w.B() != null) {
                hashMap.put("playable_url", this.w.B().i());
            }
            com.bytedance.sdk.openadsdk.d.e.g(this, this.w, this.aG, "remove_loading_page", hashMap);
            this.L.removeMessages(800);
            PlayableLoadingView playableLoadingView = this.f;
            if (playableLoadingView != null) {
                playableLoadingView.a();
            }
        } else if (message.what == 900) {
            if (this.w.f() == 1) {
                int i3 = message.arg1;
                if (i3 > 0) {
                    TopProxyLayout topProxyLayout4 = this.g;
                    if (topProxyLayout4 != null) {
                        topProxyLayout4.setShowSkip(true);
                        this.g.a(String.valueOf(i3), (CharSequence) null);
                    }
                    Message obtain2 = Message.obtain();
                    obtain2.what = VastError.ERROR_CODE_UNKNOWN;
                    int i4 = i3 - 1;
                    obtain2.arg1 = i4;
                    this.aB--;
                    this.L.sendMessageDelayed(obtain2, 1000L);
                    this.aA = i4;
                    if (i3 == 1) {
                        this.L.sendEmptyMessageDelayed(600, 1000L);
                    }
                } else {
                    TopProxyLayout topProxyLayout5 = this.g;
                    if (topProxyLayout5 != null) {
                        topProxyLayout5.setShowSkip(false);
                    }
                    if (this instanceof TTRewardVideoActivity) {
                        e(10001);
                    } else {
                        e(10002);
                    }
                }
                if (this instanceof TTRewardVideoActivity) {
                    aa();
                }
            }
        } else if (message.what == 950) {
            if (this.w.f() == 1) {
                int i5 = message.arg1;
                int i6 = message.arg2;
                if (i5 > 0) {
                    if (i5 == 1) {
                        this.L.sendEmptyMessageDelayed(600, 1000L);
                    }
                    int i7 = this.aD;
                    if (i7 - i5 < i6) {
                        TopProxyLayout topProxyLayout6 = this.g;
                        if (topProxyLayout6 != null) {
                            topProxyLayout6.setShowSkip(true);
                            this.g.a(String.valueOf(i5), String.format(x.a(this.i, "tt_skip_ad_time_text"), Integer.valueOf(i6 - (i7 - i5))));
                        }
                        Message obtain3 = Message.obtain();
                        obtain3.what = 950;
                        int i8 = i5 - 1;
                        obtain3.arg1 = i8;
                        obtain3.arg2 = i6;
                        this.aB--;
                        this.L.sendMessageDelayed(obtain3, 1000L);
                        this.aA = i8;
                    } else {
                        TopProxyLayout topProxyLayout7 = this.g;
                        if (topProxyLayout7 != null) {
                            topProxyLayout7.setShowSkip(true);
                            this.g.a(String.valueOf(i5), x.a(this.i, "tt_txt_skip"));
                            this.g.setSkipEnable(true);
                        }
                        Message obtain4 = Message.obtain();
                        obtain4.what = 950;
                        int i9 = i5 - 1;
                        obtain4.arg1 = i9;
                        this.aB--;
                        this.L.sendMessageDelayed(obtain4, 1000L);
                        this.aA = i9;
                    }
                } else {
                    TopProxyLayout topProxyLayout8 = this.g;
                    if (topProxyLayout8 != null) {
                        topProxyLayout8.setShowSkip(false);
                        this.g.a(String.valueOf(i5), (CharSequence) null);
                    }
                    if (this instanceof TTRewardVideoActivity) {
                        e(10001);
                    } else {
                        e(10002);
                    }
                }
                if (this instanceof TTRewardVideoActivity) {
                    aa();
                }
            }
        } else if (message.what == 400) {
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
            if (cVar != null) {
                cVar.m();
            }
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        SSWebView sSWebView = this.j;
        if (sSWebView != null) {
            this.x = new k(this, this.w, sSWebView).a(true);
            i iVar = this.w;
            if (iVar != null && iVar.t()) {
                this.j.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.15
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (view.getVisibility() != 0 || Float.valueOf(view.getAlpha()).intValue() != 1 || TTBaseVideoActivity.this.aX) {
                            return false;
                        }
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("down_x", motionEvent.getX());
                            jSONObject.put("down_y", motionEvent.getY());
                            jSONObject.put("width", view.getWidth());
                            jSONObject.put("height", view.getHeight());
                            jSONObject.put("down_time", System.currentTimeMillis());
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("click_area", jSONObject.toString());
                            TTBaseVideoActivity.this.a(jSONObject2);
                            TTBaseVideoActivity.this.aX = true;
                            return false;
                        } catch (JSONException e) {
                            e.printStackTrace();
                            return false;
                        }
                    }
                });
            }
            this.x.a(g() ? "landingpage_endcard" : str);
            this.j.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.webview.c(this.i, this.I, this.M, this.x) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.16
                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str2) {
                    TTBaseVideoActivity.this.aK = str2;
                    super.onPageFinished(webView, str2);
                    try {
                        if (TTBaseVideoActivity.this.w.x() && !TTBaseVideoActivity.this.isFinishing() && TTBaseVideoActivity.this.w.u() && !TTBaseVideoActivity.this.w.v()) {
                            TTBaseVideoActivity.this.L.sendMessageDelayed(TTBaseVideoActivity.this.c(0), 1000L);
                        }
                    } catch (Throwable th) {
                    }
                    try {
                        if (TTBaseVideoActivity.this.aq.get() && TTBaseVideoActivity.this.w.f() == 1 && TTBaseVideoActivity.this.w.w()) {
                            TTBaseVideoActivity.this.P();
                            TTBaseVideoActivity.this.b(true);
                            if (this.f9378b != null) {
                                this.f9378b.b(true);
                            }
                            TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                            tTBaseVideoActivity.a(tTBaseVideoActivity.aG, "py_loading_success");
                        }
                    } catch (Throwable th2) {
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                    TTBaseVideoActivity.this.aK = str2;
                    super.onPageStarted(webView, str2, bitmap);
                    if (!TTBaseVideoActivity.this.aW && TTBaseVideoActivity.this.w != null && TTBaseVideoActivity.this.w.w() && TTBaseVideoActivity.this.w.f() == 1) {
                        TTBaseVideoActivity.this.aW = true;
                        TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                        boolean z = tTBaseVideoActivity instanceof TTRewardVideoActivity;
                        tTBaseVideoActivity.aD = n.h().o(String.valueOf(TTBaseVideoActivity.this.V));
                        TTBaseVideoActivity.this.aE = n.h().a(String.valueOf(TTBaseVideoActivity.this.V), z);
                        TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                        long j = tTBaseVideoActivity2.aD;
                        tTBaseVideoActivity2.aB = j;
                        tTBaseVideoActivity2.aC = j;
                        TTBaseVideoActivity.this.L.sendEmptyMessageDelayed(600, TTBaseVideoActivity.this.aD * 1000);
                        Message obtain = Message.obtain();
                        if (TTBaseVideoActivity.this.aD == TTBaseVideoActivity.this.aE) {
                            obtain.what = VastError.ERROR_CODE_UNKNOWN;
                        } else {
                            obtain.what = 950;
                        }
                        obtain.arg1 = TTBaseVideoActivity.this.aD;
                        obtain.arg2 = TTBaseVideoActivity.this.aE;
                        TTBaseVideoActivity.this.L.sendMessage(obtain);
                        TTBaseVideoActivity.this.az = System.currentTimeMillis();
                        HashMap hashMap = null;
                        if (!TextUtils.isEmpty(TTBaseVideoActivity.this.ag)) {
                            hashMap = new HashMap();
                            hashMap.put("rit_scene", TTBaseVideoActivity.this.ag);
                        }
                        if (z) {
                            com.bytedance.sdk.openadsdk.d.e.a(this.f9379c, TTBaseVideoActivity.this.w, AdType.REWARDED_VIDEO, hashMap);
                        } else {
                            com.bytedance.sdk.openadsdk.d.e.a(this.f9379c, TTBaseVideoActivity.this.w, "fullscreen_interstitial_ad", hashMap);
                        }
                        TTBaseVideoActivity.this.R();
                        TTBaseVideoActivity.this.aF.set(true);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str2, String str3) {
                    StringBuilder sb = new StringBuilder("onReceivedError: description=");
                    sb.append(str2);
                    sb.append("  url =");
                    sb.append(str3);
                    if (!TTBaseVideoActivity.this.d(str3)) {
                        TTBaseVideoActivity.this.aq.set(false);
                        TTBaseVideoActivity.this.as = i;
                        TTBaseVideoActivity.this.at = str2;
                        super.onReceivedError(webView, i, str2, str3);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    if (!(webResourceError == null || webResourceRequest == null || webResourceRequest.getUrl() == null)) {
                        StringBuilder sb = new StringBuilder("onReceivedError WebResourceError : description=");
                        sb.append((Object) webResourceError.getDescription());
                        sb.append("  url =");
                        sb.append(webResourceRequest.getUrl().toString());
                    }
                    if (webResourceRequest == null || webResourceRequest.getUrl() == null || !TTBaseVideoActivity.this.d(webResourceRequest.getUrl().toString())) {
                        TTBaseVideoActivity.this.aq.set(false);
                        if (!(webResourceError == null || webResourceError.getDescription() == null)) {
                            TTBaseVideoActivity.this.as = webResourceError.getErrorCode();
                            TTBaseVideoActivity.this.at = webResourceError.getDescription().toString();
                        }
                        super.onReceivedError(webView, webResourceRequest, webResourceError);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    if (!(webResourceRequest == null || webResourceRequest.getUrl() == null)) {
                        new StringBuilder("onReceivedHttpError:url =").append(webResourceRequest.getUrl().toString());
                    }
                    if (!(webResourceRequest == null || webResourceRequest.getUrl() == null)) {
                        if (!TTBaseVideoActivity.this.d(webResourceRequest.getUrl().toString())) {
                            if (TTBaseVideoActivity.this.Q.equals(webResourceRequest.getUrl().toString())) {
                                TTBaseVideoActivity.this.aq.set(false);
                                if (webResourceResponse != null) {
                                    TTBaseVideoActivity.this.as = webResourceResponse.getStatusCode();
                                    TTBaseVideoActivity.this.at = "onReceivedHttpError";
                                }
                            }
                        } else {
                            return;
                        }
                    }
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                    try {
                        return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
                    } catch (Throwable th) {
                        q.c("TTBaseVideoActivity", "shouldInterceptRequest error1", th);
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                    if (!TTBaseVideoActivity.this.w.w()) {
                        return super.shouldInterceptRequest(webView, str2);
                    }
                    String i = TTBaseVideoActivity.this.w.B().i();
                    return com.bytedance.sdk.openadsdk.core.video.b.a.a().a(TTBaseVideoActivity.this.w.B().j(), i, str2);
                }
            });
            a(this.j);
            i iVar2 = this.w;
            if (iVar2 != null && iVar2.f() == 1 && this.w.w()) {
                a(this.l);
                f();
            }
            if (Build.VERSION.SDK_INT >= 19) {
                WebView.setWebContentsDebuggingEnabled(this.aw);
                if (this.aw) {
                    this.j.getSettings().setDomStorageEnabled(true);
                }
            }
            h();
            if ("reward_endcard".equals(str) || "fullscreen_endcard".equals(str)) {
                this.j.setLayerType(1, null);
                this.j.setBackgroundColor(-1);
            }
            this.j.getSettings().setDisplayZoomControls(false);
            this.j.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.webview.b(this.I, this.x) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.17
                @Override // com.bytedance.sdk.openadsdk.core.widget.webview.b, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                    try {
                        if (TTBaseVideoActivity.this.w.x() && TTBaseVideoActivity.this.w.u() && !TTBaseVideoActivity.this.isFinishing() && TTBaseVideoActivity.this.f != null) {
                            TTBaseVideoActivity.this.f.setProgress(i);
                        }
                    } catch (Throwable th) {
                    }
                }
            });
            this.j.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.18
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str2, String str3, String str4, String str5, long j) {
                    if (TTBaseVideoActivity.this.H != null) {
                        TTBaseVideoActivity.this.H.e();
                    }
                    TTBaseVideoActivity.this.T();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, String str2, Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
        if (cVar != null) {
            Map<String, Object> a2 = af.a(this.w, cVar.o(), this.G.u());
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    a2.put(entry.getKey(), entry.getValue());
                }
            }
            com.bytedance.sdk.openadsdk.d.e.a(this.i, this.w, str, str2, this.G.p(), this.G.r(), a2);
            q.b("TTBaseVideoActivity", "event tag:" + str + ", TotalPlayDuration=" + this.G.p() + ",mBasevideoController.getPct()=" + this.G.r());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
        if (cVar != null) {
            Map<String, Object> a2 = af.a(this.w, cVar.o(), this.G.u());
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    a2.put(entry.getKey(), entry.getValue());
                }
            }
            a2.put("play_type", Integer.valueOf(af.a(this.G, this.D)));
            com.bytedance.sdk.openadsdk.d.e.a(this.i, this.w, str, "endcard_skip", this.G.p(), this.G.r(), a2);
        }
    }

    abstract void a(JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        TopProxyLayout topProxyLayout = this.g;
        if (topProxyLayout != null) {
            topProxyLayout.setSoundMute(z);
        }
    }

    protected void a(boolean z, boolean z2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            jSONObject.put("endcard_show", z2);
            this.I.a("endcard_control_event", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float[] a(boolean z, Activity activity, int i) {
        float a2 = a(activity);
        float b2 = b(activity);
        float f = a2;
        float f2 = b2;
        if (z != (a2 > b2)) {
            float f3 = a2 + b2;
            f2 = f3 - b2;
            f = f3 - f2;
        }
        if (z) {
            f -= i;
        } else {
            f2 -= i;
        }
        return new float[]{f2, f};
    }

    protected float b(Activity activity) {
        return ag.b(activity, ag.h(activity));
    }

    void b() {
        if (i.c(this.w) && this.R) {
            a(true);
            this.av.a(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.h.f
    public void b(int i) {
        if (i > 0) {
            if (this.aQ <= 0) {
                q.b("onVolumeChanged", "onVolumeChanged >>>> 变为非静音状态通知 h5");
                c(false);
            }
        } else if (this.aQ > 0) {
            q.b("onVolumeChanged", "onVolumeChanged >>>> 变为静音状态通知 h5");
            c(true);
        }
        this.aQ = i;
        if (i.c(this.w) && !this.W.get()) {
            return;
        }
        if (!i.b(this.w) && !i.c(this.w)) {
            return;
        }
        if (this.av.c()) {
            q.b("TTBaseVideoActivity", "onVolumeChanged by SDK mIsMute=" + this.R + " mVolume=" + this.aQ + " mLastVolume=" + this.av.b());
            if (this.aQ == 0) {
                a(true);
                com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
                if (cVar != null) {
                    cVar.c(true);
                    return;
                }
                return;
            }
            a(false);
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar2 = this.G;
            if (cVar2 != null) {
                cVar2.c(false);
                return;
            }
            return;
        }
        this.av.b(-1);
        q.b("TTBaseVideoActivity", "onVolumeChanged by User mIsMute=" + this.R + " mVolume=" + this.aQ + " mLastVolume=" + this.av.b());
        if (!this.aV) {
            return;
        }
        if (this.aQ == 0) {
            this.R = true;
            a(true);
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar3 = this.G;
            if (cVar3 != null) {
                cVar3.c(true);
                return;
            }
            return;
        }
        this.R = false;
        a(false);
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar4 = this.G;
        if (cVar4 != null) {
            cVar4.c(false);
        }
    }

    protected void b(Context context) {
        try {
            this.K.a(null);
            context.unregisterReceiver(this.K);
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        if (this.w.f() != 1 || !this.w.w()) {
            boolean a2 = a(this.A, false);
            this.X.set(true);
            if (!a2) {
                s();
                HashMap hashMap = new HashMap();
                hashMap.put("vbtt_skip_type", 1);
                a(str, hashMap);
            }
        }
    }

    protected void b(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z ? 1 : 0);
            this.I.a("viewableChange", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.T == 15) {
            setRequestedOrientation(1);
            TextView textView = this.p;
            if (textView != null) {
                textView.setMaxWidth((int) ag.a(this, 153.0f));
            }
        } else {
            setRequestedOrientation(0);
            TextView textView2 = this.p;
            if (textView2 != null) {
                textView2.setMaxWidth((int) ag.a(this, 404.0f));
            }
            f(false);
            RelativeLayout relativeLayout = this.n;
            if (relativeLayout != null) {
                ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    int M = M();
                    int N = N();
                    if (M > 0) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (M > marginLayoutParams.topMargin) {
                            marginLayoutParams.topMargin = M;
                            TopProxyLayout topProxyLayout = this.g;
                            if (topProxyLayout != null && (topProxyLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                                ((ViewGroup.MarginLayoutParams) this.g.getLayoutParams()).topMargin = M - ag.c(this, 20.0f);
                            }
                        }
                    }
                    if (N > 0) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (N > marginLayoutParams2.rightMargin) {
                            marginLayoutParams2.rightMargin = N;
                        }
                    }
                }
            }
        }
        if (this instanceof TTFullScreenVideoActivity) {
            ag.a((View) this.h, 0);
        }
    }

    void c(String str) {
        if (this.aH) {
            String str2 = this instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad";
            HashMap hashMap = new HashMap();
            hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(System.currentTimeMillis() - this.az));
            com.bytedance.sdk.openadsdk.d.e.e(this, this.w, str2, str, hashMap);
            if ("return_foreground".equals(str)) {
                this.aH = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            this.I.a("volumeChange", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        int p = this.w.p();
        this.U = p;
        if (p == -200) {
            com.bytedance.sdk.openadsdk.core.h.e h = n.h();
            StringBuilder sb = new StringBuilder();
            sb.append(this.V);
            this.U = h.l(sb.toString());
        }
        if (this.U == -1 && this.z) {
            ag.a((View) this.h, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(boolean z) {
        if (this.aR == null) {
            this.aR = new ProgressBar(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.aR.setLayoutParams(layoutParams);
            this.aR.setIndeterminateDrawable(getResources().getDrawable(x.d(this, "tt_video_loading_progress_bar")));
            this.s.addView(this.aR);
        }
        if (z) {
            this.aR.setVisibility(0);
        } else {
            this.aR.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        i iVar;
        this.f = (PlayableLoadingView) findViewById(x.e(this, "tt_reward_playable_loading"));
        TopProxyLayout topProxyLayout = (TopProxyLayout) findViewById(x.e(this, "tt_top_layout_proxy"));
        this.g = topProxyLayout;
        if (topProxyLayout != null) {
            topProxyLayout.a(this instanceof TTRewardVideoActivity, this.w);
        }
        this.e = findViewById(x.e(this, "tt_reward_root"));
        this.l = (SSWebView) findViewById(x.e(this, "tt_browser_webview_loading"));
        this.j = (SSWebView) findViewById(x.e(this, "tt_reward_browser_webview"));
        this.k = new WeakReference<>(this.j);
        this.n = (RelativeLayout) findViewById(x.e(this, "tt_video_ad_close_layout"));
        this.m = (ImageView) findViewById(x.e(this, "tt_video_ad_close"));
        this.ay = (TextView) findViewById(x.e(this, "tt_ad_logo"));
        this.s = (FrameLayout) findViewById(x.e(this, "tt_video_reward_container"));
        this.t = (FrameLayout) findViewById(x.e(this, "tt_click_upper_non_content_layout"));
        this.u = (FrameLayout) findViewById(x.e(this, "tt_click_lower_non_content_layout"));
        this.ak = (LinearLayout) findViewById(x.e(this, "tt_reward_full_endcard_backup"));
        this.r = (TextView) findViewById(x.e(this, "tt_reward_ad_download"));
        this.h = (RelativeLayout) findViewById(x.e(this, "tt_video_reward_bar"));
        this.o = (TTRoundRectImageView) findViewById(x.e(this, "tt_reward_ad_icon"));
        this.p = (TextView) findViewById(x.e(this, "tt_reward_ad_appname"));
        this.q = (TextView) findViewById(x.e(this, "tt_comment_vertical"));
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(x.e(this, "tt_rb_score"));
        this.v = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.v.setStarFillNum(4);
            this.v.setStarImageWidth(ag.c(this, 15.0f));
            this.v.setStarImageHeight(ag.c(this, 14.0f));
            this.v.setStarImagePadding(ag.c(this, 4.0f));
            this.v.a();
        }
        i iVar2 = this.w;
        if (iVar2 != null && iVar2.w()) {
            this.j.setBackgroundColor(-16777216);
            this.l.setBackgroundColor(-16777216);
            if (this.w.f() == 1) {
                ag.a((View) this.s, 8);
                ag.a((View) this.t, 8);
                ag.a((View) this.u, 8);
                ag.a((View) this.h, 8);
                ag.a((View) this.p, 8);
                ag.a((View) this.o, 8);
                ag.a((View) this.q, 8);
                ag.a((View) this.v, 8);
                ag.a((View) this.m, 8);
                ag.a((View) this.n, 8);
                ag.a((View) this.j, 4);
                ag.a((View) this.l, 0);
                ag.a((View) this.r, 8);
                ag.a((View) this.ay, 8);
            }
            TopProxyLayout topProxyLayout2 = this.g;
            if (topProxyLayout2 != null) {
                topProxyLayout2.setShowSound(true);
            }
        }
        SSWebView sSWebView = this.j;
        if (sSWebView != null) {
            sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (Build.VERSION.SDK_INT >= 16) {
                        TTBaseVideoActivity.this.j.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    } else {
                        TTBaseVideoActivity.this.j.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                    int measuredWidth = TTBaseVideoActivity.this.j.getMeasuredWidth();
                    int measuredHeight = TTBaseVideoActivity.this.j.getMeasuredHeight();
                    if (TTBaseVideoActivity.this.j.getVisibility() == 0) {
                        TTBaseVideoActivity.this.a(measuredWidth, measuredHeight);
                    }
                }
            });
        }
        Q();
        if (!this.z) {
            ag.a((View) this.h, 4);
        }
        try {
            if (this.ah && (iVar = this.w) != null && iVar.T() == 5) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.r.getLayoutParams();
                layoutParams.height = (int) ag.a(this, 55.0f);
                layoutParams.topMargin = (int) ag.a(this, 20.0f);
                this.r.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.h.getLayoutParams();
                layoutParams2.bottomMargin = (int) ag.a(this, 12.0f);
                this.h.setLayoutParams(layoutParams2);
            }
        } catch (Throwable th) {
        }
        if (this.w != null && this.ah && this.s != null) {
            int c2 = ag.c(this);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.s.getLayoutParams();
            layoutParams3.width = c2;
            int i = (c2 * 9) / 16;
            layoutParams3.height = i;
            this.s.setLayoutParams(layoutParams3);
            this.aj = (ag.d(this) - i) / 2;
            q.e("TTBaseVideoActivity", "NonContentAreaHeight:" + this.aj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(boolean z) {
        Message message = new Message();
        message.what = 400;
        if (z) {
            e(10000);
        }
        ah ahVar = this.L;
        if (ahVar != null) {
            ahVar.sendMessageDelayed(message, 2000L);
        }
    }

    protected boolean f() {
        if (this.l == null) {
            return false;
        }
        String O = O();
        if (TextUtils.isEmpty(O)) {
            return false;
        }
        this.l.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.webview.c(this.i, this.J, this.w.P(), null) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.12
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                TTBaseVideoActivity.this.aK = str;
                if (TTBaseVideoActivity.this.aZ) {
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    tTBaseVideoActivity.a(tTBaseVideoActivity.aG, "loading_h5_success");
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTBaseVideoActivity.this.aZ = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTBaseVideoActivity.this.aZ = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                TTBaseVideoActivity.this.aZ = false;
            }
        });
        this.l.loadUrl(O);
        this.l.getSettings().setDisplayZoomControls(false);
        this.l.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.webview.b(this.J, this.x));
        this.l.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.14
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                if (TTBaseVideoActivity.this.H != null) {
                    TTBaseVideoActivity.this.H.e();
                }
                TTBaseVideoActivity.this.T();
            }
        });
        return true;
    }

    protected boolean g() {
        String str = this.Q;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        if (this.aI) {
            this.j.loadUrl(this.Q);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
        TextView textView = this.r;
        if (textView != null) {
            textView.setText(this.ai ? A() : z());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void j() {
        String str;
        if (this.q != null) {
            int i = 6870;
            if (this.w.Q() != null) {
                i = this.w.Q().e();
            }
            String a2 = x.a(this, "tt_comment_num");
            if (i > 10000) {
                str = (i / 1000) + "k";
            } else {
                str = String.valueOf(i);
            }
            this.q.setText(String.format(a2, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k() {
        if (this.o != null) {
            if (this.w.E() == null || TextUtils.isEmpty(this.w.E().a())) {
                this.o.setImageResource(x.d(this, "tt_ad_logo_small"));
            } else {
                com.bytedance.sdk.openadsdk.j.e.c().a(this.w.E().a(), this.o);
            }
        }
        if (this.p == null) {
            return;
        }
        if (this.T != 15 || this.w.Q() == null || TextUtils.isEmpty(this.w.Q().b())) {
            this.p.setText(this.w.M());
        } else {
            this.p.setText(this.w.Q().b());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l() {
        String i = this.w.B() != null ? this.w.B().i() : null;
        this.Q = i;
        if (!TextUtils.isEmpty(i) && this.T == 15) {
            if (this.Q.contains("?")) {
                this.Q += "&orientation=portrait";
                return;
            }
            this.Q += "?orientation=portrait";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m() {
        if (this.f != null) {
            i iVar = this.w;
            if (iVar == null || !iVar.u() || !this.w.x()) {
                this.f.a();
                return;
            }
            this.f.b();
            i iVar2 = this.w;
            if (iVar2 != null && iVar2.x() && this.w.v()) {
                this.L.sendMessageDelayed(c(2), 10000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
        if (!this.w.w() || this.w.f() != 1) {
            TextView textView = this.ay;
            if (textView != null) {
                ag.a((View) textView, 0);
                return;
            }
            return;
        }
        TextView textView2 = this.ay;
        if (textView2 != null) {
            ag.a((View) textView2, 8);
        }
    }

    protected void o() {
        TextView textView = this.ay;
        if (textView != null) {
            ag.a((View) textView, 8);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ag.a((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.8
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if (i == 0) {
                    try {
                        if (!TTBaseVideoActivity.this.isFinishing()) {
                            TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.8.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    ag.a((Activity) TTBaseVideoActivity.this);
                                }
                            }, 2500L);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.aU = bundle.getBoolean("is_bar_click_first");
        }
        try {
            this.f8422a = ag.b(this, ag.i(this));
        } catch (Throwable th) {
        }
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        } catch (Throwable th2) {
        }
        try {
            n.a(this);
        } catch (Throwable th3) {
        }
        if (bundle != null && bundle.getLong("video_current") > 0) {
            this.A = bundle.getLong("video_current", 0L);
        }
        this.i = this;
        g gVar = new g(getApplicationContext());
        this.av = gVar;
        gVar.a(this);
        this.aQ = this.av.g();
        q.b("onVolumeChanged", "onCreate >>>>>> mVolume = " + this.aQ);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ObjectAnimator objectAnimator = this.aS;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        RewardDislikeToast rewardDislikeToast = this.F;
        if (rewardDislikeToast != null) {
            rewardDislikeToast.b();
        }
        ah ahVar = this.L;
        if (ahVar != null) {
            ahVar.removeCallbacksAndMessages(null);
        }
        z.a(this.i, this.j);
        z.a(this.j);
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
        if (cVar != null) {
            cVar.l();
            this.G = null;
        }
        this.j = null;
        w wVar = this.I;
        if (wVar != null) {
            wVar.h();
        }
        this.aY.set(true);
        k kVar = this.x;
        if (kVar != null) {
            kVar.d();
        }
        g gVar = this.av;
        if (gVar != null) {
            gVar.f();
            this.av.a((f) null);
        }
        b(getApplicationContext());
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.aV = false;
        q.b("TTBaseVideoActivity", "onPause mIsActivityShow=" + this.aV + " mIsMute=" + this.R);
        SSWebView sSWebView = this.j;
        if (sSWebView != null) {
            sSWebView.onPause();
        }
        if (Build.VERSION.SDK_INT < 26 && !"C8817D".equals(this.ae) && !"M5".equals(this.ae) && !"R7t".equals(this.ae)) {
            try {
                if (t() && !this.aa.get()) {
                    this.G.i();
                }
            } catch (Throwable th) {
                q.e("TTBaseVideoActivity", "onPause throw Exception :" + th.getMessage());
            }
        } else if (!this.aa.get()) {
            Y();
        }
        w wVar = this.I;
        if (wVar != null) {
            wVar.g();
            this.I.b(false);
            b(false);
            a(true, false);
        }
        i iVar = this.w;
        if (iVar != null && iVar.f() == 1 && this.w.w()) {
            this.L.removeMessages(700);
            this.L.removeMessages(950);
            this.L.removeMessages(VastError.ERROR_CODE_UNKNOWN);
            this.L.removeMessages(600);
            c("go_background");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        i iVar;
        this.aV = true;
        q.b("TTBaseVideoActivity", "onResume mIsActivityShow=" + this.aV + " mIsMute=" + this.R);
        if (this.g != null && X()) {
            U();
        }
        if (i.b(this.w) || i.c(this.w)) {
            if (this.aQ == 0) {
                this.R = true;
            }
            if (this.R) {
                this.av.a(true);
                a(true);
            }
        }
        super.onResume();
        SSWebView sSWebView = this.j;
        if (sSWebView != null) {
            sSWebView.onResume();
        }
        g gVar = this.av;
        if (gVar != null) {
            gVar.a(this);
            this.av.e();
        }
        if (!this.W.get()) {
            if (Build.VERSION.SDK_INT >= 26 || "C8817D".equals(this.ae) || "M5".equals(this.ae) || "R7t".equals(this.ae)) {
                if (!this.aa.get()) {
                    D();
                }
            } else if (u() && !this.aa.get()) {
                this.G.k();
            }
        }
        w wVar = this.I;
        if (wVar != null) {
            wVar.f();
            SSWebView sSWebView2 = this.j;
            if (sSWebView2 != null) {
                if (sSWebView2.getVisibility() == 0) {
                    this.I.b(true);
                    b(true);
                    a(false, true);
                } else {
                    this.I.b(false);
                    b(false);
                    a(true, false);
                }
            }
        }
        k kVar = this.x;
        if (kVar != null) {
            kVar.b();
        }
        if (this.aF.get() && (iVar = this.w) != null && iVar.f() == 1 && this.w.w()) {
            c("return_foreground");
            com.bytedance.sdk.openadsdk.core.widget.a aVar = this.ad;
            if ((aVar == null || (aVar != null && !aVar.isShowing())) && this.aA > 0) {
                Message obtain = Message.obtain();
                if (this.aD == this.aE) {
                    obtain.what = VastError.ERROR_CODE_UNKNOWN;
                } else {
                    obtain.what = 950;
                }
                obtain.arg1 = this.aA;
                obtain.arg2 = this.aE;
                this.L.sendMessage(obtain);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        try {
            i iVar = this.w;
            bundle2.putString("material_meta", iVar != null ? iVar.ag().toString() : null);
            bundle2.putString("multi_process_meta_md5", this.y);
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
            bundle2.putLong("video_current", cVar == null ? this.A : cVar.n());
            bundle2.putString("video_cache_url", this.B);
            bundle2.putInt("orientation", this.C);
            bundle2.putBoolean("is_mute", this.R);
            bundle2.putBoolean("is_bar_click_first", this.aU);
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        q.b("TTBaseVideoActivity", "onStop mIsMute=" + this.R + " mLast=" + this.av.b() + " mVolume=" + this.aQ);
        k kVar = this.x;
        if (kVar != null) {
            kVar.c();
        }
        i iVar = this.w;
        if (iVar != null && iVar.f() == 1 && this.w.w()) {
            this.L.removeMessages(700);
            this.L.removeMessages(950);
            this.L.removeMessages(VastError.ERROR_CODE_UNKNOWN);
            this.L.removeMessages(600);
            c("go_background");
        }
        if (this.R) {
            runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    if (TTBaseVideoActivity.this.av.b() > 0) {
                        TTBaseVideoActivity.this.av.a(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        String str;
        if (this.al != null) {
            if (this.w.E() == null || TextUtils.isEmpty(this.w.E().a())) {
                this.al.setImageResource(x.d(this, "tt_ad_logo_small"));
            } else {
                com.bytedance.sdk.openadsdk.j.e.c().a(this.w.E().a(), this.al);
            }
        }
        if (this.am != null) {
            if (this.w.Q() == null || TextUtils.isEmpty(this.w.Q().b())) {
                this.am.setText(this.w.M());
            } else {
                this.am.setText(this.w.Q().b());
            }
        }
        if (this.ao != null) {
            int i = 6870;
            if (this.w.Q() != null) {
                i = this.w.Q().e();
            }
            String a2 = x.a(this, "tt_comment_num_backup");
            if (i > 10000) {
                str = (i / 1000) + "k";
            } else {
                str = String.valueOf(i);
            }
            this.ao.setText(String.format(a2, str));
        }
        TextView textView = this.ap;
        if (textView != null) {
            textView.setText(z());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q() {
        if (this.h != null) {
            Keyframe ofFloat = Keyframe.ofFloat(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            Keyframe ofFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
            Keyframe ofFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
            Keyframe ofFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
            Keyframe ofFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
            Keyframe ofFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.h, PropertyValuesHolder.ofKeyframe("scaleX", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6), PropertyValuesHolder.ofKeyframe("scaleY", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6));
            this.aS = ofPropertyValuesHolder;
            ofPropertyValuesHolder.setDuration(1000L);
            this.aS.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.ag)) {
            hashMap.put("rit_scene", this.ag);
        }
        w wVar = new w(this.i);
        this.I = wVar;
        wVar.b(this.j).a(this.w).a(this.M).a(this.n).b(this.N).b(this.O).a(this.aw).a(this.aN).a(this.aO).a(this.aP).c(af.f(this.w)).a(this.j).a(hashMap);
        w wVar2 = new w(this);
        this.J = wVar2;
        wVar2.b(this.l).a(this.w).a(this.M).b(this.N).b(this.O).a(this.l).c(af.f(this.w));
        this.I.a(new com.bytedance.sdk.openadsdk.h.b() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.19
            @Override // com.bytedance.sdk.openadsdk.h.b
            public void a(boolean z, int i, String str) {
                q.b("end card load finish: ", "code=" + i + " msg=" + str + " isRenderSuc=" + z);
                if (z) {
                    TTBaseVideoActivity.this.ar = true;
                }
            }
        });
        this.I.a(new h() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.20
            @Override // com.bytedance.sdk.openadsdk.h.h
            public void a() {
                SSWebView sSWebView = TTBaseVideoActivity.this.k.get();
                if (sSWebView == null) {
                    q.b("TTBaseVideoActivity", "webView has destroy when onPauseWebView");
                    return;
                }
                sSWebView.onPause();
                q.b("TTBaseVideoActivity", "js make webView onPause OK");
            }

            @Override // com.bytedance.sdk.openadsdk.h.h
            public void b() {
                SSWebView sSWebView = TTBaseVideoActivity.this.k.get();
                if (sSWebView == null) {
                    q.b("TTBaseVideoActivity", "webView has destroy when onPauseWebViewTimers");
                    return;
                }
                sSWebView.pauseTimers();
                q.b("TTBaseVideoActivity", "js make webView pauseTimers OK");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s() {
        i iVar;
        if ((Build.VERSION.SDK_INT < 17 || !isDestroyed()) && !isFinishing()) {
            this.aJ = "endcard";
            this.aa.set(false);
            this.ab.set(false);
            b();
            com.bytedance.sdk.openadsdk.core.widget.a aVar = this.ad;
            if (aVar != null && aVar.isShowing()) {
                this.ad.dismiss();
            }
            RewardDislikeToast rewardDislikeToast = this.F;
            if (rewardDislikeToast != null) {
                rewardDislikeToast.a();
            }
            if (this.g != null) {
                if (i.b(this.w)) {
                    this.g.setShowSkip(true);
                } else {
                    this.g.setShowSkip(false);
                }
                U();
                if (((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) && i.a(this.w)) {
                    this.g.setShowSound(true);
                }
            }
            if (!this.W.getAndSet(true)) {
                if (i.a(this.w, this.aq.get(), this.ar) || (iVar = this.w) == null || iVar.w()) {
                    ag.a(this.j, (float) BitmapDescriptorFactory.HUE_RED);
                    ag.a(this.m, (float) BitmapDescriptorFactory.HUE_RED);
                    ag.a(this.n, (float) BitmapDescriptorFactory.HUE_RED);
                    ag.a((View) this.j, 0);
                    i iVar2 = this.w;
                    if (iVar2 == null || !iVar2.w()) {
                        i iVar3 = this.w;
                        if (iVar3 != null && !iVar3.w()) {
                            int m = n.h().m(String.valueOf(this.V));
                            if (m == -1) {
                                V();
                            } else if (m >= 0) {
                                this.L.sendEmptyMessageDelayed(600, m);
                            }
                        }
                    } else {
                        int p = n.h().p(String.valueOf(this.V));
                        if (this.w.f() == 1) {
                            p = (n.h().o(String.valueOf(this.V)) + 1) * 1000;
                        }
                        if (p == -1) {
                            V();
                        } else if (p >= 0) {
                            this.L.sendEmptyMessageDelayed(600, p);
                        }
                    }
                    this.L.sendEmptyMessageDelayed(500, 20L);
                    a(this.R, true);
                    b(true);
                    o();
                    w wVar = this.I;
                    if (wVar != null) {
                        wVar.b(true);
                        return;
                    }
                    return;
                }
                q.b("TTBaseVideoActivity", "isEndCardLoadSuc=" + this.ar + " so load back up end card");
                ag.a((View) this.j, 8);
                ag.a((View) this.ak, 0);
                V();
                Z();
                S();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean t() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
        return (cVar == null || cVar.u() == null || !this.G.u().g()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean u() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
        return (cVar == null || cVar.u() == null || !this.G.u().i()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean v() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
        return cVar != null && cVar.x();
    }

    boolean w() {
        i iVar = this.w;
        return iVar != null && iVar.A() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        i iVar;
        i iVar2;
        i iVar3 = this.w;
        if (iVar3 != null) {
            final String str = this instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad";
            com.bytedance.sdk.openadsdk.core.b.e eVar = new com.bytedance.sdk.openadsdk.core.b.e(this, iVar3, str, this.O) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.2
                @Override // com.bytedance.sdk.openadsdk.core.b.e
                public void a_(View view, int i, int i2, int i3, int i4) {
                    TTBaseVideoActivity.this.a(view, i, i2, i3, i4);
                    TTBaseVideoActivity.this.aU = view.getId() == x.e(TTBaseVideoActivity.this, "tt_video_reward_bar");
                    TTBaseVideoActivity.this.aM = view;
                    if (view.getId() == x.e(TTBaseVideoActivity.this, "tt_playable_play") && TTBaseVideoActivity.this.w.x()) {
                        HashMap hashMap = new HashMap();
                        if (TTBaseVideoActivity.this.w.B() != null) {
                            hashMap.put("playable_url", TTBaseVideoActivity.this.w.B().i());
                        }
                        TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                        com.bytedance.sdk.openadsdk.d.e.g(tTBaseVideoActivity, tTBaseVideoActivity.w, str, "click_playable_download_button_loading", hashMap);
                    }
                    if (TTBaseVideoActivity.this.H == null) {
                        TTBaseVideoActivity.this.a(view);
                    } else if (view.getId() == x.e(TTBaseVideoActivity.this, "tt_rb_score")) {
                        TTBaseVideoActivity.this.a("click_play_star_level", (JSONObject) null);
                    } else if (view.getId() == x.e(TTBaseVideoActivity.this, "tt_comment_vertical")) {
                        TTBaseVideoActivity.this.a("click_play_star_nums", (JSONObject) null);
                    } else if (view.getId() == x.e(TTBaseVideoActivity.this, "tt_reward_ad_appname")) {
                        TTBaseVideoActivity.this.a("click_play_source", (JSONObject) null);
                    } else if (view.getId() == x.e(TTBaseVideoActivity.this, "tt_reward_ad_icon")) {
                        TTBaseVideoActivity.this.a("click_play_logo", (JSONObject) null);
                    }
                }
            };
            this.aT = eVar;
            eVar.a(this.h);
            if (!TextUtils.isEmpty(this.ag)) {
                HashMap hashMap = new HashMap();
                hashMap.put("rit_scene", this.ag);
                this.aT.a(hashMap);
            }
            com.a.a.a.a.a.c cVar = this.H;
            if (cVar != null) {
                this.aT.a(cVar);
            }
            PlayableLoadingView playableLoadingView = this.f;
            if (!(playableLoadingView == null || playableLoadingView.getPlayView() == null || (iVar2 = this.w) == null || !iVar2.x())) {
                this.f.getPlayView().setOnClickListener(this.aT);
                this.f.getPlayView().setOnTouchListener(this.aT);
            }
            i iVar4 = this.w;
            if (!(iVar4 == null || iVar4.m() == null)) {
                if (this.w.m().e) {
                    this.r.setOnClickListener(this.aT);
                    this.r.setOnTouchListener(this.aT);
                } else {
                    this.r.setOnClickListener(this.bb);
                }
                if (this.ah) {
                    if (this.w.m().f8868a) {
                        ag.a((View) this.h, (View.OnClickListener) this.aT, "TTBaseVideoActivity#mRlDownloadBar");
                        ag.a((View) this.h, (View.OnTouchListener) this.aT, "TTBaseVideoActivity#mRlDownloadBar");
                        this.p.setOnClickListener(this.aT);
                        this.p.setOnTouchListener(this.aT);
                        this.q.setOnClickListener(this.aT);
                        this.q.setOnTouchListener(this.aT);
                        this.v.setOnClickListener(this.aT);
                        this.v.setOnTouchListener(this.aT);
                        this.o.setOnClickListener(this.aT);
                        this.o.setOnTouchListener(this.aT);
                    } else {
                        ag.a(this.h, this.bb, "TTBaseVideoActivity#mRlDownloadBar");
                        this.p.setOnClickListener(this.bb);
                        this.q.setOnClickListener(this.bb);
                        this.v.setOnClickListener(this.bb);
                        this.o.setOnClickListener(this.bb);
                    }
                } else if (this.w.m().f8870c) {
                    ag.a((View) this.h, (View.OnClickListener) this.aT, "TTBaseVideoActivity#mRlDownloadBar");
                    ag.a((View) this.h, (View.OnTouchListener) this.aT, "TTBaseVideoActivity#mRlDownloadBar");
                } else {
                    ag.a(this.h, this.bb, "TTBaseVideoActivity#mRlDownloadBar");
                }
            }
            if (!(this.s == null || (iVar = this.w) == null || iVar.m() == null)) {
                if (this.w.m().f) {
                    this.s.setOnClickListener(this.aT);
                } else {
                    this.s.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TTBaseVideoActivity.this.a(view);
                            TTBaseVideoActivity.this.b(view);
                        }
                    });
                }
            }
            if (this.ah) {
                if (!(this.w.m() == null || (frameLayout2 = this.t) == null)) {
                    ag.a((View) frameLayout2, 0);
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.t.getLayoutParams();
                    layoutParams.height = this.aj;
                    this.t.setLayoutParams(layoutParams);
                    if (this.w.m().f8869b) {
                        this.t.setOnClickListener(this.aT);
                        this.t.setOnTouchListener(this.aT);
                    } else {
                        this.t.setOnClickListener(this.bb);
                    }
                }
                if (!(this.w.m() == null || (frameLayout = this.u) == null)) {
                    ag.a((View) frameLayout, 0);
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.u.getLayoutParams();
                    layoutParams2.height = this.aj;
                    this.u.setLayoutParams(layoutParams2);
                    if (this.w.m().f8871d) {
                        this.u.setOnClickListener(this.aT);
                        this.u.setOnTouchListener(this.aT);
                    } else {
                        this.u.setOnClickListener(this.bb);
                    }
                }
            }
            TextView textView = this.ay;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        q.c("mAdLogo", "mAdLogo,,,,,,,onClick,,,,,");
                        TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                        try {
                            TTWebsiteActivity.a(tTBaseVideoActivity, tTBaseVideoActivity.w, tTBaseVideoActivity instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad");
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
            ag.a(this.ak, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            }, "TTBaseVideoActivity#mLLEndCardBackup");
            this.ap.setOnClickListener(this.aT);
            this.ap.setOnTouchListener(this.aT);
        }
    }

    protected JSONObject y() {
        JSONObject jSONObject;
        int i;
        long j;
        try {
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c cVar = this.G;
            if (cVar != null) {
                j = cVar.q();
                i = this.G.r();
            } else {
                j = 0;
                i = 0;
            }
            jSONObject = new JSONObject();
        } catch (Throwable th) {
            jSONObject = null;
        }
        try {
            jSONObject.put(VastIconXmlManager.DURATION, j);
            jSONObject.put("percent", i);
            return jSONObject;
        } catch (Throwable th2) {
            return jSONObject;
        }
    }

    protected String z() {
        String a2 = x.a(this, "tt_video_download_apk");
        i iVar = this.w;
        if (iVar == null) {
            return a2;
        }
        if (!TextUtils.isEmpty(iVar.O())) {
            a2 = this.w.O();
        } else if (this.w.D() != 4) {
            a2 = x.a(this, "tt_video_mobile_go_detail");
        }
        return a2;
    }
}
