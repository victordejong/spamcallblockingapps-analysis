package com.truecaller.ghost_call;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.common.p156ui.imageview.FullScreenProfilePictureView;
import com.truecaller.common.p156ui.imageview.GoldShineImageView;
import com.truecaller.incallui.service.CallState;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1349x.AbstractC21335g0;
import p193e.p194a.p1349x.AbstractC21375n;
import p193e.p194a.p1349x.AbstractC21376o;
import p193e.p194a.p1349x.C21382t;
import p193e.p194a.p1349x.View$OnApplyWindowInsetsListenerC21388z;
import p193e.p194a.p1349x.p1350a.C21311a;
import p193e.p194a.p1349x.p1355k0.C21362a;
import p193e.p194a.p682e.C12864a2;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bX\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0016\u0010\u0005J\u0017\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u0017\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001a\u0010\u0015J\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001b\u0010\u0015J\u0017\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u0015J\u000f\u0010\u001d\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001e\u0010\u0005J\u0017\u0010!\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0003H\u0016¢\u0006\u0004\b#\u0010\u0005J\u000f\u0010$\u001a\u00020\u0003H\u0016¢\u0006\u0004\b$\u0010\u0005J\u000f\u0010%\u001a\u00020\u0003H\u0016¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010&\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\u0003H\u0014¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0003H\u0014¢\u0006\u0004\b(\u0010\u0005R%\u0010/\u001a\n **\u0004\u0018\u00010)0)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R%\u00104\u001a\n **\u0004\u0018\u000100008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010,\u001a\u0004\b2\u00103R%\u00109\u001a\n **\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010,\u001a\u0004\b7\u00108R%\u0010>\u001a\n **\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010,\u001a\u0004\b<\u0010=R\"\u0010F\u001a\u00020?8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER%\u0010I\u001a\n **\u0004\u0018\u00010)0)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010,\u001a\u0004\bH\u0010.R%\u0010N\u001a\n **\u0004\u0018\u00010J0J8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bK\u0010,\u001a\u0004\bL\u0010MR%\u0010R\u001a\n **\u0004\u0018\u00010O0O8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010,\u001a\u0004\bP\u0010QR%\u0010W\u001a\n **\u0004\u0018\u00010S0S8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010,\u001a\u0004\bU\u0010V¨\u0006Y"}, d2 = {"Lcom/truecaller/ghost_call/GhostInCallUIActivity;", "Ln3/b/a/h;", "Le/a/x/o;", "Ls1/s;", "onStart", "()V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "Landroid/content/Context;", "newBase", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "logo", "w", "(I)V", "G0", "X0", "v0", RemoteMessageConst.Notification.COLOR, "P0", "e", "x0", "C0", "r0", "Lcom/truecaller/incallui/service/CallState;", "state", "W0", "(Lcom/truecaller/incallui/service/CallState;)V", "y0", "onBackPressed", "J0", "t", "onPause", "onDestroy", "Lcom/truecaller/common/ui/imageview/GoldShineImageView;", "kotlin.jvm.PlatformType", "f", "Ls1/g;", "qa", "()Lcom/truecaller/common/ui/imageview/GoldShineImageView;", "imageTruecallerLogo", "Landroid/widget/ImageView;", "h", "getImagePartnerLogo", "()Landroid/widget/ImageView;", "imagePartnerLogo", "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;", "k", "getFullProfilePicture", "()Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;", "fullProfilePicture", "Landroid/view/View;", "i", "getViewLogoDivider", "()Landroid/view/View;", "viewLogoDivider", "Le/a/x/n;", "d", "Le/a/x/n;", "getPresenter", "()Le/a/x/n;", "setPresenter", "(Le/a/x/n;)V", "presenter", "g", "ra", "imageTruecallerPremiumLogo", "Landroidx/constraintlayout/widget/Group;", "j", "getGroupAd", "()Landroidx/constraintlayout/widget/Group;", "groupAd", "Landroid/widget/ImageButton;", "pa", "()Landroid/widget/ImageButton;", "buttonMinimise", "Landroidx/constraintlayout/widget/ConstraintLayout;", "l", "getParentLayout", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "parentLayout", "<init>", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/GhostInCallUIActivity.class */
public final class GhostInCallUIActivity extends AbstractC21335g0 implements AbstractC21376o {
    @Inject

    /* renamed from: d */
    public AbstractC21375n f12269d;

    /* renamed from: e */
    public final g f12270e = C19286f.m13662q(this, C4002R.C4004id.button_minimise);

