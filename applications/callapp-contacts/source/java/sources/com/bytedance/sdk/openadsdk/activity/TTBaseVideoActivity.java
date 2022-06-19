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
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.C4804z;
import com.bytedance.sdk.openadsdk.core.p151b.AbstractC4499e;
import com.bytedance.sdk.openadsdk.core.p154e.C4548d;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p157h.C4588e;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.p159b.C4671a;
import com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a;
import com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4687b;
import com.bytedance.sdk.openadsdk.core.video.p161d.C4699d;
import com.bytedance.sdk.openadsdk.core.widget.C4776c;
import com.bytedance.sdk.openadsdk.core.widget.DialogC4766a;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4785a;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4797b;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4798c;
import com.bytedance.sdk.openadsdk.core.widget.webview.SSWebView;
import com.bytedance.sdk.openadsdk.multipro.aidl.C5072a;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.AbstractBinderC5075a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4918a;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4919b;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4921d;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4922e;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4923f;
import com.bytedance.sdk.openadsdk.p170h.AbstractC4926h;
import com.bytedance.sdk.openadsdk.p170h.C4924g;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
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
public abstract class TTBaseVideoActivity extends Activity implements AbstractC4687b, AbstractC4923f, HomeWatcherReceiver.AbstractC5431a, HandlerC5446ah.AbstractC5447a {

    /* renamed from: b */
    static final String f15614b = C5486x.m32071a(C4600n.m34815a(), "tt_txt_skip");

    /* renamed from: c */
    static final String f15615c = C5486x.m32071a(C4600n.m34815a(), "tt_feedback_submit_text");

    /* renamed from: d */
    static final String f15616d = C5486x.m32071a(C4600n.m34815a(), "tt_feedback_thank_text") + StringUtils.f67179LF + C5486x.m32071a(C4600n.m34815a(), "tt_feedback_experience_text");

    /* renamed from: A */
    long f15617A;

    /* renamed from: B */
    String f15618B;

    /* renamed from: C */
    int f15619C;

    /* renamed from: E */
    RewardDislikeDialog f15621E;

    /* renamed from: F */
    RewardDislikeToast f15622F;

    /* renamed from: G */
    AbstractC4719c f15623G;

    /* renamed from: H */
    AbstractC3234c f15624H;

    /* renamed from: I */
    C4754w f15625I;

    /* renamed from: J */
    C4754w f15626J;

    /* renamed from: K */
    HomeWatcherReceiver f15627K;

    /* renamed from: M */
    String f15629M;

    /* renamed from: N */
    String f15630N;

    /* renamed from: O */
    int f15631O;

    /* renamed from: P */
    int f15632P;

    /* renamed from: Q */
    protected String f15633Q;

    /* renamed from: S */
    int f15635S;

    /* renamed from: V */
    int f15638V;

    /* renamed from: aG */
    String f15650aG;

    /* renamed from: aH */
    boolean f15651aH;

    /* renamed from: aI */
    protected boolean f15652aI;

    /* renamed from: aJ */
    String f15653aJ;

    /* renamed from: aK */
    String f15654aK;

    /* renamed from: aL */
    protected long f15655aL;

    /* renamed from: aM */
    View f15656aM;

    /* renamed from: aN */
    protected AbstractC4918a f15657aN;

    /* renamed from: aO */
    protected AbstractC4922e f15658aO;

    /* renamed from: aP */
    protected AbstractC4921d f15659aP;

    /* renamed from: aQ */
    protected int f15660aQ;

    /* renamed from: aR */
    ProgressBar f15661aR;

    /* renamed from: aS */
    private ObjectAnimator f15662aS;

    /* renamed from: aT */
    private AbstractC4499e f15663aT;

    /* renamed from: aU */
    private boolean f15664aU;

    /* renamed from: aV */
    private boolean f15665aV;

    /* renamed from: aW */
    private boolean f15666aW;

    /* renamed from: aX */
    private boolean f15667aX;

    /* renamed from: aY */
    private final AtomicBoolean f15668aY;

    /* renamed from: aZ */
    private boolean f15669aZ;

    /* renamed from: ad */
    protected DialogC4766a f15673ad;

    /* renamed from: af */
    protected IListenerManager f15675af;

    /* renamed from: ag */
    protected String f15676ag;

    /* renamed from: ak */
    LinearLayout f15680ak;

    /* renamed from: al */
    TTRoundRectImageView f15681al;

    /* renamed from: am */
    TextView f15682am;

    /* renamed from: an */
    TTRatingBar f15683an;

    /* renamed from: ao */
    TextView f15684ao;

    /* renamed from: ap */
    TextView f15685ap;

    /* renamed from: av */
    protected C4924g f15691av;

    /* renamed from: aw */
    boolean f15692aw;

    /* renamed from: ax */
    boolean f15693ax;

    /* renamed from: ay */
    TextView f15694ay;

    /* renamed from: ba */
    private AtomicBoolean f15696ba;

    /* renamed from: bb */
    private View.OnClickListener f15697bb;

    /* renamed from: bc */
    private boolean f15698bc;

    /* renamed from: e */
    View f15699e;

    /* renamed from: f */
    PlayableLoadingView f15700f;

    /* renamed from: g */
    TopProxyLayout f15701g;

    /* renamed from: h */
    RelativeLayout f15702h;

    /* renamed from: i */
    Context f15703i;

    /* renamed from: j */
    protected SSWebView f15704j;

    /* renamed from: k */
    protected WeakReference<SSWebView> f15705k;

    /* renamed from: l */
    SSWebView f15706l;

    /* renamed from: m */
    ImageView f15707m;

    /* renamed from: n */
    RelativeLayout f15708n;

    /* renamed from: o */
    TTRoundRectImageView f15709o;

    /* renamed from: p */
    TextView f15710p;

    /* renamed from: q */
    TextView f15711q;

    /* renamed from: r */
    TextView f15712r;

    /* renamed from: s */
    FrameLayout f15713s;

    /* renamed from: t */
    FrameLayout f15714t;

    /* renamed from: u */
    FrameLayout f15715u;

    /* renamed from: v */
    TTRatingBar f15716v;

    /* renamed from: w */
    C4557i f15717w;

    /* renamed from: x */
    C4822k f15718x;

    /* renamed from: y */
    String f15719y;

    /* renamed from: a */
    protected int f15643a = 0;

    /* renamed from: z */
    boolean f15720z = true;

    /* renamed from: D */
    boolean f15620D = false;

    /* renamed from: L */
    final HandlerC5446ah f15628L = new HandlerC5446ah(Looper.getMainLooper(), this);

    /* renamed from: R */
    boolean f15634R = false;

    /* renamed from: T */
    int f15636T = 5;

    /* renamed from: U */
    int f15637U = 3;

    /* renamed from: W */
    final AtomicBoolean f15639W = new AtomicBoolean(false);

    /* renamed from: X */
    final AtomicBoolean f15640X = new AtomicBoolean(false);

    /* renamed from: Y */
    final AtomicBoolean f15641Y = new AtomicBoolean(false);

    /* renamed from: Z */
    final AtomicBoolean f15642Z = new AtomicBoolean(false);

    /* renamed from: aa */
    final AtomicBoolean f15670aa = new AtomicBoolean(false);

    /* renamed from: ab */
    final AtomicBoolean f15671ab = new AtomicBoolean(false);

    /* renamed from: ac */
    protected final AtomicBoolean f15672ac = new AtomicBoolean(false);

    /* renamed from: ae */
    protected final String f15674ae = Build.MODEL;

    /* renamed from: ah */
    protected boolean f15677ah = false;

    /* renamed from: ai */
    protected boolean f15678ai = false;

    /* renamed from: aj */
    protected int f15679aj = 0;

    /* renamed from: aq */
    AtomicBoolean f15686aq = new AtomicBoolean(true);

    /* renamed from: ar */
    boolean f15687ar = false;

    /* renamed from: as */
    int f15688as = 0;

    /* renamed from: at */
    String f15689at = "";

    /* renamed from: au */
    int f15690au = 7;

    /* renamed from: az */
    long f15695az = 0;

    /* renamed from: aA */
    int f15644aA = 0;

    /* renamed from: aB */
    long f15645aB = 0;

    /* renamed from: aC */
    long f15646aC = 0;

    /* renamed from: aD */
    int f15647aD = 0;

    /* renamed from: aE */
    int f15648aE = 0;

    /* renamed from: aF */
    AtomicBoolean f15649aF = new AtomicBoolean(false);

    /* renamed from: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity$a.class */
    public class C4291a {

        /* renamed from: b */
        private int f15744b;

        /* renamed from: c */
        private int f15745c;

        /* renamed from: d */
        private int f15746d;

        /* renamed from: e */
        private int f15747e;

        /* renamed from: f */
        private long f15748f;

        /* renamed from: g */
        private long f15749g;

        C4291a(int i, int i2, int i3, int i4) {
            TTBaseVideoActivity.this = r4;
            this.f15744b = i;
            this.f15745c = i2;
            this.f15746d = i3;
            this.f15747e = i4;
        }

        /* renamed from: a */
        public void m35928a(long j) {
            this.f15748f = j;
        }
    }

