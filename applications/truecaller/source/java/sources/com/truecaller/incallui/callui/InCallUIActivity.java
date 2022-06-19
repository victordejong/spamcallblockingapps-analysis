package com.truecaller.incallui.callui;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.callergradient.CallerGradientView;
import com.truecaller.incallui.service.CallState;
import com.truecaller.incallui.utils.notification.NotificationUIEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p391x.C8349a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.C13711f;
import p193e.p194a.p717f.p718a.AbstractC13644i;
import p193e.p194a.p717f.p718a.AbstractC13647l;
import p193e.p194a.p717f.p718a.AbstractC13648m;
import p193e.p194a.p717f.p718a.C13649n;
import p193e.p194a.p717f.p718a.C13651o;
import p193e.p194a.p717f.p718a.C13652p;
import p193e.p194a.p717f.p718a.View$OnApplyWindowInsetsListenerC13645j;
import p193e.p194a.p717f.p718a.p719a.C13519a;
import p193e.p194a.p717f.p718a.p721b.C13577c;
import p193e.p194a.p717f.p731w.C13732b;
import p193e.p194a.p717f.p732x.C13742a;
import p193e.p194a.p852i.p907v.AbstractC15241a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.AbstractC15861w;
import p193e.p194a.p947k.p948a.p964k.C15850r;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.x2.i1;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� U2\u00020\u00012\u00020\u0002:\u0001VB\u0007¢\u0006\u0004\bT\u0010\u0012J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\b\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\b\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\u00052\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0012J\u0019\u0010\u0019\u001a\u00020\u00052\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0012J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0012J\u0019\u0010\u001d\u001a\u00020\u00052\b\b\u0001\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001d\u0010\u0017J\u0019\u0010\u001e\u001a\u00020\u00052\b\b\u0001\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001e\u0010\u0017J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0012J\u0019\u0010 \u001a\u00020\u00052\b\b\u0001\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b \u0010\u0017J\u0019\u0010!\u001a\u00020\u00052\b\b\u0001\u0010\u001c\u001a\u00020\u0014H\u0016¢\u0006\u0004\b!\u0010\u0017J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0012J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u0012J\u0017\u0010*\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\"H\u0016¢\u0006\u0004\b-\u0010%J\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\u0012J\u001f\u00102\u001a\u00020\u00052\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020\"H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0012J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0012J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0012J\u000f\u00107\u001a\u00020\u0005H\u0016¢\u0006\u0004\b7\u0010\u0012J\u0015\u0010:\u001a\b\u0012\u0004\u0012\u00020908H\u0016¢\u0006\u0004\b:\u0010;J\u0015\u0010<\u001a\b\u0012\u0004\u0012\u00020908H\u0016¢\u0006\u0004\b<\u0010;J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0012J\u000f\u0010>\u001a\u00020\u0005H\u0014¢\u0006\u0004\b>\u0010\u0012J\u000f\u0010?\u001a\u00020\u0005H\u0014¢\u0006\u0004\b?\u0010\u0012J\u000f\u0010@\u001a\u00020\u0005H\u0014¢\u0006\u0004\b@\u0010\u0012R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\"\u0010O\u001a\u00020I8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u0016\u0010S\u001a\u00020P8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bQ\u0010R¨\u0006W"}, d2 = {"Lcom/truecaller/incallui/callui/InCallUIActivity;", "Ln3/b/a/h;", "Le/a/f/a/m;", "Landroid/content/Intent;", "intent", "Ls1/s;", "pa", "(Landroid/content/Intent;)V", "onNewIntent", "Landroid/content/Context;", "newBase", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onResume", "", "logo", "w", "(I)V", "G0", "X0", "v0", "r5", RemoteMessageConst.Notification.COLOR, "P0", "y2", "O1", "e", "x0", "", "brandName", "q1", "(Ljava/lang/String;)V", "C0", "r0", "Lcom/truecaller/incallui/service/CallState;", "state", "W0", "(Lcom/truecaller/incallui/service/CallState;)V", "profilePicture", "P9", "y0", "Le/a/k/a/k/l;", DTBMetricsConfiguration.CONFIG_DIR, "analyticsContext", "r2", "(Le/a/k/a/k/l;Ljava/lang/String;)V", "r1", "k2", "onBackPressed", "J0", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "Z8", "()Lq3/a/x2/i1;", "p1", "t", "onPause", "onStop", "onDestroy", "Le/a/f/a/l;", "d", "Le/a/f/a/l;", "getPresenter", "()Le/a/f/a/l;", "setPresenter", "(Le/a/f/a/l;)V", "presenter", "Le/a/f/b;", "Le/a/f/b;", "getInCallUI", "()Le/a/f/b;", "setInCallUI", "(Le/a/f/b;)V", "inCallUI", "Le/a/f/x/a;", "f", "Le/a/f/x/a;", "binding", "<init>", "g", "a", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/InCallUIActivity.class */
public final class InCallUIActivity extends AbstractC13644i implements AbstractC13648m {

    /* renamed from: g */
    public static final C4019a f12407g = new C4019a(null);
    @Inject

    /* renamed from: d */
    public AbstractC13647l f12408d;
    @Inject

    /* renamed from: e */
    public AbstractC13706b f12409e;

    /* renamed from: f */
    public C13742a f12410f;

    /* renamed from: com.truecaller.incallui.callui.InCallUIActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/InCallUIActivity$a.class */
    public static final class C4019a {
        public C4019a(f fVar) {
        }

        /* renamed from: a */
        public final Intent m35302a(Context context, String str) {
            l.e(context, AnalyticsConstants.CONTEXT);
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return new Intent(context, InCallUIActivity.class).setAction("com.truecaller.incallui.callui.ACTION_SHOW").putExtra("com.truecaller.incallui.callui.PARAM_CONTEXT", str).setFlags(268435456).addFlags(262144);
        }
    }

    /* renamed from: com.truecaller.incallui.callui.InCallUIActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/InCallUIActivity$b.class */
    public static final class View$OnClickListenerC4020b implements View.OnClickListener {
        public View$OnClickListenerC4020b() {
            InCallUIActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC13647l abstractC13647l = InCallUIActivity.this.f12408d;
            if (abstractC13647l == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC13648m abstractC13648m = (AbstractC13648m) ((C13649n) abstractC13647l).f57683a;
            if (abstractC13648m == null) {
                return;
            }
            abstractC13648m.mo21378t();
        }
    }

    /* renamed from: com.truecaller.incallui.callui.InCallUIActivity$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/InCallUIActivity$c.class */
    public static final class C4021c implements FullScreenProfilePictureView.AbstractC3736a {
        public C4021c(String str) {
            InCallUIActivity.this = r4;
        }

        @Override // com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView.AbstractC3736a
        /* renamed from: a */
        public void mo35301a(C8349a c8349a) {
            l.e(c8349a, AnalyticsConstants.PROPERTIES);
            AbstractC13647l abstractC13647l = InCallUIActivity.this.f12408d;
            if (abstractC13647l == null) {
                l.l("presenter");
                throw null;
            }
            l.e(c8349a, AnalyticsConstants.PROPERTIES);
            ((C13649n) abstractC13647l).f39553p.mo21033g(c8349a);
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: C0 */
    public void mo21395C0() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        Group group = c13742a.f39800e;
        l.d(group, "binding.groupAd");
        C19286f.m13689O(group);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: G0 */
    public void mo21394G0() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        GoldShineImageView goldShineImageView = c13742a.f39802g;
        l.d(goldShineImageView, "binding.imageTruecallerLogo");
        C19286f.m13689O(goldShineImageView);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: J0 */
    public void mo21393J0() {
        getSupportFragmentManager().m42921c0();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: O1 */
    public void mo21392O1() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        ImageView imageView = c13742a.f39801f;
        l.d(imageView, "binding.imagePartnerLogo");
        C19286f.m13689O(imageView);
        C13742a c13742a2 = this.f12410f;
        if (c13742a2 == null) {
            l.l("binding");
            throw null;
        }
        View view = c13742a2.f39806k;
        l.d(view, "binding.viewLogoDivider");
        C19286f.m13689O(view);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: P0 */
    public void mo21391P0(int i) {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        c13742a.f39802g.setColor(i);
        C13742a c13742a2 = this.f12410f;
        if (c13742a2 != null) {
            c13742a2.f39803h.setColor(i);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: P9 */
    public void mo21390P9(String str) {
        l.e(str, "profilePicture");
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        FullScreenProfilePictureView fullScreenProfilePictureView = c13742a.f39798c;
        fullScreenProfilePictureView.m35662e(Uri.parse(str), new C4021c(str));
        C19286f.m13684T(fullScreenProfilePictureView);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: W0 */
    public void mo21389W0(CallState callState) {
        l.e(callState, "state");
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        ImageButton imageButton = c13742a.f39797b;
        l.d(imageButton, "binding.buttonMinimise");
        C19286f.m13684T(imageButton);
        if (getSupportFragmentManager().m42942K("OUTGOING_CALL_FRAGMENT_TAG") != null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            Fragment m42942K = getSupportFragmentManager().m42942K("OUTGOING_CALL_FRAGMENT_TAG");
            Objects.requireNonNull(m42942K, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
            c26907a.m1129d(new AbstractC26924f0.C26925a(7, m42942K));
            c26907a.mo1126g();
            return;
        }
        C26907a c26907a2 = new C26907a(getSupportFragmentManager());
        int i = C4013R.C4015id.view_fragment_container;
        Objects.requireNonNull(C13577c.f39344o);
        l.e(callState, "callState");
        C13577c c13577c = new C13577c();
        Bundle bundle = new Bundle();
        bundle.putString("call_state", callState.name());
        c13577c.setArguments(bundle);
        c26907a2.m1120m(i, c13577c, "OUTGOING_CALL_FRAGMENT_TAG");
        c26907a2.mo1126g();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: X0 */
    public void mo21388X0(int i) {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        GoldShineImageView goldShineImageView = c13742a.f39803h;
        C19286f.m13684T(goldShineImageView);
        goldShineImageView.setImageResource(i);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: Z8 */
    public i1<AbstractC15868b> mo21387Z8() {
        C13742a c13742a = this.f12410f;
        if (c13742a != null) {
            return c13742a.f39799d.getPlayingState();
        }
        l.l("binding");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void attachBaseContext(Context context) {
        Configuration configuration;
        l.e(context, "newBase");
        Resources resources = context.getResources();
        if (resources == null || (configuration = resources.getConfiguration()) == null) {
            InCallUIActivity.super.attachBaseContext(context);
            return;
        }
        try {
            Configuration configuration2 = new Configuration(configuration);
            if (configuration2.fontScale != 1.0f) {
                configuration2.fontScale = 1.0f;
                applyOverrideConfiguration(configuration2);
            }
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        InCallUIActivity.super.attachBaseContext(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: e */
    public void mo21386e(int i) {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        ImageView imageView = c13742a.f39801f;
        l.d(imageView, "binding.imagePartnerLogo");
        imageView.setImageTintList(ColorStateList.valueOf(getColor(i)));
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: k2 */
    public void mo21385k2() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        AbstractC15861w abstractC15861w = c13742a.f39799d.f44625a;
        if (abstractC15861w != null) {
            ((C15850r) abstractC15861w).m18244Oj();
        }
        C13742a c13742a2 = this.f12410f;
        if (c13742a2 == null) {
            l.l("binding");
            throw null;
        }
        FullScreenVideoPlayerView fullScreenVideoPlayerView = c13742a2.f39799d;
        l.d(fullScreenVideoPlayerView, "binding.fullscreenVideoPlayer");
        C19286f.m13689O(fullScreenVideoPlayerView);
    }

    public void onBackPressed() {
        AbstractC13647l abstractC13647l = this.f12408d;
        if (abstractC13647l == null) {
            l.l("presenter");
            throw null;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        int m42940M = supportFragmentManager.m42940M();
        C13649n c13649n = (C13649n) abstractC13647l;
        if (m42940M > 0) {
            AbstractC13648m abstractC13648m = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m == null) {
                return;
            }
            abstractC13648m.mo21393J0();
            return;
        }
        AbstractC13648m abstractC13648m2 = (AbstractC13648m) c13649n.f57683a;
        if (abstractC13648m2 == null) {
            return;
        }
        abstractC13648m2.mo21378t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        InCallUIActivity.super.onCreate(bundle);
        View inflate = getLayoutInflater().inflate(C4013R.layout.activity_incallui, (ViewGroup) null, false);
        int i = C4013R.C4015id.button_minimise;
        ImageButton imageButton = (ImageButton) inflate.findViewById(i);
        if (imageButton != null) {
            i = C4013R.C4015id.caller_gradient;
            CallerGradientView callerGradientView = (CallerGradientView) inflate.findViewById(i);
            if (callerGradientView != null) {
                i = C4013R.C4015id.full_profile_picture;
                FullScreenProfilePictureView fullScreenProfilePictureView = (FullScreenProfilePictureView) inflate.findViewById(i);
                if (fullScreenProfilePictureView != null) {
                    i = C4013R.C4015id.fullscreen_video_player;
                    FullScreenVideoPlayerView fullScreenVideoPlayerView = (FullScreenVideoPlayerView) inflate.findViewById(i);
                    if (fullScreenVideoPlayerView != null) {
                        i = C4013R.C4015id.group_ad;
                        Group group = (Group) inflate.findViewById(i);
                        if (group != null) {
                            int i2 = C4013R.C4015id.guide_with_top_window_inset;
                            Guideline guideline = (Guideline) inflate.findViewById(i2);
                            i = i2;
                            if (guideline != null) {
                                i = C4013R.C4015id.header_barrier;
                                Barrier barrier = (Barrier) inflate.findViewById(i);
                                if (barrier != null) {
                                    i = C4013R.C4015id.image_partner_logo;
                                    ImageView imageView = (ImageView) inflate.findViewById(i);
                                    if (imageView != null) {
                                        i = C4013R.C4015id.image_truecaller_logo;
                                        GoldShineImageView goldShineImageView = (GoldShineImageView) inflate.findViewById(i);
                                        if (goldShineImageView != null) {
                                            i = C4013R.C4015id.image_truecaller_premium_logo;
                                            GoldShineImageView goldShineImageView2 = (GoldShineImageView) inflate.findViewById(i);
                                            if (goldShineImageView2 != null) {
                                                ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                                                i = C4013R.C4015id.text_ad;
                                                TextView textView = (TextView) inflate.findViewById(i);
                                                if (textView != null) {
                                                    i = C4013R.C4015id.text_sponsored_ad;
                                                    TextView textView2 = (TextView) inflate.findViewById(i);
                                                    if (textView2 != null) {
                                                        i = C4013R.C4015id.view_fragment_container;
                                                        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i);
                                                        if (frameLayout != null) {
                                                            i = C4013R.C4015id.view_logo_divider;
                                                            View findViewById = inflate.findViewById(i);
                                                            if (findViewById != null) {
                                                                C13742a c13742a = new C13742a(constraintLayout, imageButton, callerGradientView, fullScreenProfilePictureView, fullScreenVideoPlayerView, group, guideline, barrier, imageView, goldShineImageView, goldShineImageView2, constraintLayout, textView, textView2, frameLayout, findViewById);
                                                                l.d(c13742a, "ActivityIncalluiBinding.inflate(layoutInflater)");
                                                                this.f12410f = c13742a;
                                                                if (c13742a == null) {
                                                                    l.l("binding");
                                                                    throw null;
                                                                }
                                                                setContentView(c13742a.f39796a);
                                                                overridePendingTransition(C4013R.anim.fast_slide_in_up, C4013R.anim.fast_slide_out_down);
                                                                View findViewById2 = findViewById(16908290);
                                                                findViewById2.setSystemUiVisibility(1280);
                                                                findViewById2.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC13645j((Guideline) findViewById(i2)));
                                                                C19286f.m13694J(findViewById2);
                                                                C12864a2.m22550i0(this);
                                                                AbstractC13647l abstractC13647l = this.f12408d;
                                                                if (abstractC13647l == null) {
                                                                    l.l("presenter");
                                                                    throw null;
                                                                }
                                                                ((C13649n) abstractC13647l).mo9029Y0(this);
                                                                AbstractC13647l abstractC13647l2 = this.f12408d;
                                                                if (abstractC13647l2 == null) {
                                                                    l.l("presenter");
                                                                    throw null;
                                                                }
                                                                C13649n c13649n = (C13649n) abstractC13647l2;
                                                                C19291g.m13599P0(c13649n, c13649n.f39547j.mo21199h(), new C13651o(c13649n, null));
                                                                C19291g.m13599P0(c13649n, c13649n.f39551n.mo21236a(), new C13652p(c13649n, null));
                                                                ((AbstractC15241a) ((C13711f) ((C13732b) c13649n.f39552o).f39776b).f39702d.get()).m19013a("fullScreenAfterCallScreen");
                                                                m35303pa(getIntent());
                                                                C13742a c13742a2 = this.f12410f;
                                                                if (c13742a2 != null) {
                                                                    c13742a2.f39797b.setOnClickListener(new View$OnClickListenerC4020b());
                                                                    return;
                                                                } else {
                                                                    l.l("binding");
                                                                    throw null;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        AbstractC13647l abstractC13647l = this.f12408d;
        if (abstractC13647l == null) {
            l.l("presenter");
            throw null;
        }
        ((C13649n) abstractC13647l).mo9806c();
        InCallUIActivity.super.onDestroy();
    }

    public void onNewIntent(Intent intent) {
        InCallUIActivity.super.onNewIntent(intent);
        m35303pa(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        overridePendingTransition(C4013R.anim.fast_fade_in, C4013R.anim.fast_fade_out);
        InCallUIActivity.super.onPause();
    }

    public void onResume() {
        InCallUIActivity.super.onResume();
        AbstractC13706b abstractC13706b = this.f12409e;
        if (abstractC13706b == null) {
            l.l("inCallUI");
            throw null;
        } else if (abstractC13706b.mo21263f()) {
        } else {
            AbstractC13647l abstractC13647l = this.f12408d;
            if (abstractC13647l != null) {
                ((C13649n) abstractC13647l).f39547j.mo21224F();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    public void onStart() {
        InCallUIActivity.super.onStart();
        AbstractC13647l abstractC13647l = this.f12408d;
        if (abstractC13647l == null) {
            l.l("presenter");
            throw null;
        }
        C13649n c13649n = (C13649n) abstractC13647l;
        c13649n.f39550m.mo21074H0();
        c13649n.f39544g = c13649n.f39555r.mo13821a();
    }

    public void onStop() {
        AbstractC13647l abstractC13647l = this.f12408d;
        if (abstractC13647l == null) {
            l.l("presenter");
            throw null;
        }
        C13649n c13649n = (C13649n) abstractC13647l;
        c13649n.f39550m.mo21063o1();
        c13649n.f39553p.mo21037c(c13649n.f39555r.mo13821a() - c13649n.f39544g);
        InCallUIActivity.super.onStop();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: p1 */
    public i1<AbstractC15868b> mo21384p1() {
        C13742a c13742a = this.f12410f;
        if (c13742a != null) {
            return c13742a.f39799d.getPlayingState();
        }
        l.l("binding");
        throw null;
    }

    /* renamed from: pa */
    public final void m35303pa(Intent intent) {
        String stringExtra = intent != null ? intent.getStringExtra("com.truecaller.incallui.callui.PARAM_CONTEXT") : null;
        String action = intent != null ? intent.getAction() : null;
        if (action == null) {
            return;
        }
        int hashCode = action.hashCode();
        if (hashCode == -948424551) {
            if (!action.equals("com.truecaller.incallui.callui.ACTION_SHOW")) {
                return;
            }
            AbstractC13647l abstractC13647l = this.f12408d;
            if (abstractC13647l == null) {
                l.l("presenter");
                throw null;
            }
            C13649n c13649n = (C13649n) abstractC13647l;
            Objects.requireNonNull(c13649n);
            if (stringExtra == null || stringExtra.hashCode() != 759553291 || !stringExtra.equals("Notification")) {
                return;
            }
            c13649n.f39553p.mo21031i(NotificationUIEvent.CONTENT_CLICK);
        } else if (hashCode != 361822499 || !action.equals("com.truecaller.incallui.callui.ACTION_ANSWER_CALL")) {
        } else {
            AbstractC13647l abstractC13647l2 = this.f12408d;
            if (abstractC13647l2 == null) {
                l.l("presenter");
                throw null;
            }
            C13649n c13649n2 = (C13649n) abstractC13647l2;
            c13649n2.f39550m.mo21065n1();
            c13649n2.f39547j.mo21190q();
            if (stringExtra == null || stringExtra.hashCode() != 759553291 || !stringExtra.equals("Notification")) {
                return;
            }
            c13649n2.f39553p.mo21031i(NotificationUIEvent.ANSWER_CLICK);
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: q1 */
    public void mo21383q1(String str) {
        l.e(str, "brandName");
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        TextView textView = c13742a.f39804i;
        l.d(textView, "binding.textAd");
        textView.setText(str);
        C13742a c13742a2 = this.f12410f;
        if (c13742a2 == null) {
            l.l("binding");
            throw null;
        }
        Group group = c13742a2.f39800e;
        l.d(group, "binding.groupAd");
        C19286f.m13684T(group);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: r0 */
    public void mo21382r0() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        ImageButton imageButton = c13742a.f39797b;
        l.d(imageButton, "binding.buttonMinimise");
        C19286f.m13687Q(imageButton);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        int i = C4013R.C4015id.view_fragment_container;
        Objects.requireNonNull(C13519a.f39203j);
        c26907a.m1120m(i, new C13519a(), null);
        c26907a.mo1126g();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: r1 */
    public void mo21381r1() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        FullScreenVideoPlayerView fullScreenVideoPlayerView = c13742a.f39799d;
        l.d(fullScreenVideoPlayerView, "binding.fullscreenVideoPlayer");
        C19286f.m13684T(fullScreenVideoPlayerView);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: r2 */
    public void mo21380r2(AbstractC15836l abstractC15836l, String str) {
        l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(str, "analyticsContext");
        C13742a c13742a = this.f12410f;
        if (c13742a != null) {
            c13742a.f39799d.m34438g(abstractC15836l, str);
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: r5 */
    public void mo21379r5() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        c13742a.f39802g.m35656h();
        C13742a c13742a2 = this.f12410f;
        if (c13742a2 != null) {
            c13742a2.f39803h.m35656h();
        } else {
            l.l("binding");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: t */
    public void mo21378t() {
        finish();
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: v0 */
    public void mo21377v0() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        GoldShineImageView goldShineImageView = c13742a.f39803h;
        l.d(goldShineImageView, "binding.imageTruecallerPremiumLogo");
        C19286f.m13689O(goldShineImageView);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: w */
    public void mo21376w(int i) {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        GoldShineImageView goldShineImageView = c13742a.f39802g;
        C19286f.m13684T(goldShineImageView);
        goldShineImageView.setImageResource(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: x0 */
    public void mo21375x0(int i) {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        View view = c13742a.f39806k;
        Object obj = C26467a.f74235a;
        view.setBackgroundColor(C26467a.C26471d.m1787a(this, i));
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: y0 */
    public void mo21374y0() {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        FullScreenProfilePictureView fullScreenProfilePictureView = c13742a.f39798c;
        l.d(fullScreenProfilePictureView, "binding.fullProfilePicture");
        C19286f.m13689O(fullScreenProfilePictureView);
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13648m
    /* renamed from: y2 */
    public void mo21373y2(int i) {
        C13742a c13742a = this.f12410f;
        if (c13742a == null) {
            l.l("binding");
            throw null;
        }
        c13742a.f39802g.setImageResource(i);
        C13742a c13742a2 = this.f12410f;
        if (c13742a2 == null) {
            l.l("binding");
            throw null;
        }
        ImageView imageView = c13742a2.f39801f;
        l.d(imageView, "binding.imagePartnerLogo");
        C19286f.m13684T(imageView);
        C13742a c13742a3 = this.f12410f;
        if (c13742a3 == null) {
            l.l("binding");
            throw null;
        }
        View view = c13742a3.f39806k;
        l.d(view, "binding.viewLogoDivider");
        C19286f.m13684T(view);
    }
}