    /* renamed from: f */
    public final g f12271f = C19286f.m13662q(this, C4002R.C4004id.image_truecaller_logo);

    /* renamed from: g */
    public final g f12272g = C19286f.m13662q(this, C4002R.C4004id.image_truecaller_premium_logo);

    /* renamed from: h */
    public final g f12273h = C19286f.m13662q(this, C4002R.C4004id.image_partner_logo);

    /* renamed from: i */
    public final g f12274i = C19286f.m13662q(this, C4002R.C4004id.view_logo_divider);

    /* renamed from: j */
    public final g f12275j = C19286f.m13662q(this, C4002R.C4004id.group_ad);

    /* renamed from: k */
    public final g f12276k = C19286f.m13662q(this, C4002R.C4004id.full_profile_picture);

    /* renamed from: l */
    public final g f12277l = C19286f.m13662q(this, C4002R.C4004id.parent_layout);

    /* renamed from: com.truecaller.ghost_call.GhostInCallUIActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/GhostInCallUIActivity$a.class */
    public static final class View$OnClickListenerC4001a implements View.OnClickListener {
        public View$OnClickListenerC4001a() {
            GhostInCallUIActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC21375n abstractC21375n = GhostInCallUIActivity.this.f12269d;
            if (abstractC21375n == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC21376o abstractC21376o = (AbstractC21376o) ((C21382t) abstractC21375n).f57683a;
            if (abstractC21376o == null) {
                return;
            }
            abstractC21376o.mo9817t();
        }
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: C0 */
    public void mo9825C0() {
        Group group = (Group) this.f12275j.getValue();
        l.d(group, "groupAd");
        C19286f.m13689O(group);
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: G0 */
    public void mo9824G0() {
        GoldShineImageView m35310qa = m35310qa();
        l.d(m35310qa, "imageTruecallerLogo");
        C19286f.m13689O(m35310qa);
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: J0 */
    public void mo9823J0() {
        getSupportFragmentManager().m42921c0();
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: P0 */
    public void mo9822P0(int i) {
        m35310qa().setColor(i);
        m35309ra().setColor(i);
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: W0 */
    public void mo9821W0(CallState callState) {
        l.e(callState, "state");
        ImageButton m35311pa = m35311pa();
        l.d(m35311pa, "buttonMinimise");
        C19286f.m13684T(m35311pa);
        if (getSupportFragmentManager().m42942K("PRETEND_OUTGOING_CALL_FRAGMENT_TAG") == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            int i = C4002R.C4004id.view_fragment_container;
            Objects.requireNonNull(C21362a.f59808j);
            c26907a.m1120m(i, new C21362a(), "PRETEND_OUTGOING_CALL_FRAGMENT_TAG");
            c26907a.mo1126g();
            return;
        }
        C26907a c26907a2 = new C26907a(getSupportFragmentManager());
        Fragment m42942K = getSupportFragmentManager().m42942K("PRETEND_OUTGOING_CALL_FRAGMENT_TAG");
        Objects.requireNonNull(m42942K, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
        c26907a2.m1129d(new AbstractC26924f0.C26925a(7, m42942K));
        c26907a2.mo1126g();
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: X0 */
    public void mo9820X0(int i) {
        GoldShineImageView m35309ra = m35309ra();
        C19286f.m13684T(m35309ra);
        m35309ra.setImageResource(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void attachBaseContext(Context context) {
        Configuration configuration;
        l.e(context, "newBase");
        Resources resources = context.getResources();
        if (resources == null || (configuration = resources.getConfiguration()) == null) {
            GhostInCallUIActivity.super.attachBaseContext(context);
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
        GhostInCallUIActivity.super.attachBaseContext(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: e */
    public void mo9819e(int i) {
        ImageView imageView = (ImageView) this.f12273h.getValue();
        l.d(imageView, "imagePartnerLogo");
        Object obj = C26467a.f74235a;
        imageView.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(this, i)));
    }

    public void onBackPressed() {
        AbstractC21375n abstractC21375n = this.f12269d;
        if (abstractC21375n == null) {
            l.l("presenter");
            throw null;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        int m42940M = supportFragmentManager.m42940M();
        C21382t c21382t = (C21382t) abstractC21375n;
        if (m42940M > 0) {
            AbstractC21376o abstractC21376o = (AbstractC21376o) c21382t.f57683a;
            if (abstractC21376o == null) {
                return;
            }
            abstractC21376o.mo9823J0();
            return;
        }
        AbstractC21376o abstractC21376o2 = (AbstractC21376o) c21382t.f57683a;
        if (abstractC21376o2 == null) {
            return;
        }
        abstractC21376o2.mo9817t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        GhostInCallUIActivity.super.onCreate(bundle);
        setContentView(C4002R.layout.activity_ghost_incallui);
        ConstraintLayout constraintLayout = (ConstraintLayout) this.f12277l.getValue();
        int i = C4002R.color.incallui_background_color;
        Object obj = C26467a.f74235a;
        constraintLayout.setBackgroundColor(C26467a.C26471d.m1787a(this, i));
        overridePendingTransition(C4002R.anim.fast_slide_in_up, C4002R.anim.fast_slide_out_down);
        View findViewById = findViewById(16908290);
        findViewById.setSystemUiVisibility(1280);
        findViewById.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC21388z((Guideline) findViewById(C4002R.C4004id.guide_with_top_window_inset)));
        C19286f.m13694J(findViewById);
        C12864a2.m22550i0(this);
        AbstractC21375n abstractC21375n = this.f12269d;
        if (abstractC21375n == null) {
            l.l("presenter");
            throw null;
        }
        ((C21382t) abstractC21375n).mo9029Y0(this);
        AbstractC21375n abstractC21375n2 = this.f12269d;
        if (abstractC21375n2 == null) {
            l.l("presenter");
            throw null;
        }
        ((C21382t) abstractC21375n2).m9808Ij();
        m35311pa().setOnClickListener(new View$OnClickListenerC4001a());
    }

    public void onDestroy() {
        AbstractC21375n abstractC21375n = this.f12269d;
        if (abstractC21375n == null) {
            l.l("presenter");
            throw null;
        }
        ((C21382t) abstractC21375n).mo9806c();
        GhostInCallUIActivity.super.onDestroy();
    }

    public void onNewIntent(Intent intent) {
        GhostInCallUIActivity.super.onNewIntent(intent);
        AbstractC21375n abstractC21375n = this.f12269d;
        if (abstractC21375n != null) {
            ((C21382t) abstractC21375n).m9808Ij();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        overridePendingTransition(C4002R.anim.fast_fade_in, C4002R.anim.fast_fade_out);
        GhostInCallUIActivity.super.onPause();
    }

    public void onStart() {
        GhostInCallUIActivity.super.onStart();
        AbstractC21375n abstractC21375n = this.f12269d;
        if (abstractC21375n != null) {
            ((C21382t) abstractC21375n).f59845h.mo13821a();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: pa */
    public final ImageButton m35311pa() {
        return (ImageButton) this.f12270e.getValue();
    }

    /* renamed from: qa */
    public final GoldShineImageView m35310qa() {
        return (GoldShineImageView) this.f12271f.getValue();
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: r0 */
    public void mo9818r0() {
        ImageButton m35311pa = m35311pa();
        l.d(m35311pa, "buttonMinimise");
        C19286f.m13687Q(m35311pa);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        int i = C4002R.C4004id.view_fragment_container;
        Objects.requireNonNull(C21311a.f59695i);
        c26907a.m1120m(i, new C21311a(), null);
        c26907a.mo1126g();
    }

    /* renamed from: ra */
    public final GoldShineImageView m35309ra() {
        return (GoldShineImageView) this.f12272g.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: t */
    public void mo9817t() {
        finishAndRemoveTask();
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: v0 */
    public void mo9816v0() {
        GoldShineImageView m35309ra = m35309ra();
        l.d(m35309ra, "imageTruecallerPremiumLogo");
        C19286f.m13689O(m35309ra);
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: w */
    public void mo9815w(int i) {
        GoldShineImageView m35310qa = m35310qa();
        C19286f.m13684T(m35310qa);
        m35310qa.setImageResource(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: x0 */
    public void mo9814x0(int i) {
        View view = (View) this.f12274i.getValue();
        Object obj = C26467a.f74235a;
        view.setBackgroundColor(C26467a.C26471d.m1787a(this, i));
    }

    @Override // p193e.p194a.p1349x.AbstractC21376o
    /* renamed from: y0 */
    public void mo9813y0() {
        FullScreenProfilePictureView fullScreenProfilePictureView = (FullScreenProfilePictureView) this.f12276k.getValue();
        l.d(fullScreenProfilePictureView, "fullProfilePicture");
        C19286f.m13689O(fullScreenProfilePictureView);
    }
}