    public TTBaseVideoActivity() {
        this.f15650aG = this instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad";
        this.f15651aH = false;
        this.f15652aI = true;
        this.f15665aV = false;
        this.f15653aJ = "video_player";
        this.f15654aK = "";
        this.f15666aW = false;
        this.f15667aX = false;
        this.f15668aY = new AtomicBoolean(false);
        this.f15669aZ = true;
        this.f15696ba = new AtomicBoolean(false);
        this.f15656aM = null;
        this.f15697bb = new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTBaseVideoActivity.this.m35994a(view);
                TTBaseVideoActivity.this.m35970b(view);
            }
        };
        this.f15698bc = false;
        this.f15657aN = new AbstractC4918a() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.10
            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4918a
            /* renamed from: a */
            public int mo33571a() {
                int measuredHeight = TTBaseVideoActivity.this.f15704j != null ? TTBaseVideoActivity.this.f15704j.getMeasuredHeight() : -1;
                C5478q.m32109c("TTAndroidObject", "mWebView>>>>height=".concat(String.valueOf(measuredHeight)));
                int i = measuredHeight;
                if (measuredHeight <= 0) {
                    i = C5443ag.m32215d(TTBaseVideoActivity.this.f15703i);
                }
                return i;
            }

            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4918a
            /* renamed from: b */
            public int mo33570b() {
                int measuredWidth = TTBaseVideoActivity.this.f15704j != null ? TTBaseVideoActivity.this.f15704j.getMeasuredWidth() : -1;
                C5478q.m32109c("TTAndroidObject", "mWebView>>>>width=".concat(String.valueOf(measuredWidth)));
                int i = measuredWidth;
                if (measuredWidth <= 0) {
                    i = C5443ag.m32218c(TTBaseVideoActivity.this.f15703i);
                }
                return i;
            }
        };
        this.f15658aO = new AbstractC4922e() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.11
            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4922e
            /* renamed from: a */
            public void mo33566a() {
                TTBaseVideoActivity.this.m35976aa();
            }
        };
        this.f15659aP = new AbstractC4921d() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.13
            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4921d
            /* renamed from: a */
            public void mo33567a() {
                if (TTBaseVideoActivity.this.isFinishing()) {
                    return;
                }
                if ((TTBaseVideoActivity.this.f15717w != null && !TTBaseVideoActivity.this.f15717w.m35139u()) || TTBaseVideoActivity.this.f15717w == null || !TTBaseVideoActivity.this.f15717w.m35138v()) {
                    return;
                }
                TTBaseVideoActivity.this.f15628L.removeMessages(800);
                TTBaseVideoActivity.this.f15628L.sendMessage(TTBaseVideoActivity.this.m35964c(1));
            }
        };
        this.f15660aQ = -1;
    }

    /* renamed from: M */
    private int m36012M() {
        Resources resources = getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM));
        }
        return 0;
    }

    /* renamed from: N */
    private int m36011N() {
        Resources resources = getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", Constants.ANDROID_PLATFORM));
        }
        return 0;
    }

    /* renamed from: O */
    private String m36010O() {
        String m34881j = C4600n.m34805h().m34881j();
        C5478q.m32109c("Playable", "getPlayableLoadH5Url->loadH5Url=".concat(String.valueOf(m34881j)));
        String str = m34881j;
        if (!TextUtils.isEmpty(m34881j)) {
            C4557i c4557i = this.f15717w;
            str = m34881j;
            if (c4557i != null) {
                if (c4557i.m35230Q() == null) {
                    str = m34881j;
                } else {
                    String str2 = this.f15636T == 15 ? EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT : EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE;
                    String m35335b = this.f15717w.m35230Q().m35335b();
                    int m35329d = this.f15717w.m35230Q().m35329d();
                    int m35328e = this.f15717w.m35230Q().m35328e();
                    String m35254a = this.f15717w.m35242E().m35254a();
                    String m35231P = this.f15717w.m35231P();
                    String m35332c = this.f15717w.m35230Q().m35332c();
                    String m35338a = this.f15717w.m35230Q().m35338a();
                    String m35335b2 = this.f15717w.m35230Q().m35335b();
                    String m35234M = this.f15717w.m35234M();
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("appname=");
                    stringBuffer.append(URLEncoder.encode(m35335b));
                    stringBuffer.append("&stars=");
                    stringBuffer.append(m35329d);
                    stringBuffer.append("&comments=");
                    stringBuffer.append(m35328e);
                    stringBuffer.append("&icon=");
                    stringBuffer.append(URLEncoder.encode(m35254a));
                    stringBuffer.append("&downloading=true&id=");
                    stringBuffer.append(URLEncoder.encode(m35231P));
                    stringBuffer.append("&pkg_name=");
                    stringBuffer.append(URLEncoder.encode(m35332c));
                    stringBuffer.append("&download_url=");
                    stringBuffer.append(URLEncoder.encode(m35338a));
                    stringBuffer.append("&name=");
                    stringBuffer.append(URLEncoder.encode(m35335b2));
                    stringBuffer.append("&orientation=");
                    stringBuffer.append(str2);
                    stringBuffer.append("&apptitle=");
                    stringBuffer.append(URLEncoder.encode(m35234M));
                    str = m34881j + "?" + stringBuffer.toString();
                    C5478q.m32109c("Playable", "Playable-loadH5Url=".concat(String.valueOf(str)));
                }
            }
        }
        return str;
    }

    /* renamed from: P */
    public void m36009P() {
        SSWebView sSWebView;
        if (this.f15696ba.getAndSet(true) || (sSWebView = this.f15704j) == null || this.f15706l == null) {
            return;
        }
        C5443ag.m32228a((View) sSWebView, 0);
        C5443ag.m32228a((View) this.f15706l, 8);
    }

    /* renamed from: Q */
    private void m36008Q() {
        this.f15680ak = (LinearLayout) findViewById(C5486x.m32066e(this, "tt_reward_full_endcard_backup"));
        this.f15681al = (TTRoundRectImageView) findViewById(C5486x.m32066e(this, "tt_reward_ad_icon_backup"));
        this.f15682am = (TextView) findViewById(C5486x.m32066e(this, "tt_reward_ad_appname_backup"));
        this.f15683an = (TTRatingBar) findViewById(C5486x.m32066e(this, "tt_rb_score_backup"));
        this.f15684ao = (TextView) findViewById(C5486x.m32066e(this, "tt_comment_backup"));
        this.f15685ap = (TextView) findViewById(C5486x.m32066e(this, "tt_reward_ad_download_backup"));
        TTRatingBar tTRatingBar = this.f15683an;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.f15683an.setStarFillNum(4);
            this.f15683an.setStarImageWidth(C5443ag.m32217c(this, 16.0f));
            this.f15683an.setStarImageHeight(C5443ag.m32217c(this, 16.0f));
            this.f15683an.setStarImagePadding(C5443ag.m32217c(this, 4.0f));
            this.f15683an.m34062a();
        }
    }

    /* renamed from: S */
    private void m36007S() {
        C4557i c4557i = this.f15717w;
        if (c4557i == null) {
            return;
        }
        int m32278d = C5438af.m32278d(c4557i.m35228S());
        C4931b m33522e = C4931b.m33530b().m33533a(this.f15690au).m33526c(String.valueOf(m32278d)).m33522e(C5438af.m32262h(this.f15717w.m35228S()));
        m33522e.m33529b(this.f15688as).m33520f(this.f15689at);
        m33522e.m33518g(this.f15717w.m35228S()).m33524d(this.f15717w.m35231P());
        C4927a.m33549a().m33535f(m33522e);
    }

    /* renamed from: U */
    private void m36006U() {
        if (this.f15717w.m35198ae()) {
            this.f15701g.setShowDislike(true);
        } else {
            this.f15701g.setShowDislike(false);
        }
    }

    /* renamed from: V */
    private void m36005V() {
        this.f15701g.mo35547c();
        C5443ag.m32228a((View) this.f15707m, 0);
        C5443ag.m32228a((View) this.f15708n, 0);
    }

    /* renamed from: W */
    private void m36004W() {
        if (!m35932w()) {
            return;
        }
        C4291a c4291a = new C4291a(0, 0, 0, 0);
        c4291a.m35928a(System.currentTimeMillis());
        m35993a(c4291a, this.f15702h, null, true);
    }

    /* renamed from: X */
    private boolean m36003X() {
        if ((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) {
            return this.f15639W.get();
        }
        return true;
    }

    /* renamed from: Y */
    private void m36002Y() {
        AbstractC4719c abstractC4719c = this.f15623G;
        if (abstractC4719c == null || abstractC4719c.mo34249u() == null) {
            return;
        }
        this.f15617A = this.f15623G.mo34256n();
        if (!this.f15623G.mo34249u().m34422h() && this.f15623G.mo34249u().m34418l()) {
            return;
        }
        this.f15623G.mo34264i();
        this.f15623G.mo34258l();
        this.f15698bc = true;
    }

    /* renamed from: Z */
    private void m36001Z() {
        TopProxyLayout topProxyLayout = this.f15701g;
        if (topProxyLayout != null) {
            topProxyLayout.setShowSound(false);
        }
    }

    /* renamed from: a */
    public void m35994a(View view) {
        if (view == null) {
            return;
        }
        if (view.getId() == C5486x.m32066e(this, "tt_rb_score")) {
            m35980a("click_play_star_level", (JSONObject) null);
        } else if (view.getId() == C5486x.m32066e(this, "tt_comment_vertical")) {
            m35980a("click_play_star_nums", (JSONObject) null);
        } else if (view.getId() == C5486x.m32066e(this, "tt_reward_ad_appname")) {
            m35980a("click_play_source", (JSONObject) null);
        } else if (view.getId() == C5486x.m32066e(this, "tt_reward_ad_icon")) {
            m35980a("click_play_logo", (JSONObject) null);
        } else if (view.getId() == C5486x.m32066e(this, "tt_video_reward_bar") || view.getId() == C5486x.m32066e(this, "tt_click_lower_non_content_layout") || view.getId() == C5486x.m32066e(this, "tt_click_upper_non_content_layout")) {
            m35980a("click_start_play_bar", m35930y());
        } else if (view.getId() == C5486x.m32066e(this, "tt_reward_ad_download")) {
            m35980a("click_start_play", m35930y());
        } else if (view.getId() == C5486x.m32066e(this, "tt_video_reward_container")) {
            m35980a("click_video", m35930y());
        } else if (view.getId() != C5486x.m32066e(this, "tt_reward_ad_download_backup")) {
        } else {
            m35980a("fallback_endcard_click", m35930y());
        }
    }

    /* renamed from: a */
    private void m35993a(C4291a c4291a, View view, View view2, boolean z) {
        HashMap hashMap;
        if (!TextUtils.isEmpty(this.f15676ag)) {
            hashMap = new HashMap();
            hashMap.put("rit_scene", this.f15676ag);
        } else {
            hashMap = null;
        }
        String str = this instanceof TTFullScreenVideoActivity ? "fullscreen_interstitial_ad" : "";
        if (this instanceof TTRewardVideoActivity) {
            str = AdType.REWARDED_VIDEO;
        }
        if (c4291a == null || this.f15717w == null) {
            return;
        }
        C4811e.m33875a(this.f15703i, "click_other", this.f15717w, m35997a(c4291a.f15744b, c4291a.f15745c, c4291a.f15746d, c4291a.f15747e, c4291a.f15748f, c4291a.f15749g, view, view2), str, z, hashMap);
    }

    /* renamed from: a */
    private void m35985a(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        C4785a.m33991a(this.f15703i).m33988a(false).m33986b(false).m33989a(sSWebView);
        sSWebView.getSettings().setUserAgentString(C5472n.m32126a(sSWebView, this.f15632P));
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        sSWebView.getSettings().setMixedContentMode(0);
    }

    /* renamed from: a */
    public void m35983a(String str, String str2) {
        C4811e.m33867b(this, this.f15717w, str, str2, (JSONObject) null);
    }

    /* renamed from: a */
    public void m35980a(String str, JSONObject jSONObject) {
        if (this instanceof TTFullScreenVideoActivity) {
            C4811e.m33878a(this.f15703i, this.f15717w, "fullscreen_interstitial_ad", str, (JSONObject) null);
        }
        if (this instanceof TTRewardVideoActivity) {
            C4811e.m33878a(this.f15703i, this.f15717w, AdType.REWARDED_VIDEO, str, jSONObject);
        }
    }

    /* renamed from: aa */
    public void m35976aa() {
        boolean z;
        boolean z2;
        int i = C4600n.m34805h().m34866q(String.valueOf(this.f15638V)).f16700f;
        if (C4557i.m35184c(this.f15717w)) {
            if ((1.0d - (this.f15635S / m36015J())) * 100.0d >= i) {
                z2 = true;
                z = z2;
            }
            z2 = false;
            z = z2;
        } else {
            boolean z3 = (1.0f - (((float) this.f15644aA) / ((float) C4600n.m34805h().m34870o(String.valueOf(this.f15638V))))) * 100.0f >= ((float) i);
            int m34913a = C4600n.m34805h().m34913a(String.valueOf(this.f15638V));
            if (m34913a == 0) {
                if (z3 && this.f15625I.m34132b()) {
                    z2 = true;
                    z = z2;
                }
                z2 = false;
                z = z2;
            } else {
                z = false;
                if (m34913a == 1) {
                    z = z3;
                }
            }
        }
        if (z) {
            mo34497e(10000);
        }
    }

    /* renamed from: ab */
    private void m35975ab() {
        this.f15622F.m35520a(f15615c);
    }

    /* renamed from: ac */
    public void m35974ac() {
        this.f15622F.m35520a(f15616d);
    }

    /* renamed from: b */
    public void m35970b(View view) {
        if (m35932w() && view != null) {
            if (view.getId() == C5486x.m32066e(this, "tt_rb_score")) {
                m36004W();
            } else if (view.getId() == C5486x.m32066e(this, "tt_comment_vertical")) {
                m36004W();
            } else if (view.getId() == C5486x.m32066e(this, "tt_reward_ad_appname")) {
                m36004W();
            } else if (view.getId() == C5486x.m32066e(this, "tt_reward_ad_icon")) {
                m36004W();
            } else if (view.getId() == C5486x.m32066e(this, "tt_video_reward_bar") || view.getId() == C5486x.m32066e(this, "tt_click_lower_non_content_layout") || view.getId() == C5486x.m32066e(this, "tt_click_upper_non_content_layout")) {
                m36004W();
            } else if (view.getId() == C5486x.m32066e(this, "tt_reward_ad_download")) {
                m36004W();
            } else if (view.getId() == C5486x.m32066e(this, "tt_video_reward_container")) {
                m36004W();
            } else if (view.getId() != C5486x.m32066e(this, "tt_reward_ad_download_backup")) {
            } else {
                m36004W();
            }
        }
    }

    /* renamed from: c */
    public Message m35964c(int i) {
        Message obtain = Message.obtain();
        obtain.what = 800;
        obtain.arg1 = i;
        return obtain;
    }

    /* renamed from: d */
    public boolean m35956d(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        C4557i c4557i = this.f15717w;
        return c4557i != null && c4557i.m35140t() && str.endsWith(".mp4");
    }

    /* renamed from: f */
    private void m35950f(boolean z) {
        if (!z) {
            TTRoundRectImageView tTRoundRectImageView = this.f15681al;
            if (tTRoundRectImageView != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) tTRoundRectImageView.getLayoutParams();
                layoutParams.setMargins(0, (int) C5443ag.m32232a(this, 50.0f), 0, 0);
                this.f15681al.setLayoutParams(layoutParams);
            }
            TextView textView = this.f15685ap;
            if (textView == null) {
                return;
            }
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) textView.getLayoutParams();
            layoutParams2.setMargins(0, (int) C5443ag.m32232a(this, 35.0f), 0, 0);
            layoutParams2.width = (int) C5443ag.m32232a(this, 342.0f);
            this.f15685ap.setLayoutParams(layoutParams2);
        }
    }

    /* renamed from: g */
    private String m35948g(boolean z) {
        C4557i c4557i = this.f15717w;
        if (c4557i == null) {
            return null;
        }
        return c4557i.m35243D() != 4 ? "View" : "Install";
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(1:4)|57|5|(2:9|(5:11|59|13|17|(1:19)(6:20|(2:22|(1:24))(2:25|(2:37|(2:39|(2:41|(2:43|(1:45)(2:46|(1:48))))))(2:31|(1:33)(2:34|(1:36))))|49|(1:53)|54|55)))|12|59|13|17|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
        r7 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.String m36022A() {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.m36022A():java.lang.String");
    }

    /* renamed from: B */
    public void m36021B() {
        if (this.f15678ai) {
            int[] iArr = {Color.parseColor("#0070FF")};
            C4776c.m34040a((LinearLayout) findViewById(C5486x.m32066e(this, "tt_reward_ad_download_layout")), new C4776c.C4777a().m34038a(iArr[0]).m34036b(Color.parseColor("#80000000")).m34037a(iArr).m34035c(C5443ag.m32217c(this, 17.0f)).m34034d(0).m34033e(C5443ag.m32217c(this, 3.0f)));
        }
    }

    /* renamed from: C */
    void m36020C() {
        if (this.f15621E == null) {
            RewardDislikeDialog rewardDislikeDialog = new RewardDislikeDialog(this, this.f15717w);
            this.f15621E = rewardDislikeDialog;
            rewardDislikeDialog.setCallback(new RewardDislikeDialog.AbstractC4458a() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.7
                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.AbstractC4458a
                /* renamed from: a */
                public void mo35527a(int i, FilterWord filterWord) {
                    if (TTBaseVideoActivity.this.f15671ab.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    TTBaseVideoActivity.this.f15671ab.set(true);
                    TTBaseVideoActivity.this.m35974ac();
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.AbstractC4458a
                /* renamed from: a */
                public void mo35526a(View view) {
                    TTBaseVideoActivity.this.f15670aa.set(true);
                    if (TTBaseVideoActivity.this.m35935t()) {
                        TTBaseVideoActivity.this.f15623G.mo34264i();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.AbstractC4458a
                /* renamed from: b */
                public void mo35525b(View view) {
                    TTBaseVideoActivity.this.f15670aa.set(false);
                    if (TTBaseVideoActivity.this.m35934u()) {
                        TTBaseVideoActivity.this.f15623G.mo34260k();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.component.reward.view.RewardDislikeDialog.AbstractC4458a
                /* renamed from: c */
                public void mo35524c(View view) {
                }
            });
            ((FrameLayout) findViewById(16908290)).addView(this.f15621E);
        }
        if (this.f15622F == null) {
            this.f15622F = new RewardDislikeToast(this);
            ((FrameLayout) findViewById(16908290)).addView(this.f15622F);
        }
    }

    /* renamed from: D */
    protected void m36019D() {
        AbstractC4719c abstractC4719c;
        if (!this.f15640X.getAndSet(false) && (abstractC4719c = this.f15623G) != null) {
            if (abstractC4719c.mo34249u() == null) {
                if (!this.f15698bc) {
                    return;
                }
                ((AbstractC4680a) this.f15623G).m34503y();
                mo34499a(this.f15617A, true);
                this.f15698bc = false;
                return;
            }
            C4699d mo34249u = this.f15623G.mo34249u();
            if (!mo34249u.m34421i() && !mo34249u.m34420j()) {
                return;
            }
            ((AbstractC4680a) this.f15623G).m34503y();
            mo34499a(this.f15617A, true);
        }
    }

    /* renamed from: E */
    public void m36018E() {
        HandlerC5446ah handlerC5446ah = this.f15628L;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeMessages(700);
            this.f15628L.removeMessages(VastError.ERROR_CODE_UNKNOWN);
            this.f15628L.removeMessages(950);
            this.f15628L.removeMessages(600);
        }
    }

    /* renamed from: F */
    public void m36017F() {
        if (this.f15628L != null) {
            Message obtain = Message.obtain();
            if (this.f15647aD == this.f15648aE) {
                obtain.what = VastError.ERROR_CODE_UNKNOWN;
            } else {
                obtain.what = 950;
            }
            obtain.arg1 = this.f15644aA;
            this.f15628L.sendMessageDelayed(obtain, 1000L);
        }
    }

    /* renamed from: G */
    public void m36016G() {
        C4557i c4557i;
        this.f15670aa.set(false);
        this.f15671ab.set(false);
        TopProxyLayout topProxyLayout = this.f15701g;
        if (topProxyLayout != null) {
            topProxyLayout.setShowSkip(false);
            this.f15701g.setShowCountDown(false);
            m36006U();
            this.f15701g.setShowSound(C4557i.m35209a(this.f15717w));
            if (((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) && C4557i.m35209a(this.f15717w)) {
                this.f15701g.setShowSound(true);
                this.f15701g.setShowSkip(true);
            }
        }
        m35973b();
        RewardDislikeToast rewardDislikeToast = this.f15622F;
        if (rewardDislikeToast != null) {
            rewardDislikeToast.m35523a();
        }
        if (this.f15639W.getAndSet(true)) {
            return;
        }
        this.f15642Z.set(true);
        if (!C4557i.m35208a(this.f15717w, this.f15686aq.get(), this.f15687ar) && (c4557i = this.f15717w) != null && !c4557i.m35137w()) {
            C5443ag.m32228a((View) this.f15704j, 8);
            C5443ag.m32228a((View) this.f15680ak, 0);
            m36005V();
            m36001Z();
            m36007S();
            if (!(this instanceof TTFullScreenVideoActivity) || this.f15623G == null || !m35935t() || !this.f15642Z.get()) {
                return;
            }
            this.f15623G.mo34262j();
            this.f15623G.mo34257m();
            return;
        }
        if (Build.VERSION.SDK_INT >= 11) {
            C5443ag.m32229a(this.f15704j, (float) BitmapDescriptorFactory.HUE_RED);
            C5443ag.m32229a(this.f15707m, (float) BitmapDescriptorFactory.HUE_RED);
            C5443ag.m32229a(this.f15708n, (float) BitmapDescriptorFactory.HUE_RED);
        }
        C5443ag.m32228a((View) this.f15704j, 0);
        C4557i c4557i2 = this.f15717w;
        if (c4557i2 == null || !c4557i2.m35137w()) {
            C4557i c4557i3 = this.f15717w;
            if (c4557i3 != null && !c4557i3.m35137w()) {
                int m34874m = C4600n.m34805h().m34874m(String.valueOf(this.f15638V));
                if (m34874m == -1) {
                    m36005V();
                } else if (m34874m >= 0) {
                    this.f15628L.sendEmptyMessageDelayed(600, m34874m);
                }
            }
        } else {
            int m34868p = C4600n.m34805h().m34868p(String.valueOf(this.f15638V));
            if (m34868p == -1) {
                m36005V();
            } else if (m34868p >= 0) {
                this.f15628L.sendEmptyMessageDelayed(600, m34868p);
            }
        }
        this.f15628L.sendEmptyMessageDelayed(500, 100L);
        m35977a(this.f15634R, true);
        C4754w c4754w = this.f15625I;
        if (c4754w != null) {
            c4754w.m34124b(true);
            m35966b(true);
        }
        m35940o();
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver.AbstractC5431a
    /* renamed from: H */
    public void mo32338H() {
        this.f15651aH = true;
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HomeWatcherReceiver.AbstractC5431a
    /* renamed from: I */
    public void mo32337I() {
        this.f15651aH = true;
    }

    /* renamed from: J */
    public double m36015J() {
        C4557i c4557i = this.f15717w;
        if (c4557i == null || c4557i.m35245B() == null) {
            return 0.0d;
        }
        return this.f15717w.m35245B().m35049e();
    }

    /* renamed from: K */
    public void m36014K() {
        if (isFinishing()) {
            return;
        }
        if (this.f15671ab.get()) {
            m35975ab();
            return;
        }
        if (this.f15621E == null) {
            m36020C();
        }
        this.f15621E.m35538a();
    }

    /* renamed from: L */
    public void m36013L() {
        HandlerC5446ah handlerC5446ah = this.f15628L;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeMessages(400);
        }
    }

    /* renamed from: a */
    protected float m35996a(Activity activity) {
        return C5443ag.m32221b(activity, C5443ag.m32209g(activity));
    }

    /* renamed from: a */
    public IListenerManager m35999a(int i) {
        if (this.f15675af == null) {
            this.f15675af = AbstractBinderC5075a.asInterface(C5072a.m33111a(C4600n.m34815a()).m33112a(i));
        }
        return this.f15675af;
    }

    /* renamed from: a */
    protected C4548d m35997a(int i, int i2, int i3, int i4, long j, long j2, View view, View view2) {
        return new C4548d.C4550a().m35301d(i).m35304c(i2).m35308b(i3).m35313a(i4).m35307b(j).m35312a(j2).m35305b(C5443ag.m32230a(view)).m35309a(C5443ag.m32230a(view2)).m35302c(C5443ag.m32216c(view)).m35299d(C5443ag.m32216c(view2)).m35298e(1).m35296f(-1).m35294g(0).m35314a();
    }

    /* renamed from: a */
    public void m36000a() {
        if ((C4557i.m35191b(this.f15717w) || C4557i.m35184c(this.f15717w)) && this.f15660aQ == 0) {
            this.f15634R = true;
            m35979a(true);
        }
    }

    /* renamed from: a */
    protected void m35998a(int i, int i2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", i);
            jSONObject.put("height", i2);
            this.f15625I.mo33701a("resize", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m35995a(Context context) {
        try {
            HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
            this.f15627K = homeWatcherReceiver;
            homeWatcherReceiver.m32339a(this);
            context.registerReceiver(this.f15627K, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        } catch (Throwable th) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message.what == 500) {
            if (!C4557i.m35209a(this.f15717w)) {
                m36001Z();
            }
            SSWebView sSWebView = this.f15705k.get();
            if (sSWebView != null) {
                sSWebView.onResume();
                sSWebView.resumeTimers();
            }
            TopProxyLayout topProxyLayout = this.f15701g;
            if (topProxyLayout != null) {
                topProxyLayout.setShowCountDown(false);
            }
            SSWebView sSWebView2 = this.f15704j;
            if (sSWebView2 != null) {
                C5443ag.m32229a((View) sSWebView2, 1.0f);
                C5443ag.m32229a((View) this.f15707m, 1.0f);
                C5443ag.m32229a((View) this.f15708n, 1.0f);
            }
            if (!(this instanceof TTFullScreenVideoActivity) || this.f15623G == null || !m35935t() || !this.f15642Z.get()) {
                return;
            }
            this.f15623G.mo34262j();
            this.f15623G.mo34257m();
        } else if (message.what == 600) {
            m36005V();
        } else if (message.what == 700) {
            if (this.f15717w.m35175f() != 1) {
                return;
            }
            int i = message.arg1;
            if (i > 0) {
                TopProxyLayout topProxyLayout2 = this.f15701g;
                if (topProxyLayout2 != null) {
                    topProxyLayout2.setShowCountDown(true);
                    this.f15701g.mo35549a(String.valueOf(i), (CharSequence) null);
                }
                Message obtain = Message.obtain();
                obtain.what = 700;
                int i2 = i - 1;
                obtain.arg1 = i2;
                this.f15645aB--;
                this.f15628L.sendMessageDelayed(obtain, 1000L);
                this.f15644aA = i2;
                if (i == 1) {
                    this.f15628L.sendEmptyMessageDelayed(600, 1000L);
                }
            } else {
                TopProxyLayout topProxyLayout3 = this.f15701g;
                if (topProxyLayout3 != null) {
                    topProxyLayout3.setShowCountDown(false);
                }
                if (this instanceof TTRewardVideoActivity) {
                    mo34497e(10001);
                } else {
                    mo34497e(10002);
                }
            }
            if (!(this instanceof TTRewardVideoActivity)) {
                return;
            }
            m35976aa();
        } else if (message.what == 300) {
            m35936s();
            if (message.arg1 != 1) {
                return;
            }
            mo34497e(10000);
        } else if (message.what == 800) {
            HashMap hashMap = new HashMap();
            hashMap.put("remove_loading_page_type", Integer.valueOf(message.arg1));
            if (this.f15717w.m35245B() != null) {
                hashMap.put("playable_url", this.f15717w.m35245B().m35042i());
            }
            C4811e.m33860g(this, this.f15717w, this.f15650aG, "remove_loading_page", hashMap);
            this.f15628L.removeMessages(800);
            PlayableLoadingView playableLoadingView = this.f15700f;
            if (playableLoadingView == null) {
                return;
            }
            playableLoadingView.m34082a();
        } else if (message.what == 900) {
            if (this.f15717w.m35175f() != 1) {
                return;
            }
            int i3 = message.arg1;
            if (i3 > 0) {
                TopProxyLayout topProxyLayout4 = this.f15701g;
                if (topProxyLayout4 != null) {
                    topProxyLayout4.setShowSkip(true);
                    this.f15701g.mo35549a(String.valueOf(i3), (CharSequence) null);
                }
                Message obtain2 = Message.obtain();
                obtain2.what = VastError.ERROR_CODE_UNKNOWN;
                int i4 = i3 - 1;
                obtain2.arg1 = i4;
                this.f15645aB--;
                this.f15628L.sendMessageDelayed(obtain2, 1000L);
                this.f15644aA = i4;
                if (i3 == 1) {
                    this.f15628L.sendEmptyMessageDelayed(600, 1000L);
                }
            } else {
                TopProxyLayout topProxyLayout5 = this.f15701g;
                if (topProxyLayout5 != null) {
                    topProxyLayout5.setShowSkip(false);
                }
                if (this instanceof TTRewardVideoActivity) {
                    mo34497e(10001);
                } else {
                    mo34497e(10002);
                }
            }
            if (!(this instanceof TTRewardVideoActivity)) {
                return;
            }
            m35976aa();
        } else if (message.what != 950) {
            if (message.what != 400) {
                return;
            }
            AbstractC4719c abstractC4719c = this.f15623G;
            if (abstractC4719c != null) {
                abstractC4719c.mo34257m();
            }
            m35936s();
        } else if (this.f15717w.m35175f() != 1) {
        } else {
            int i5 = message.arg1;
            int i6 = message.arg2;
            if (i5 > 0) {
                if (i5 == 1) {
                    this.f15628L.sendEmptyMessageDelayed(600, 1000L);
                }
                int i7 = this.f15647aD;
                if (i7 - i5 < i6) {
                    TopProxyLayout topProxyLayout6 = this.f15701g;
                    if (topProxyLayout6 != null) {
                        topProxyLayout6.setShowSkip(true);
                        this.f15701g.mo35549a(String.valueOf(i5), String.format(C5486x.m32071a(this.f15703i, "tt_skip_ad_time_text"), Integer.valueOf(i6 - (i7 - i5))));
                    }
                    Message obtain3 = Message.obtain();
                    obtain3.what = 950;
                    int i8 = i5 - 1;
                    obtain3.arg1 = i8;
                    obtain3.arg2 = i6;
                    this.f15645aB--;
                    this.f15628L.sendMessageDelayed(obtain3, 1000L);
                    this.f15644aA = i8;
                } else {
                    TopProxyLayout topProxyLayout7 = this.f15701g;
                    if (topProxyLayout7 != null) {
                        topProxyLayout7.setShowSkip(true);
                        this.f15701g.mo35549a(String.valueOf(i5), C5486x.m32071a(this.f15703i, "tt_txt_skip"));
                        this.f15701g.setSkipEnable(true);
                    }
                    Message obtain4 = Message.obtain();
                    obtain4.what = 950;
                    int i9 = i5 - 1;
                    obtain4.arg1 = i9;
                    this.f15645aB--;
                    this.f15628L.sendMessageDelayed(obtain4, 1000L);
                    this.f15644aA = i9;
                }
            } else {
                TopProxyLayout topProxyLayout8 = this.f15701g;
                if (topProxyLayout8 != null) {
                    topProxyLayout8.setShowSkip(false);
                    this.f15701g.mo35549a(String.valueOf(i5), (CharSequence) null);
                }
                if (this instanceof TTRewardVideoActivity) {
                    mo34497e(10001);
                } else {
                    mo34497e(10002);
                }
            }
            if (!(this instanceof TTRewardVideoActivity)) {
                return;
            }
            m35976aa();
        }
    }

    /* renamed from: a */
    public void m35984a(String str) {
        SSWebView sSWebView = this.f15704j;
        if (sSWebView == null) {
            return;
        }
        this.f15718x = new C4822k(this, this.f15717w, sSWebView).m33815a(true);
        C4557i c4557i = this.f15717w;
        if (c4557i != null && c4557i.m35140t()) {
            this.f15704j.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.15
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (view.getVisibility() == 0 && Float.valueOf(view.getAlpha()).intValue() == 1 && !TTBaseVideoActivity.this.f15667aX) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("down_x", motionEvent.getX());
                            jSONObject.put("down_y", motionEvent.getY());
                            jSONObject.put("width", view.getWidth());
                            jSONObject.put("height", view.getHeight());
                            jSONObject.put("down_time", System.currentTimeMillis());
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("click_area", jSONObject.toString());
                            TTBaseVideoActivity.this.mo35819a(jSONObject2);
                            TTBaseVideoActivity.this.f15667aX = true;
                            return false;
                        } catch (JSONException e) {
                            e.printStackTrace();
                            return false;
                        }
                    }
                    return false;
                }
            });
        }
        this.f15718x.m33818a(m35949g() ? "landingpage_endcard" : str);
        this.f15704j.setWebViewClient(new C4798c(this.f15703i, this.f15625I, this.f15629M, this.f15718x) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.16
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                TTBaseVideoActivity.this.f15654aK = str2;
                super.onPageFinished(webView, str2);
                try {
                    if (TTBaseVideoActivity.this.f15717w.m35136x() && !TTBaseVideoActivity.this.isFinishing() && TTBaseVideoActivity.this.f15717w.m35139u() && !TTBaseVideoActivity.this.f15717w.m35138v()) {
                        TTBaseVideoActivity.this.f15628L.sendMessageDelayed(TTBaseVideoActivity.this.m35964c(0), 1000L);
                    }
                } catch (Throwable th) {
                }
                try {
                    if (!TTBaseVideoActivity.this.f15686aq.get() || TTBaseVideoActivity.this.f15717w.m35175f() != 1 || !TTBaseVideoActivity.this.f15717w.m35137w()) {
                        return;
                    }
                    TTBaseVideoActivity.this.m36009P();
                    TTBaseVideoActivity.this.m35966b(true);
                    if (this.f17630b != null) {
                        this.f17630b.m34124b(true);
                    }
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    tTBaseVideoActivity.m35983a(tTBaseVideoActivity.f15650aG, "py_loading_success");
                } catch (Throwable th2) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                TTBaseVideoActivity.this.f15654aK = str2;
                super.onPageStarted(webView, str2, bitmap);
                if (TTBaseVideoActivity.this.f15666aW || TTBaseVideoActivity.this.f15717w == null || !TTBaseVideoActivity.this.f15717w.m35137w() || TTBaseVideoActivity.this.f15717w.m35175f() != 1) {
                    return;
                }
                TTBaseVideoActivity.this.f15666aW = true;
                TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                boolean z = tTBaseVideoActivity instanceof TTRewardVideoActivity;
                tTBaseVideoActivity.f15647aD = C4600n.m34805h().m34870o(String.valueOf(TTBaseVideoActivity.this.f15638V));
                TTBaseVideoActivity.this.f15648aE = C4600n.m34805h().m34911a(String.valueOf(TTBaseVideoActivity.this.f15638V), z);
                TTBaseVideoActivity tTBaseVideoActivity2 = TTBaseVideoActivity.this;
                long j = tTBaseVideoActivity2.f15647aD;
                tTBaseVideoActivity2.f15645aB = j;
                tTBaseVideoActivity2.f15646aC = j;
                TTBaseVideoActivity.this.f15628L.sendEmptyMessageDelayed(600, TTBaseVideoActivity.this.f15647aD * 1000);
                Message obtain = Message.obtain();
                if (TTBaseVideoActivity.this.f15647aD == TTBaseVideoActivity.this.f15648aE) {
                    obtain.what = VastError.ERROR_CODE_UNKNOWN;
                } else {
                    obtain.what = 950;
                }
                obtain.arg1 = TTBaseVideoActivity.this.f15647aD;
                obtain.arg2 = TTBaseVideoActivity.this.f15648aE;
                TTBaseVideoActivity.this.f15628L.sendMessage(obtain);
                TTBaseVideoActivity.this.f15695az = System.currentTimeMillis();
                HashMap hashMap = null;
                if (!TextUtils.isEmpty(TTBaseVideoActivity.this.f15676ag)) {
                    hashMap = new HashMap();
                    hashMap.put("rit_scene", TTBaseVideoActivity.this.f15676ag);
                }
                if (z) {
                    C4811e.m33877a(this.f17631c, TTBaseVideoActivity.this.f15717w, AdType.REWARDED_VIDEO, hashMap);
                } else {
                    C4811e.m33877a(this.f17631c, TTBaseVideoActivity.this.f15717w, "fullscreen_interstitial_ad", hashMap);
                }
                TTBaseVideoActivity.this.mo34501R();
                TTBaseVideoActivity.this.f15649aF.set(true);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str2, String str3) {
                StringBuilder sb = new StringBuilder("onReceivedError: description=");
                sb.append(str2);
                sb.append("  url =");
                sb.append(str3);
                if (TTBaseVideoActivity.this.m35956d(str3)) {
                    return;
                }
                TTBaseVideoActivity.this.f15686aq.set(false);
                TTBaseVideoActivity.this.f15688as = i;
                TTBaseVideoActivity.this.f15689at = str2;
                super.onReceivedError(webView, i, str2, str3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceError != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                    StringBuilder sb = new StringBuilder("onReceivedError WebResourceError : description=");
                    sb.append((Object) webResourceError.getDescription());
                    sb.append("  url =");
                    sb.append(webResourceRequest.getUrl().toString());
                }
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !TTBaseVideoActivity.this.m35956d(webResourceRequest.getUrl().toString())) {
                    TTBaseVideoActivity.this.f15686aq.set(false);
                    if (webResourceError != null && webResourceError.getDescription() != null) {
                        TTBaseVideoActivity.this.f15688as = webResourceError.getErrorCode();
                        TTBaseVideoActivity.this.f15689at = webResourceError.getDescription().toString();
                    }
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
                    new StringBuilder("onReceivedHttpError:url =").append(webResourceRequest.getUrl().toString());
                }
                if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
                    if (TTBaseVideoActivity.this.m35956d(webResourceRequest.getUrl().toString())) {
                        return;
                    }
                    if (TTBaseVideoActivity.this.f15633Q.equals(webResourceRequest.getUrl().toString())) {
                        TTBaseVideoActivity.this.f15686aq.set(false);
                        if (webResourceResponse != null) {
                            TTBaseVideoActivity.this.f15688as = webResourceResponse.getStatusCode();
                            TTBaseVideoActivity.this.f15689at = "onReceivedHttpError";
                        }
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                try {
                    return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
                } catch (Throwable th) {
                    C5478q.m32108c("TTBaseVideoActivity", "shouldInterceptRequest error1", th);
                    return super.shouldInterceptRequest(webView, webResourceRequest);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                if (TTBaseVideoActivity.this.f15717w.m35137w()) {
                    String m35042i = TTBaseVideoActivity.this.f15717w.m35245B().m35042i();
                    return C4671a.m34591a().m34579a(TTBaseVideoActivity.this.f15717w.m35245B().m35041j(), m35042i, str2);
                }
                return super.shouldInterceptRequest(webView, str2);
            }
        });
        m35985a(this.f15704j);
        C4557i c4557i2 = this.f15717w;
        if (c4557i2 != null && c4557i2.m35175f() == 1 && this.f15717w.m35137w()) {
            m35985a(this.f15706l);
            m35952f();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(this.f15692aw);
            if (this.f15692aw) {
                this.f15704j.getSettings().setDomStorageEnabled(true);
            }
        }
        m35947h();
        if ("reward_endcard".equals(str) || "fullscreen_endcard".equals(str)) {
            this.f15704j.setLayerType(1, null);
            this.f15704j.setBackgroundColor(-1);
        }
        this.f15704j.getSettings().setDisplayZoomControls(false);
        this.f15704j.setWebChromeClient(new C4797b(this.f15625I, this.f15718x) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.17
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4797b, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                try {
                    if (!TTBaseVideoActivity.this.f15717w.m35136x() || !TTBaseVideoActivity.this.f15717w.m35139u() || TTBaseVideoActivity.this.isFinishing() || TTBaseVideoActivity.this.f15700f == null) {
                        return;
                    }
                    TTBaseVideoActivity.this.f15700f.setProgress(i);
                } catch (Throwable th) {
                }
            }
        });
        this.f15704j.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.18
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str2, String str3, String str4, String str5, long j) {
                if (TTBaseVideoActivity.this.f15624H != null) {
                    TTBaseVideoActivity.this.f15624H.mo39091e();
                }
                TTBaseVideoActivity.this.mo34500T();
            }
        });
    }

    /* renamed from: a */
    public void m35982a(String str, String str2, Map<String, Object> map) {
        AbstractC4719c abstractC4719c = this.f15623G;
        if (abstractC4719c != null) {
            Map<String, Object> m32304a = C5438af.m32304a(this.f15717w, abstractC4719c.mo34255o(), this.f15623G.mo34249u());
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    m32304a.put(entry.getKey(), entry.getValue());
                }
            }
            C4811e.m33880a(this.f15703i, this.f15717w, str, str2, this.f15623G.mo34254p(), this.f15623G.mo34252r(), m32304a);
            C5478q.m32112b("TTBaseVideoActivity", "event tag:" + str + ", TotalPlayDuration=" + this.f15623G.mo34254p() + ",mBasevideoController.getPct()=" + this.f15623G.mo34252r());
        }
    }

    /* renamed from: a */
    public void m35981a(String str, Map<String, Object> map) {
        AbstractC4719c abstractC4719c = this.f15623G;
        if (abstractC4719c != null) {
            Map<String, Object> m32304a = C5438af.m32304a(this.f15717w, abstractC4719c.mo34255o(), this.f15623G.mo34249u());
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    m32304a.put(entry.getKey(), entry.getValue());
                }
            }
            m32304a.put("play_type", Integer.valueOf(C5438af.m32301a(this.f15623G, this.f15620D)));
            C4811e.m33880a(this.f15703i, this.f15717w, str, "endcard_skip", this.f15623G.mo34254p(), this.f15623G.mo34252r(), m32304a);
        }
    }

    /* renamed from: a */
    abstract void mo35819a(JSONObject jSONObject);

    /* renamed from: a */
    public void m35979a(boolean z) {
        TopProxyLayout topProxyLayout = this.f15701g;
        if (topProxyLayout != null) {
            topProxyLayout.setSoundMute(z);
        }
    }

    /* renamed from: a */
    protected void m35977a(boolean z, boolean z2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            jSONObject.put("endcard_show", z2);
            this.f15625I.mo33701a("endcard_control_event", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public float[] m35978a(boolean z, Activity activity, int i) {
        float m35996a = m35996a(activity);
        float m35972b = m35972b(activity);
        float f = m35996a;
        float f2 = m35972b;
        if (z != (m35996a > m35972b)) {
            float f3 = m35996a + m35972b;
            f2 = f3 - m35972b;
            f = f3 - f2;
        }
        if (z) {
            f -= i;
        } else {
            f2 -= i;
        }
        return new float[]{f2, f};
    }

    /* renamed from: b */
    protected float m35972b(Activity activity) {
        return C5443ag.m32221b(activity, C5443ag.m32207h(activity));
    }

    /* renamed from: b */
    void m35973b() {
        if (!C4557i.m35184c(this.f15717w) || !this.f15634R) {
            return;
        }
        m35979a(true);
        this.f15691av.m33561a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4923f
    /* renamed from: b */
    public void mo33565b(int i) {
        if (i > 0) {
            if (this.f15660aQ <= 0) {
                C5478q.m32112b("onVolumeChanged", "onVolumeChanged >>>> 变为非静音状态通知 h5");
                m35960c(false);
            }
        } else if (this.f15660aQ > 0) {
            C5478q.m32112b("onVolumeChanged", "onVolumeChanged >>>> 变为静音状态通知 h5");
            m35960c(true);
        }
        this.f15660aQ = i;
        if (!C4557i.m35184c(this.f15717w) || this.f15639W.get()) {
            if (!C4557i.m35191b(this.f15717w) && !C4557i.m35184c(this.f15717w)) {
                return;
            }
            if (this.f15691av.m33557c()) {
                C5478q.m32112b("TTBaseVideoActivity", "onVolumeChanged by SDK mIsMute=" + this.f15634R + " mVolume=" + this.f15660aQ + " mLastVolume=" + this.f15691av.m33559b());
                if (this.f15660aQ == 0) {
                    m35979a(true);
                    AbstractC4719c abstractC4719c = this.f15623G;
                    if (abstractC4719c == null) {
                        return;
                    }
                    abstractC4719c.mo34287c(true);
                    return;
                }
                m35979a(false);
                AbstractC4719c abstractC4719c2 = this.f15623G;
                if (abstractC4719c2 == null) {
                    return;
                }
                abstractC4719c2.mo34287c(false);
                return;
            }
            this.f15691av.m33558b(-1);
            C5478q.m32112b("TTBaseVideoActivity", "onVolumeChanged by User mIsMute=" + this.f15634R + " mVolume=" + this.f15660aQ + " mLastVolume=" + this.f15691av.m33559b());
            if (!this.f15665aV) {
                return;
            }
            if (this.f15660aQ == 0) {
                this.f15634R = true;
                m35979a(true);
                AbstractC4719c abstractC4719c3 = this.f15623G;
                if (abstractC4719c3 == null) {
                    return;
                }
                abstractC4719c3.mo34287c(true);
                return;
            }
            this.f15634R = false;
            m35979a(false);
            AbstractC4719c abstractC4719c4 = this.f15623G;
            if (abstractC4719c4 == null) {
                return;
            }
            abstractC4719c4.mo34287c(false);
        }
    }

    /* renamed from: b */
    protected void m35971b(Context context) {
        try {
            this.f15627K.m32339a(null);
            context.unregisterReceiver(this.f15627K);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public void mo35838b(String str) {
        if (this.f15717w.m35175f() != 1 || !this.f15717w.m35137w()) {
            boolean a = mo34499a(this.f15617A, false);
            this.f15640X.set(true);
            if (a) {
                return;
            }
            m35936s();
            HashMap hashMap = new HashMap();
            hashMap.put("vbtt_skip_type", 1);
            m35981a(str, hashMap);
        }
    }

    /* renamed from: b */
    protected void m35966b(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z ? 1 : 0);
            this.f15625I.mo33701a("viewableChange", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m35965c() {
        if (this.f15636T == 15) {
            setRequestedOrientation(1);
            TextView textView = this.f15710p;
            if (textView != null) {
                textView.setMaxWidth((int) C5443ag.m32232a(this, 153.0f));
            }
        } else {
            setRequestedOrientation(0);
            TextView textView2 = this.f15710p;
            if (textView2 != null) {
                textView2.setMaxWidth((int) C5443ag.m32232a(this, 404.0f));
            }
            m35950f(false);
            RelativeLayout relativeLayout = this.f15708n;
            if (relativeLayout != null) {
                ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    int m36012M = m36012M();
                    int m36011N = m36011N();
                    if (m36012M > 0) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (m36012M > marginLayoutParams.topMargin) {
                            marginLayoutParams.topMargin = m36012M;
                            TopProxyLayout topProxyLayout = this.f15701g;
                            if (topProxyLayout != null && (topProxyLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                                ((ViewGroup.MarginLayoutParams) this.f15701g.getLayoutParams()).topMargin = m36012M - C5443ag.m32217c(this, 20.0f);
                            }
                        }
                    }
                    if (m36011N > 0) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                        if (m36011N > marginLayoutParams2.rightMargin) {
                            marginLayoutParams2.rightMargin = m36011N;
                        }
                    }
                }
            }
        }
        if (this instanceof TTFullScreenVideoActivity) {
            C5443ag.m32228a((View) this.f15702h, 0);
        }
    }

    /* renamed from: c */
    void m35961c(String str) {
        if (!this.f15651aH) {
            return;
        }
        String str2 = this instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad";
        HashMap hashMap = new HashMap();
        hashMap.put(VastIconXmlManager.DURATION, Long.valueOf(System.currentTimeMillis() - this.f15695az));
        C4811e.m33862e(this, this.f15717w, str2, str, hashMap);
        if (!"return_foreground".equals(str)) {
            return;
        }
        this.f15651aH = false;
    }

    /* renamed from: c */
    public void m35960c(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            this.f15625I.mo33701a("volumeChange", jSONObject);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public void m35959d() {
        int m35147p = this.f15717w.m35147p();
        this.f15637U = m35147p;
        if (m35147p == -200) {
            C4588e m34805h = C4600n.m34805h();
            StringBuilder sb = new StringBuilder();
            sb.append(this.f15638V);
            this.f15637U = m34805h.m34876l(sb.toString());
        }
        if (this.f15637U != -1 || !this.f15720z) {
            return;
        }
        C5443ag.m32228a((View) this.f15702h, 0);
    }

    /* renamed from: d */
    public void m35955d(boolean z) {
        if (this.f15661aR == null) {
            this.f15661aR = new ProgressBar(this);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.f15661aR.setLayoutParams(layoutParams);
            this.f15661aR.setIndeterminateDrawable(getResources().getDrawable(C5486x.m32067d(this, "tt_video_loading_progress_bar")));
            this.f15713s.addView(this.f15661aR);
        }
        if (z) {
            this.f15661aR.setVisibility(0);
        } else {
            this.f15661aR.setVisibility(8);
        }
    }

    /* renamed from: e */
    public void mo35837e() {
        C4557i c4557i;
        this.f15700f = (PlayableLoadingView) findViewById(C5486x.m32066e(this, "tt_reward_playable_loading"));
        TopProxyLayout topProxyLayout = (TopProxyLayout) findViewById(C5486x.m32066e(this, "tt_top_layout_proxy"));
        this.f15701g = topProxyLayout;
        if (topProxyLayout != null) {
            topProxyLayout.m35551a(this instanceof TTRewardVideoActivity, this.f15717w);
        }
        this.f15699e = findViewById(C5486x.m32066e(this, "tt_reward_root"));
        this.f15706l = (SSWebView) findViewById(C5486x.m32066e(this, "tt_browser_webview_loading"));
        this.f15704j = (SSWebView) findViewById(C5486x.m32066e(this, "tt_reward_browser_webview"));
        this.f15705k = new WeakReference<>(this.f15704j);
        this.f15708n = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_video_ad_close_layout"));
        this.f15707m = (ImageView) findViewById(C5486x.m32066e(this, "tt_video_ad_close"));
        this.f15694ay = (TextView) findViewById(C5486x.m32066e(this, "tt_ad_logo"));
        this.f15713s = (FrameLayout) findViewById(C5486x.m32066e(this, "tt_video_reward_container"));
        this.f15714t = (FrameLayout) findViewById(C5486x.m32066e(this, "tt_click_upper_non_content_layout"));
        this.f15715u = (FrameLayout) findViewById(C5486x.m32066e(this, "tt_click_lower_non_content_layout"));
        this.f15680ak = (LinearLayout) findViewById(C5486x.m32066e(this, "tt_reward_full_endcard_backup"));
        this.f15712r = (TextView) findViewById(C5486x.m32066e(this, "tt_reward_ad_download"));
        this.f15702h = (RelativeLayout) findViewById(C5486x.m32066e(this, "tt_video_reward_bar"));
        this.f15709o = (TTRoundRectImageView) findViewById(C5486x.m32066e(this, "tt_reward_ad_icon"));
        this.f15710p = (TextView) findViewById(C5486x.m32066e(this, "tt_reward_ad_appname"));
        this.f15711q = (TextView) findViewById(C5486x.m32066e(this, "tt_comment_vertical"));
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(C5486x.m32066e(this, "tt_rb_score"));
        this.f15716v = tTRatingBar;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.f15716v.setStarFillNum(4);
            this.f15716v.setStarImageWidth(C5443ag.m32217c(this, 15.0f));
            this.f15716v.setStarImageHeight(C5443ag.m32217c(this, 14.0f));
            this.f15716v.setStarImagePadding(C5443ag.m32217c(this, 4.0f));
            this.f15716v.m34062a();
        }
        C4557i c4557i2 = this.f15717w;
        if (c4557i2 != null && c4557i2.m35137w()) {
            this.f15704j.setBackgroundColor(-16777216);
            this.f15706l.setBackgroundColor(-16777216);
            if (this.f15717w.m35175f() == 1) {
                C5443ag.m32228a((View) this.f15713s, 8);
                C5443ag.m32228a((View) this.f15714t, 8);
                C5443ag.m32228a((View) this.f15715u, 8);
                C5443ag.m32228a((View) this.f15702h, 8);
                C5443ag.m32228a((View) this.f15710p, 8);
                C5443ag.m32228a((View) this.f15709o, 8);
                C5443ag.m32228a((View) this.f15711q, 8);
                C5443ag.m32228a((View) this.f15716v, 8);
                C5443ag.m32228a((View) this.f15707m, 8);
                C5443ag.m32228a((View) this.f15708n, 8);
                C5443ag.m32228a((View) this.f15704j, 4);
                C5443ag.m32228a((View) this.f15706l, 0);
                C5443ag.m32228a((View) this.f15712r, 8);
                C5443ag.m32228a((View) this.f15694ay, 8);
            }
            TopProxyLayout topProxyLayout2 = this.f15701g;
            if (topProxyLayout2 != null) {
                topProxyLayout2.setShowSound(true);
            }
        }
        SSWebView sSWebView = this.f15704j;
        if (sSWebView != null) {
            sSWebView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (Build.VERSION.SDK_INT >= 16) {
                        TTBaseVideoActivity.this.f15704j.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    } else {
                        TTBaseVideoActivity.this.f15704j.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                    int measuredWidth = TTBaseVideoActivity.this.f15704j.getMeasuredWidth();
                    int measuredHeight = TTBaseVideoActivity.this.f15704j.getMeasuredHeight();
                    if (TTBaseVideoActivity.this.f15704j.getVisibility() == 0) {
                        TTBaseVideoActivity.this.m35998a(measuredWidth, measuredHeight);
                    }
                }
            });
        }
        m36008Q();
        if (!this.f15720z) {
            C5443ag.m32228a((View) this.f15702h, 4);
        }
        try {
            if (this.f15677ah && (c4557i = this.f15717w) != null && c4557i.m35227T() == 5) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f15712r.getLayoutParams();
                layoutParams.height = (int) C5443ag.m32232a(this, 55.0f);
                layoutParams.topMargin = (int) C5443ag.m32232a(this, 20.0f);
                this.f15712r.setLayoutParams(layoutParams);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f15702h.getLayoutParams();
                layoutParams2.bottomMargin = (int) C5443ag.m32232a(this, 12.0f);
                this.f15702h.setLayoutParams(layoutParams2);
            }
        } catch (Throwable th) {
        }
        if (this.f15717w == null || !this.f15677ah || this.f15713s == null) {
            return;
        }
        int m32218c = C5443ag.m32218c(this);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.f15713s.getLayoutParams();
        layoutParams3.width = m32218c;
        int i = (m32218c * 9) / 16;
        layoutParams3.height = i;
        this.f15713s.setLayoutParams(layoutParams3);
        this.f15679aj = (C5443ag.m32215d(this) - i) / 2;
        C5478q.m32106e("TTBaseVideoActivity", "NonContentAreaHeight:" + this.f15679aj);
    }

    /* renamed from: e */
    public void m35953e(boolean z) {
        Message message = new Message();
        message.what = 400;
        if (z) {
            mo34497e(10000);
        }
        HandlerC5446ah handlerC5446ah = this.f15628L;
        if (handlerC5446ah != null) {
            handlerC5446ah.sendMessageDelayed(message, 2000L);
        }
    }

    /* renamed from: f */
    protected boolean m35952f() {
        if (this.f15706l == null) {
            return false;
        }
        String m36010O = m36010O();
        if (TextUtils.isEmpty(m36010O)) {
            return false;
        }
        this.f15706l.setWebViewClient(new C4798c(this.f15703i, this.f15626J, this.f15717w.m35231P(), null) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.12
            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                TTBaseVideoActivity.this.f15654aK = str;
                if (TTBaseVideoActivity.this.f15669aZ) {
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    tTBaseVideoActivity.m35983a(tTBaseVideoActivity.f15650aG, "loading_h5_success");
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                TTBaseVideoActivity.this.f15669aZ = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTBaseVideoActivity.this.f15669aZ = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                TTBaseVideoActivity.this.f15669aZ = false;
            }
        });
        this.f15706l.loadUrl(m36010O);
        this.f15706l.getSettings().setDisplayZoomControls(false);
        this.f15706l.setWebChromeClient(new C4797b(this.f15626J, this.f15718x));
        this.f15706l.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.14
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                if (TTBaseVideoActivity.this.f15624H != null) {
                    TTBaseVideoActivity.this.f15624H.mo39091e();
                }
                TTBaseVideoActivity.this.mo34500T();
            }
        });
        return true;
    }

    /* renamed from: g */
    protected boolean m35949g() {
        String str = this.f15633Q;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: h */
    public void m35947h() {
        if (this.f15652aI) {
            this.f15704j.loadUrl(this.f15633Q);
        }
    }

    /* renamed from: i */
    public void m35946i() {
        TextView textView = this.f15712r;
        if (textView != null) {
            textView.setText(this.f15678ai ? m36022A() : m35929z());
        }
    }

    /* renamed from: j */
    public void m35945j() {
        String str;
        if (this.f15711q == null) {
            return;
        }
        int i = 6870;
        if (this.f15717w.m35230Q() != null) {
            i = this.f15717w.m35230Q().m35328e();
        }
        String m32071a = C5486x.m32071a(this, "tt_comment_num");
        if (i > 10000) {
            str = (i / 1000) + "k";
        } else {
            str = String.valueOf(i);
        }
        this.f15711q.setText(String.format(m32071a, str));
    }

    /* renamed from: k */
    public void m35944k() {
        if (this.f15709o != null) {
            if (this.f15717w.m35242E() == null || TextUtils.isEmpty(this.f15717w.m35242E().m35254a())) {
                this.f15709o.setImageResource(C5486x.m32067d(this, "tt_ad_logo_small"));
            } else {
                C4959e.m33434c().m33439a(this.f15717w.m35242E().m35254a(), this.f15709o);
            }
        }
        if (this.f15710p != null) {
            if (this.f15636T != 15 || this.f15717w.m35230Q() == null || TextUtils.isEmpty(this.f15717w.m35230Q().m35335b())) {
                this.f15710p.setText(this.f15717w.m35234M());
            } else {
                this.f15710p.setText(this.f15717w.m35230Q().m35335b());
            }
        }
    }

    /* renamed from: l */
    public void m35943l() {
        String m35042i = this.f15717w.m35245B() != null ? this.f15717w.m35245B().m35042i() : null;
        this.f15633Q = m35042i;
        if (TextUtils.isEmpty(m35042i) || this.f15636T != 15) {
            return;
        }
        if (this.f15633Q.contains("?")) {
            this.f15633Q += "&orientation=portrait";
            return;
        }
        this.f15633Q += "?orientation=portrait";
    }

    /* renamed from: m */
    public void m35942m() {
        if (this.f15700f == null) {
            return;
        }
        C4557i c4557i = this.f15717w;
        if (c4557i == null || !c4557i.m35139u() || !this.f15717w.m35136x()) {
            this.f15700f.m34082a();
            return;
        }
        this.f15700f.m34080b();
        C4557i c4557i2 = this.f15717w;
        if (c4557i2 == null || !c4557i2.m35136x() || !this.f15717w.m35138v()) {
            return;
        }
        this.f15628L.sendMessageDelayed(m35964c(2), 10000L);
    }

    /* renamed from: n */
    public void m35941n() {
        if (!this.f15717w.m35137w() || this.f15717w.m35175f() != 1) {
            TextView textView = this.f15694ay;
            if (textView == null) {
                return;
            }
            C5443ag.m32228a((View) textView, 0);
            return;
        }
        TextView textView2 = this.f15694ay;
        if (textView2 == null) {
            return;
        }
        C5443ag.m32228a((View) textView2, 8);
    }

    /* renamed from: o */
    protected void m35940o() {
        TextView textView = this.f15694ay;
        if (textView != null) {
            C5443ag.m32228a((View) textView, 8);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C5443ag.m32234a((Activity) this);
        getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.8
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if (i == 0) {
                    try {
                        if (TTBaseVideoActivity.this.isFinishing()) {
                            return;
                        }
                        TTBaseVideoActivity.this.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C5443ag.m32234a((Activity) TTBaseVideoActivity.this);
                            }
                        }, 2500L);
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

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.f15664aU = bundle.getBoolean("is_bar_click_first");
        }
        try {
            this.f15643a = C5443ag.m32221b(this, C5443ag.m32206i(this));
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
            C4600n.m34814a(this);
        } catch (Throwable th3) {
        }
        if (bundle != null && bundle.getLong("video_current") > 0) {
            this.f15617A = bundle.getLong("video_current", 0L);
        }
        this.f15703i = this;
        C4924g c4924g = new C4924g(getApplicationContext());
        this.f15691av = c4924g;
        c4924g.m33562a(this);
        this.f15660aQ = this.f15691av.m33553g();
        C5478q.m32112b("onVolumeChanged", "onCreate >>>>>> mVolume = " + this.f15660aQ);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ObjectAnimator objectAnimator = this.f15662aS;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        RewardDislikeToast rewardDislikeToast = this.f15622F;
        if (rewardDislikeToast != null) {
            rewardDislikeToast.m35519b();
        }
        HandlerC5446ah handlerC5446ah = this.f15628L;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacksAndMessages(null);
        }
        C4804z.m33900a(this.f15703i, this.f15704j);
        C4804z.m33899a(this.f15704j);
        AbstractC4719c abstractC4719c = this.f15623G;
        if (abstractC4719c != null) {
            abstractC4719c.mo34258l();
            this.f15623G = null;
        }
        this.f15704j = null;
        C4754w c4754w = this.f15625I;
        if (c4754w != null) {
            c4754w.m34105h();
        }
        this.f15668aY.set(true);
        C4822k c4822k = this.f15718x;
        if (c4822k != null) {
            c4822k.m33811d();
        }
        C4924g c4924g = this.f15691av;
        if (c4924g != null) {
            c4924g.m33554f();
            this.f15691av.m33562a((AbstractC4923f) null);
        }
        m35971b(getApplicationContext());
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f15665aV = false;
        C5478q.m32112b("TTBaseVideoActivity", "onPause mIsActivityShow=" + this.f15665aV + " mIsMute=" + this.f15634R);
        SSWebView sSWebView = this.f15704j;
        if (sSWebView != null) {
            sSWebView.onPause();
        }
        if (Build.VERSION.SDK_INT < 26 && !"C8817D".equals(this.f15674ae) && !"M5".equals(this.f15674ae) && !"R7t".equals(this.f15674ae)) {
            try {
                if (m35935t() && !this.f15670aa.get()) {
                    this.f15623G.mo34264i();
                }
            } catch (Throwable th) {
                C5478q.m32106e("TTBaseVideoActivity", "onPause throw Exception :" + th.getMessage());
            }
        } else if (!this.f15670aa.get()) {
            m36002Y();
        }
        C4754w c4754w = this.f15625I;
        if (c4754w != null) {
            c4754w.m34108g();
            this.f15625I.m34124b(false);
            m35966b(false);
            m35977a(true, false);
        }
        C4557i c4557i = this.f15717w;
        if (c4557i == null || c4557i.m35175f() != 1 || !this.f15717w.m35137w()) {
            return;
        }
        this.f15628L.removeMessages(700);
        this.f15628L.removeMessages(950);
        this.f15628L.removeMessages(VastError.ERROR_CODE_UNKNOWN);
        this.f15628L.removeMessages(600);
        m35961c("go_background");
    }

    @Override // android.app.Activity
    public void onResume() {
        C4557i c4557i;
        this.f15665aV = true;
        C5478q.m32112b("TTBaseVideoActivity", "onResume mIsActivityShow=" + this.f15665aV + " mIsMute=" + this.f15634R);
        if (this.f15701g != null && m36003X()) {
            m36006U();
        }
        if (C4557i.m35191b(this.f15717w) || C4557i.m35184c(this.f15717w)) {
            if (this.f15660aQ == 0) {
                this.f15634R = true;
            }
            if (this.f15634R) {
                this.f15691av.m33561a(true);
                m35979a(true);
            }
        }
        super.onResume();
        SSWebView sSWebView = this.f15704j;
        if (sSWebView != null) {
            sSWebView.onResume();
        }
        C4924g c4924g = this.f15691av;
        if (c4924g != null) {
            c4924g.m33562a(this);
            this.f15691av.m33555e();
        }
        if (!this.f15639W.get()) {
            if (Build.VERSION.SDK_INT >= 26 || "C8817D".equals(this.f15674ae) || "M5".equals(this.f15674ae) || "R7t".equals(this.f15674ae)) {
                if (!this.f15670aa.get()) {
                    m36019D();
                }
            } else if (m35934u() && !this.f15670aa.get()) {
                this.f15623G.mo34260k();
            }
        }
        C4754w c4754w = this.f15625I;
        if (c4754w != null) {
            c4754w.m34111f();
            SSWebView sSWebView2 = this.f15704j;
            if (sSWebView2 != null) {
                if (sSWebView2.getVisibility() == 0) {
                    this.f15625I.m34124b(true);
                    m35966b(true);
                    m35977a(false, true);
                } else {
                    this.f15625I.m34124b(false);
                    m35966b(false);
                    m35977a(true, false);
                }
            }
        }
        C4822k c4822k = this.f15718x;
        if (c4822k != null) {
            c4822k.m33814b();
        }
        if (!this.f15649aF.get() || (c4557i = this.f15717w) == null || c4557i.m35175f() != 1 || !this.f15717w.m35137w()) {
            return;
        }
        m35961c("return_foreground");
        DialogC4766a dialogC4766a = this.f15673ad;
        if ((dialogC4766a != null && (dialogC4766a == null || dialogC4766a.isShowing())) || this.f15644aA <= 0) {
            return;
        }
        Message obtain = Message.obtain();
        if (this.f15647aD == this.f15648aE) {
            obtain.what = VastError.ERROR_CODE_UNKNOWN;
        } else {
            obtain.what = 950;
        }
        obtain.arg1 = this.f15644aA;
        obtain.arg2 = this.f15648aE;
        this.f15628L.sendMessage(obtain);
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        try {
            C4557i c4557i = this.f15717w;
            bundle2.putString("material_meta", c4557i != null ? c4557i.m35196ag().toString() : null);
            bundle2.putString("multi_process_meta_md5", this.f15719y);
            AbstractC4719c abstractC4719c = this.f15623G;
            bundle2.putLong("video_current", abstractC4719c == null ? this.f15617A : abstractC4719c.mo34256n());
            bundle2.putString("video_cache_url", this.f15618B);
            bundle2.putInt("orientation", this.f15619C);
            bundle2.putBoolean("is_mute", this.f15634R);
            bundle2.putBoolean("is_bar_click_first", this.f15664aU);
        } catch (Throwable th) {
        }
        super.onSaveInstanceState(bundle2);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        C5478q.m32112b("TTBaseVideoActivity", "onStop mIsMute=" + this.f15634R + " mLast=" + this.f15691av.m33559b() + " mVolume=" + this.f15660aQ);
        C4822k c4822k = this.f15718x;
        if (c4822k != null) {
            c4822k.m33812c();
        }
        C4557i c4557i = this.f15717w;
        if (c4557i != null && c4557i.m35175f() == 1 && this.f15717w.m35137w()) {
            this.f15628L.removeMessages(700);
            this.f15628L.removeMessages(950);
            this.f15628L.removeMessages(VastError.ERROR_CODE_UNKNOWN);
            this.f15628L.removeMessages(600);
            m35961c("go_background");
        }
        if (this.f15634R) {
            runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.9
                @Override // java.lang.Runnable
                public void run() {
                    if (TTBaseVideoActivity.this.f15691av.m33559b() > 0) {
                        TTBaseVideoActivity.this.f15691av.m33561a(false);
                    }
                }
            });
        }
    }

    /* renamed from: p */
    public void m35939p() {
        String str;
        if (this.f15681al != null) {
            if (this.f15717w.m35242E() == null || TextUtils.isEmpty(this.f15717w.m35242E().m35254a())) {
                this.f15681al.setImageResource(C5486x.m32067d(this, "tt_ad_logo_small"));
            } else {
                C4959e.m33434c().m33439a(this.f15717w.m35242E().m35254a(), this.f15681al);
            }
        }
        if (this.f15682am != null) {
            if (this.f15717w.m35230Q() == null || TextUtils.isEmpty(this.f15717w.m35230Q().m35335b())) {
                this.f15682am.setText(this.f15717w.m35234M());
            } else {
                this.f15682am.setText(this.f15717w.m35230Q().m35335b());
            }
        }
        if (this.f15684ao != null) {
            int i = 6870;
            if (this.f15717w.m35230Q() != null) {
                i = this.f15717w.m35230Q().m35328e();
            }
            String m32071a = C5486x.m32071a(this, "tt_comment_num_backup");
            if (i > 10000) {
                str = (i / 1000) + "k";
            } else {
                str = String.valueOf(i);
            }
            this.f15684ao.setText(String.format(m32071a, str));
        }
        TextView textView = this.f15685ap;
        if (textView != null) {
            textView.setText(m35929z());
        }
    }

    /* renamed from: q */
    public void m35938q() {
        if (this.f15702h == null) {
            return;
        }
        Keyframe ofFloat = Keyframe.ofFloat(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        Keyframe ofFloat2 = Keyframe.ofFloat(0.65f, 1.0f);
        Keyframe ofFloat3 = Keyframe.ofFloat(0.765f, 0.9f);
        Keyframe ofFloat4 = Keyframe.ofFloat(0.88f, 1.0f);
        Keyframe ofFloat5 = Keyframe.ofFloat(0.95f, 0.95f);
        Keyframe ofFloat6 = Keyframe.ofFloat(1.0f, 1.0f);
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f15702h, PropertyValuesHolder.ofKeyframe("scaleX", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6), PropertyValuesHolder.ofKeyframe("scaleY", ofFloat, ofFloat2, ofFloat3, ofFloat4, ofFloat5, ofFloat6));
        this.f15662aS = ofPropertyValuesHolder;
        ofPropertyValuesHolder.setDuration(1000L);
        this.f15662aS.start();
    }

    /* renamed from: r */
    public void m35937r() {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.f15676ag)) {
            hashMap.put("rit_scene", this.f15676ag);
        }
        C4754w c4754w = new C4754w(this.f15703i);
        this.f15625I = c4754w;
        c4754w.m34128b(this.f15704j).m34158a(this.f15717w).m34141a(this.f15629M).m34160a(this.f15708n).m34127b(this.f15630N).m34131b(this.f15631O).m34133a(this.f15692aw).m34146a(this.f15657aN).m34143a(this.f15658aO).m34144a(this.f15659aP).m34121c(C5438af.m32270f(this.f15717w)).m34149a(this.f15704j).m34137a(hashMap);
        C4754w c4754w2 = new C4754w(this);
        this.f15626J = c4754w2;
        c4754w2.m34128b(this.f15706l).m34158a(this.f15717w).m34141a(this.f15629M).m34127b(this.f15630N).m34131b(this.f15631O).m34149a(this.f15706l).m34121c(C5438af.m32270f(this.f15717w));
        this.f15625I.m34145a(new AbstractC4919b() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.19
            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4919b
            /* renamed from: a */
            public void mo33569a(boolean z, int i, String str) {
                C5478q.m32112b("end card load finish: ", "code=" + i + " msg=" + str + " isRenderSuc=" + z);
                if (z) {
                    TTBaseVideoActivity.this.f15687ar = true;
                }
            }
        });
        this.f15625I.m34142a(new AbstractC4926h() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.20
            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4926h
            /* renamed from: a */
            public void mo33551a() {
                SSWebView sSWebView = TTBaseVideoActivity.this.f15705k.get();
                if (sSWebView == null) {
                    C5478q.m32112b("TTBaseVideoActivity", "webView has destroy when onPauseWebView");
                    return;
                }
                sSWebView.onPause();
                C5478q.m32112b("TTBaseVideoActivity", "js make webView onPause OK");
            }

            @Override // com.bytedance.sdk.openadsdk.p170h.AbstractC4926h
            /* renamed from: b */
            public void mo33550b() {
                SSWebView sSWebView = TTBaseVideoActivity.this.f15705k.get();
                if (sSWebView == null) {
                    C5478q.m32112b("TTBaseVideoActivity", "webView has destroy when onPauseWebViewTimers");
                    return;
                }
                sSWebView.pauseTimers();
                C5478q.m32112b("TTBaseVideoActivity", "js make webView pauseTimers OK");
            }
        });
    }

    /* renamed from: s */
    public void m35936s() {
        C4557i c4557i;
        if ((Build.VERSION.SDK_INT < 17 || !isDestroyed()) && !isFinishing()) {
            this.f15653aJ = "endcard";
            this.f15670aa.set(false);
            this.f15671ab.set(false);
            m35973b();
            DialogC4766a dialogC4766a = this.f15673ad;
            if (dialogC4766a != null && dialogC4766a.isShowing()) {
                this.f15673ad.dismiss();
            }
            RewardDislikeToast rewardDislikeToast = this.f15622F;
            if (rewardDislikeToast != null) {
                rewardDislikeToast.m35523a();
            }
            if (this.f15701g != null) {
                if (C4557i.m35191b(this.f15717w)) {
                    this.f15701g.setShowSkip(true);
                } else {
                    this.f15701g.setShowSkip(false);
                }
                m36006U();
                if (((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) && C4557i.m35209a(this.f15717w)) {
                    this.f15701g.setShowSound(true);
                }
            }
            if (this.f15639W.getAndSet(true)) {
                return;
            }
            if (!C4557i.m35208a(this.f15717w, this.f15686aq.get(), this.f15687ar) && (c4557i = this.f15717w) != null && !c4557i.m35137w()) {
                C5478q.m32112b("TTBaseVideoActivity", "isEndCardLoadSuc=" + this.f15687ar + " so load back up end card");
                C5443ag.m32228a((View) this.f15704j, 8);
                C5443ag.m32228a((View) this.f15680ak, 0);
                m36005V();
                m36001Z();
                m36007S();
                return;
            }
            C5443ag.m32229a(this.f15704j, (float) BitmapDescriptorFactory.HUE_RED);
            C5443ag.m32229a(this.f15707m, (float) BitmapDescriptorFactory.HUE_RED);
            C5443ag.m32229a(this.f15708n, (float) BitmapDescriptorFactory.HUE_RED);
            C5443ag.m32228a((View) this.f15704j, 0);
            C4557i c4557i2 = this.f15717w;
            if (c4557i2 == null || !c4557i2.m35137w()) {
                C4557i c4557i3 = this.f15717w;
                if (c4557i3 != null && !c4557i3.m35137w()) {
                    int m34874m = C4600n.m34805h().m34874m(String.valueOf(this.f15638V));
                    if (m34874m == -1) {
                        m36005V();
                    } else if (m34874m >= 0) {
                        this.f15628L.sendEmptyMessageDelayed(600, m34874m);
                    }
                }
            } else {
                int m34868p = C4600n.m34805h().m34868p(String.valueOf(this.f15638V));
                if (this.f15717w.m35175f() == 1) {
                    m34868p = (C4600n.m34805h().m34870o(String.valueOf(this.f15638V)) + 1) * 1000;
                }
                if (m34868p == -1) {
                    m36005V();
                } else if (m34868p >= 0) {
                    this.f15628L.sendEmptyMessageDelayed(600, m34868p);
                }
            }
            this.f15628L.sendEmptyMessageDelayed(500, 20L);
            m35977a(this.f15634R, true);
            m35966b(true);
            m35940o();
            C4754w c4754w = this.f15625I;
            if (c4754w == null) {
                return;
            }
            c4754w.m34124b(true);
        }
    }

    /* renamed from: t */
    public boolean m35935t() {
        AbstractC4719c abstractC4719c = this.f15623G;
        return (abstractC4719c == null || abstractC4719c.mo34249u() == null || !this.f15623G.mo34249u().m34423g()) ? false : true;
    }

    /* renamed from: u */
    public boolean m35934u() {
        AbstractC4719c abstractC4719c = this.f15623G;
        return (abstractC4719c == null || abstractC4719c.mo34249u() == null || !this.f15623G.mo34249u().m34421i()) ? false : true;
    }

    /* renamed from: v */
    public boolean m35933v() {
        AbstractC4719c abstractC4719c = this.f15623G;
        return abstractC4719c != null && abstractC4719c.mo34246x();
    }

    /* renamed from: w */
    boolean m35932w() {
        C4557i c4557i = this.f15717w;
        return c4557i != null && c4557i.m35246A() == 1;
    }

    /* renamed from: x */
    public void m35931x() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        C4557i c4557i;
        C4557i c4557i2;
        C4557i c4557i3 = this.f15717w;
        if (c4557i3 == null) {
            return;
        }
        String str = this instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad";
        final String str2 = str;
        AbstractC4499e abstractC4499e = new AbstractC4499e(this, c4557i3, str, this.f15631O) { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.2
            @Override // com.bytedance.sdk.openadsdk.core.p151b.AbstractC4499e
            /* renamed from: a_ */
            public void mo35467a_(View view, int i, int i2, int i3, int i4) {
                TTBaseVideoActivity.this.mo34498a(view, i, i2, i3, i4);
                TTBaseVideoActivity.this.f15664aU = view.getId() == C5486x.m32066e(TTBaseVideoActivity.this, "tt_video_reward_bar");
                TTBaseVideoActivity.this.f15656aM = view;
                if (view.getId() == C5486x.m32066e(TTBaseVideoActivity.this, "tt_playable_play") && TTBaseVideoActivity.this.f15717w.m35136x()) {
                    HashMap hashMap = new HashMap();
                    if (TTBaseVideoActivity.this.f15717w.m35245B() != null) {
                        hashMap.put("playable_url", TTBaseVideoActivity.this.f15717w.m35245B().m35042i());
                    }
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    C4811e.m33860g(tTBaseVideoActivity, tTBaseVideoActivity.f15717w, str2, "click_playable_download_button_loading", hashMap);
                }
                if (TTBaseVideoActivity.this.f15624H == null) {
                    TTBaseVideoActivity.this.m35994a(view);
                } else if (view.getId() == C5486x.m32066e(TTBaseVideoActivity.this, "tt_rb_score")) {
                    TTBaseVideoActivity.this.m35980a("click_play_star_level", (JSONObject) null);
                } else if (view.getId() == C5486x.m32066e(TTBaseVideoActivity.this, "tt_comment_vertical")) {
                    TTBaseVideoActivity.this.m35980a("click_play_star_nums", (JSONObject) null);
                } else if (view.getId() == C5486x.m32066e(TTBaseVideoActivity.this, "tt_reward_ad_appname")) {
                    TTBaseVideoActivity.this.m35980a("click_play_source", (JSONObject) null);
                } else if (view.getId() != C5486x.m32066e(TTBaseVideoActivity.this, "tt_reward_ad_icon")) {
                } else {
                    TTBaseVideoActivity.this.m35980a("click_play_logo", (JSONObject) null);
                }
            }
        };
        this.f15663aT = abstractC4499e;
        abstractC4499e.m35481a(this.f15702h);
        if (!TextUtils.isEmpty(this.f15676ag)) {
            HashMap hashMap = new HashMap();
            hashMap.put("rit_scene", this.f15676ag);
            this.f15663aT.m35473a(hashMap);
        }
        AbstractC3234c abstractC3234c = this.f15624H;
        if (abstractC3234c != null) {
            this.f15663aT.m35480a(abstractC3234c);
        }
        PlayableLoadingView playableLoadingView = this.f15700f;
        if (playableLoadingView != null && playableLoadingView.getPlayView() != null && (c4557i2 = this.f15717w) != null && c4557i2.m35136x()) {
            this.f15700f.getPlayView().setOnClickListener(this.f15663aT);
            this.f15700f.getPlayView().setOnTouchListener(this.f15663aT);
        }
        C4557i c4557i4 = this.f15717w;
        if (c4557i4 != null && c4557i4.m35154m() != null) {
            if (this.f15717w.m35154m().f16471e) {
                this.f15712r.setOnClickListener(this.f15663aT);
                this.f15712r.setOnTouchListener(this.f15663aT);
            } else {
                this.f15712r.setOnClickListener(this.f15697bb);
            }
            if (this.f15677ah) {
                if (this.f15717w.m35154m().f16467a) {
                    C5443ag.m32226a((View) this.f15702h, (View.OnClickListener) this.f15663aT, "TTBaseVideoActivity#mRlDownloadBar");
                    C5443ag.m32225a((View) this.f15702h, (View.OnTouchListener) this.f15663aT, "TTBaseVideoActivity#mRlDownloadBar");
                    this.f15710p.setOnClickListener(this.f15663aT);
                    this.f15710p.setOnTouchListener(this.f15663aT);
                    this.f15711q.setOnClickListener(this.f15663aT);
                    this.f15711q.setOnTouchListener(this.f15663aT);
                    this.f15716v.setOnClickListener(this.f15663aT);
                    this.f15716v.setOnTouchListener(this.f15663aT);
                    this.f15709o.setOnClickListener(this.f15663aT);
                    this.f15709o.setOnTouchListener(this.f15663aT);
                } else {
                    C5443ag.m32226a(this.f15702h, this.f15697bb, "TTBaseVideoActivity#mRlDownloadBar");
                    this.f15710p.setOnClickListener(this.f15697bb);
                    this.f15711q.setOnClickListener(this.f15697bb);
                    this.f15716v.setOnClickListener(this.f15697bb);
                    this.f15709o.setOnClickListener(this.f15697bb);
                }
            } else if (this.f15717w.m35154m().f16469c) {
                C5443ag.m32226a((View) this.f15702h, (View.OnClickListener) this.f15663aT, "TTBaseVideoActivity#mRlDownloadBar");
                C5443ag.m32225a((View) this.f15702h, (View.OnTouchListener) this.f15663aT, "TTBaseVideoActivity#mRlDownloadBar");
            } else {
                C5443ag.m32226a(this.f15702h, this.f15697bb, "TTBaseVideoActivity#mRlDownloadBar");
            }
        }
        if (this.f15713s != null && (c4557i = this.f15717w) != null && c4557i.m35154m() != null) {
            if (this.f15717w.m35154m().f16472f) {
                this.f15713s.setOnClickListener(this.f15663aT);
            } else {
                this.f15713s.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TTBaseVideoActivity.this.m35994a(view);
                        TTBaseVideoActivity.this.m35970b(view);
                    }
                });
            }
        }
        if (this.f15677ah) {
            if (this.f15717w.m35154m() != null && (frameLayout2 = this.f15714t) != null) {
                C5443ag.m32228a((View) frameLayout2, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f15714t.getLayoutParams();
                layoutParams.height = this.f15679aj;
                this.f15714t.setLayoutParams(layoutParams);
                if (this.f15717w.m35154m().f16468b) {
                    this.f15714t.setOnClickListener(this.f15663aT);
                    this.f15714t.setOnTouchListener(this.f15663aT);
                } else {
                    this.f15714t.setOnClickListener(this.f15697bb);
                }
            }
            if (this.f15717w.m35154m() != null && (frameLayout = this.f15715u) != null) {
                C5443ag.m32228a((View) frameLayout, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f15715u.getLayoutParams();
                layoutParams2.height = this.f15679aj;
                this.f15715u.setLayoutParams(layoutParams2);
                if (this.f15717w.m35154m().f16470d) {
                    this.f15715u.setOnClickListener(this.f15663aT);
                    this.f15715u.setOnTouchListener(this.f15663aT);
                } else {
                    this.f15715u.setOnClickListener(this.f15697bb);
                }
            }
        }
        TextView textView = this.f15694ay;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C5478q.m32109c("mAdLogo", "mAdLogo,,,,,,,onClick,,,,,");
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    try {
                        TTWebsiteActivity.m35763a(tTBaseVideoActivity, tTBaseVideoActivity.f15717w, tTBaseVideoActivity instanceof TTRewardVideoActivity ? AdType.REWARDED_VIDEO : "fullscreen_interstitial_ad");
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        }
        C5443ag.m32226a(this.f15680ak, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "TTBaseVideoActivity#mLLEndCardBackup");
        this.f15685ap.setOnClickListener(this.f15663aT);
        this.f15685ap.setOnTouchListener(this.f15663aT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* renamed from: y */
    protected JSONObject m35930y() {
        JSONObject jSONObject;
        int i;
        ?? r7;
        try {
            AbstractC4719c abstractC4719c = this.f15623G;
            if (abstractC4719c != null) {
                r7 = abstractC4719c.mo34253q();
                i = this.f15623G.mo34252r();
            } else {
                r7 = false;
                i = 0;
            }
            jSONObject = new JSONObject();
        } catch (Throwable th) {
            jSONObject = null;
        }
        try {
            jSONObject.put(VastIconXmlManager.DURATION, r7 == true ? 1L : 0L);
            jSONObject.put("percent", i);
            return jSONObject;
        } catch (Throwable th2) {
            return jSONObject;
        }
    }

    /* renamed from: z */
    protected String m35929z() {
        String m32071a = C5486x.m32071a(this, "tt_video_download_apk");
        C4557i c4557i = this.f15717w;
        if (c4557i == null) {
            return m32071a;
        }
        if (!TextUtils.isEmpty(c4557i.m35232O())) {
            m32071a = this.f15717w.m35232O();
        } else if (this.f15717w.m35243D() != 4) {
            m32071a = C5486x.m32071a(this, "tt_video_mobile_go_detail");
        }
        return m32071a;
    }
}
