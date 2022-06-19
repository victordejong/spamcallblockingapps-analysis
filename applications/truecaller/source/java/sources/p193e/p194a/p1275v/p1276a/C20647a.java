package p193e.p194a.p1275v.p1276a;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsetsController;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout$g;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.tag.TagXView;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.details_view.p162ui.actionbutton.ActionButton;
import com.truecaller.details_view.p162ui.actionbutton.ActionButtonBarView;
import com.truecaller.details_view.p162ui.presence.PresenceView;
import com.truecaller.details_view.p162ui.showcase.DetailsShowcases;
import com.truecaller.details_view.p162ui.theming.StatusBarAppearance;
import com.truecaller.details_view.p162ui.widget.WidgetType;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.referrals.analytics.ReferralAnalytics$Source;
import com.truecaller.spamcategories.SpamCategoryRequest;
import com.truecaller.spamcategories.SpamCategoryResult;
import com.truecaller.spamcategories.p178ui.SpamCategoriesActivity;
import com.truecaller.tagger.NameSuggestionActivity;
import com.truecaller.timezone.TimezoneView;
import com.truecaller.truecontext.TrueContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.whoviewedme.GenerateProfileViewService;
import com.truecaller.whoviewedme.ProfileViewSource;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1728a.AbstractC25369b;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1795i.p1802c.C26389d;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26577e0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1275v.p1276a.p1277a0.C20666b;
import p193e.p194a.p1275v.p1276a.p1279b0.C20684d;
import p193e.p194a.p1275v.p1276a.p1280c.p1281a.C20687a;
import p193e.p194a.p1275v.p1276a.p1283c0.C20717n;
import p193e.p194a.p1275v.p1276a.p1284d0.C20736d;
import p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20741a;
import p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b;
import p193e.p194a.p1275v.p1276a.p1285e0.C20743c;
import p193e.p194a.p1275v.p1276a.p1285e0.C20747f;
import p193e.p194a.p1275v.p1276a.p1285e0.C20748g;
import p193e.p194a.p1275v.p1276a.p1285e0.C20749h;
import p193e.p194a.p1275v.p1276a.p1285e0.C20750i;
import p193e.p194a.p1275v.p1276a.p1286f0.C20756d;
import p193e.p194a.p1275v.p1276a.p1287g0.C20762d;
import p193e.p194a.p1275v.p1276a.p1288h0.C20768d;
import p193e.p194a.p1275v.p1276a.p1289i0.C20776f;
import p193e.p194a.p1275v.p1276a.p1291k0.C20789d;
import p193e.p194a.p1275v.p1276a.p1292l0.C20792a;
import p193e.p194a.p1275v.p1276a.p1293m0.C20798e;
import p193e.p194a.p1275v.p1276a.p1294n0.AbstractC20802a;
import p193e.p194a.p1275v.p1276a.p1294n0.AbstractC20805d;
import p193e.p194a.p1275v.p1276a.p1294n0.C20803b;
import p193e.p194a.p1275v.p1276a.p1294n0.C20804c;
import p193e.p194a.p1275v.p1276a.p1295o0.C20815h;
import p193e.p194a.p1275v.p1276a.p1296p0.C20821d;
import p193e.p194a.p1275v.p1276a.p1297q0.C20834d;
import p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h;
import p193e.p194a.p1275v.p1276a.p1299s0.AbstractC20848a;
import p193e.p194a.p1275v.p1276a.p1299s0.C20850c;
import p193e.p194a.p1275v.p1276a.p1300w.C20861d;
import p193e.p194a.p1275v.p1276a.p1302y.AbstractC20865a;
import p193e.p194a.p1275v.p1276a.p1302y.C20867c;
import p193e.p194a.p1275v.p1276a.p1302y.C20873g;
import p193e.p194a.p1275v.p1276a.p1302y.C20875i;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1304k.C20896c;
import p193e.p194a.p1275v.p1305l.AbstractC20914b;
import p193e.p194a.p1275v.p1308o.AbstractC20918a;
import p193e.p194a.p1275v.p1308o.AbstractC20919b;
import p193e.p194a.p1275v.p1309p.C20937k;
import p193e.p194a.p1334w.p1335a.C21167a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p393z.C8362a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p702e0.AbstractC13343b;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.i;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
import w3.c.a.a.a.h;
@Metadata(bv = {1, 0, 3}, d1 = {"��Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\r\u0018�� \u0086\u00012\u00020\u0001:\u0005hRB\u0087\u0001B\b¢\u0006\u0005\b\u0085\u0001\u0010\u0019J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J)\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010)\u001a\u00020\u00072\u0006\u0010'\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0007H\u0016¢\u0006\u0004\b+\u0010\u0019J\u000f\u0010,\u001a\u00020\u0007H\u0016¢\u0006\u0004\b,\u0010\u0019R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\"\u0010P\u001a\u00020I8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u001d\u0010^\u001a\u00020Y8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\"\u0010f\u001a\u00020_8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\"\u0010n\u001a\u00020g8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u0018\u0010r\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\"\u0010z\u001a\u00020s8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bt\u0010u\u001a\u0004\bv\u0010w\"\u0004\bx\u0010yR$\u0010|\u001a\u00020{8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0084\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001¨\u0006\u0088\u0001"}, d2 = {"Le/a/v/a/a;", "Landroidx/fragment/app/Fragment;", "Le/a/v/a/y/g;", "OA", "()Le/a/v/a/y/g;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "onResume", "onPause", "Ln3/k/i/e0;", "l", "Ln3/k/i/e0;", "windowInsetsControllerCompat", "Le/a/e0/b;", "h", "Le/a/e0/b;", "getAfterBlockPromo", "()Le/a/e0/b;", "setAfterBlockPromo", "(Le/a/e0/b;)V", "afterBlockPromo", "Le/a/v/a/e0/a;", C22021b.f61237c, "Le/a/v/a/e0/a;", "QA", "()Le/a/v/a/e0/a;", "setDetailsHeaderPresenter", "(Le/a/v/a/e0/a;)V", "detailsHeaderPresenter", "Le/a/v/o/b;", "e", "Le/a/v/o/b;", "getConversationsRouter", "()Le/a/v/o/b;", "setConversationsRouter", "(Le/a/v/o/b;)V", "conversationsRouter", "Le/a/v/a/n0/a;", "i", "Le/a/v/a/n0/a;", "getDetailsShowcaseController", "()Le/a/v/a/n0/a;", "setDetailsShowcaseController", "(Le/a/v/a/n0/a;)V", "detailsShowcaseController", "Le/a/v/o/a;", "d", "Le/a/v/o/a;", "getCallingRouter", "()Le/a/v/o/a;", "setCallingRouter", "(Le/a/v/o/a;)V", "callingRouter", "Le/a/v/k/c;", "j", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/v/k/c;", "binding", "Le/a/v/a/f;", "a", "Le/a/v/a/f;", "SA", "()Le/a/v/a/f;", "setDetailsPresenter", "(Le/a/v/a/f;)V", "detailsPresenter", "Le/a/p5/h0;", AbstractC2405c.f7629a, "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Le/a/v/a/a$f;", "k", "Le/a/v/a/a$f;", "onBlockStateChangeListener", "Le/a/y/c/b;", "g", "Le/a/y/c/b;", "TA", "()Le/a/y/c/b;", "setFlashManager", "(Le/a/y/c/b;)V", "flashManager", "", "detailsOptionsMenuHelper", "Ljava/lang/Object;", "RA", "()Ljava/lang/Object;", "setDetailsOptionsMenuHelper", "(Ljava/lang/Object;)V", "m", "I", "statusBarSize", "<init>", "o", "f", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v.a.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/a.class */
public final class C20647a extends Fragment {

    /* renamed from: n */
    public static final /* synthetic */ l[] f58172n = {C22128a.m8621g0(C20647a.class, "binding", "getBinding()Lcom/truecaller/details_view/databinding/FragmentDetailsViewBinding;", 0)};

    /* renamed from: o */
    public static final C20650c f58173o = new C20650c(null);
    @Inject

    /* renamed from: a */
    public AbstractC20751f f58174a;
    @Inject

    /* renamed from: b */
    public AbstractC20741a f58175b;
    @Inject

    /* renamed from: c */
    public AbstractC19233h0 f58176c;
    @Inject

    /* renamed from: d */
    public AbstractC20918a f58177d;
    @Inject

    /* renamed from: e */
    public AbstractC20919b f58178e;
    @Inject

    /* renamed from: f */
    public C20937k f58179f;
    @Inject

    /* renamed from: g */
    public AbstractC21631b f58180g;
    @Inject

    /* renamed from: h */
    public AbstractC13343b f58181h;
    @Inject

    /* renamed from: i */
    public AbstractC20802a f58182i;

    /* renamed from: j */
    public final ViewBindingProperty f58183j = new C19350a(new C20649b());

    /* renamed from: k */
    public AbstractC20663f f58184k;

    /* renamed from: l */
    public C26577e0 f58185l;

    /* renamed from: m */
    public int f58186m;

    /* renamed from: e.a.v.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/v/a/a$a.class */
    public static final class View$OnClickListenerC20648a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f58187a;

        /* renamed from: b */
        public final /* synthetic */ Object f58188b;

        public View$OnClickListenerC20648a(int i, Object obj) {
            this.f58187a = i;
            this.f58188b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f58187a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                C20826q c20826q = (C20826q) ((C20647a) this.f58188b).m10881SA();
                AbstractC20758g abstractC20758g = (AbstractC20758g) c20826q.f57683a;
                if (abstractC20758g == null) {
                    return;
                }
                C20847s c20847s = c20826q.f58506d;
                if (c20847s != null) {
                    abstractC20758g.mo10746d(c20847s.f58578a);
                    return;
                } else {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
            }
            C20743c c20743c = (C20743c) ((C20647a) this.f58188b).m10883QA();
            C20879a c20879a = c20743c.f58361o;
            n.B0(ViewActionEvent.f9985d.m35924n(c20879a.f58670a), c20879a.f58671b);
            AbstractC20742b abstractC20742b = (AbstractC20742b) c20743c.f57683a;
            if (abstractC20742b == null) {
                return;
            }
            C20847s c20847s2 = c20743c.f58350d;
            if (c20847s2 != null) {
                abstractC20742b.mo10776e1(c20847s2.f58578a);
            } else {
                s1.z.c.l.l("detailsViewModel");
                throw null;
            }
        }
    }

    /* renamed from: e.a.v.a.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$b.class */
    public static final class C20649b extends m implements s1.z.b.l<C20647a, C20896c> {
        public C20649b() {
            super(1);
        }

        /* renamed from: d */
        public Object m10879d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3857R.C3859id.actionButtonBar;
            ActionButtonBarView actionButtonBarView = (ActionButtonBarView) requireView.findViewById(i);
            if (actionButtonBarView != null) {
                i = C3857R.C3859id.altName;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C3857R.C3859id.appBar;
                    AppBarLayout findViewById = requireView.findViewById(i);
                    if (findViewById != null) {
                        i = C3857R.C3859id.avatar;
                        AvatarXView avatarXView = (AvatarXView) requireView.findViewById(i);
                        if (avatarXView != null) {
                            i = C3857R.C3859id.avatarMiddleGuideline;
                            View findViewById2 = requireView.findViewById(i);
                            if (findViewById2 != null) {
                                i = C3857R.C3859id.content;
                                NestedScrollView findViewById3 = requireView.findViewById(i);
                                if (findViewById3 != null) {
                                    i = C3857R.C3859id.contentContainer;
                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                                    if (linearLayout != null) {
                                        i = C3857R.C3859id.fab;
                                        FloatingActionButton findViewById4 = requireView.findViewById(i);
                                        if (findViewById4 != null) {
                                            i = C3857R.C3859id.headerBackground;
                                            View findViewById5 = requireView.findViewById(i);
                                            if (findViewById5 != null) {
                                                i = C3857R.C3859id.headerDivider;
                                                View findViewById6 = requireView.findViewById(i);
                                                if (findViewById6 != null) {
                                                    i = C3857R.C3859id.motionLayout;
                                                    MotionLayout findViewById7 = requireView.findViewById(i);
                                                    if (findViewById7 != null) {
                                                        i = C3857R.C3859id.nameBarrier;
                                                        Barrier barrier = (Barrier) requireView.findViewById(i);
                                                        if (barrier != null) {
                                                            i = C3857R.C3859id.nameOrNumber;
                                                            TextView textView2 = (TextView) requireView.findViewById(i);
                                                            if (textView2 != null) {
                                                                i = C3857R.C3859id.nameOrNumberShortened;
                                                                TextView textView3 = (TextView) requireView.findViewById(i);
                                                                if (textView3 != null) {
                                                                    i = C3857R.C3859id.presence;
                                                                    PresenceView presenceView = (PresenceView) requireView.findViewById(i);
                                                                    if (presenceView != null) {
                                                                        i = C3857R.C3859id.presenceTimezoneBarrier;
                                                                        Barrier barrier2 = (Barrier) requireView.findViewById(i);
                                                                        if (barrier2 != null) {
                                                                            i = C3857R.C3859id.presenceWithTimezone;
                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                                                                            if (constraintLayout != null) {
                                                                                i = C3857R.C3859id.privateUserInformation;
                                                                                TextView textView4 = (TextView) requireView.findViewById(i);
                                                                                if (textView4 != null) {
                                                                                    i = C3857R.C3859id.source;
                                                                                    TextView textView5 = (TextView) requireView.findViewById(i);
                                                                                    if (textView5 != null) {
                                                                                        i = C3857R.C3859id.sourceIcon;
                                                                                        ImageView imageView = (ImageView) requireView.findViewById(i);
                                                                                        if (imageView != null) {
                                                                                            i = C3857R.C3859id.spamCategoryAndCount;
                                                                                            TextView textView6 = (TextView) requireView.findViewById(i);
                                                                                            if (textView6 != null) {
                                                                                                i = C3857R.C3859id.spamCategoryIcon;
                                                                                                ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                                                                                if (imageView2 != null) {
                                                                                                    i = C3857R.C3859id.suggestName;
                                                                                                    ImageView imageView3 = (ImageView) requireView.findViewById(i);
                                                                                                    if (imageView3 != null) {
                                                                                                        i = C3857R.C3859id.swipe_refresh_layout;
                                                                                                        SwipeRefreshLayout findViewById8 = requireView.findViewById(i);
                                                                                                        if (findViewById8 != null) {
                                                                                                            i = C3857R.C3859id.tag;
                                                                                                            TagXView tagXView = (TagXView) requireView.findViewById(i);
                                                                                                            if (tagXView != null) {
                                                                                                                i = C3857R.C3859id.timezone;
                                                                                                                TimezoneView timezoneView = (TimezoneView) requireView.findViewById(i);
                                                                                                                if (timezoneView != null) {
                                                                                                                    i = C3857R.C3859id.toolbar;
                                                                                                                    Toolbar toolbar = (Toolbar) requireView.findViewById(i);
                                                                                                                    if (toolbar != null) {
                                                                                                                        i = C3857R.C3859id.trueContext;
                                                                                                                        TrueContext trueContext = (TrueContext) requireView.findViewById(i);
                                                                                                                        if (trueContext != null) {
                                                                                                                            i = C3857R.C3859id.verifiedIcon;
                                                                                                                            ImageView imageView4 = (ImageView) requireView.findViewById(i);
                                                                                                                            if (imageView4 != null) {
                                                                                                                                i = C3857R.C3859id.viewBackdrop;
                                                                                                                                ImageView imageView5 = (ImageView) requireView.findViewById(i);
                                                                                                                                if (imageView5 != null) {
                                                                                                                                    return new C20896c((ConstraintLayout) requireView, actionButtonBarView, textView, findViewById, avatarXView, findViewById2, findViewById3, linearLayout, findViewById4, findViewById5, findViewById6, findViewById7, barrier, textView2, textView3, presenceView, barrier2, constraintLayout, textView4, textView5, imageView, textView6, imageView2, imageView3, findViewById8, tagXView, timezoneView, toolbar, trueContext, imageView4, imageView5);
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
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.v.a.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$c.class */
    public static final class C20650c {
        public C20650c(f fVar) {
        }
    }

    /* renamed from: e.a.v.a.a$d */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$d.class */
    public final class C20651d implements AbstractC20742b {

        /* renamed from: a */
        public MotionLayout$h f58189a;

        /* renamed from: b */
        public MotionLayout$h f58190b;

        /* renamed from: e.a.v.a.a$d$a */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$d$a.class */
        public static final class C20652a extends C8362a {

            /* renamed from: b */
            public final /* synthetic */ int f58193b;

            /* renamed from: c */
            public final /* synthetic */ int f58194c;

            public C20652a(int i, int i2) {
                C20651d.this = r4;
                this.f58193b = i;
                this.f58194c = i2;
            }

            @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
            /* renamed from: a */
            public void mo2199a(MotionLayout motionLayout, int i, int i2, float f) {
                m10877e(Float.valueOf(f), null);
            }

            @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
            /* renamed from: b */
            public void mo2198b(MotionLayout motionLayout, int i) {
                m10877e(null, Integer.valueOf(i));
            }

            /* renamed from: e */
            public final void m10877e(Float f, Integer num) {
                int i;
                if (f == null || f.floatValue() <= 0.5f) {
                    int i2 = C3857R.C3859id.collapsed;
                    if (num == null || num.intValue() != i2) {
                        i = this.f58194c;
                        C20651d.this.mo10779K1(i);
                    }
                }
                i = this.f58193b;
                C20651d.this.mo10779K1(i);
            }
        }

        /* renamed from: e.a.v.a.a$d$b */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$d$b.class */
        public static final class C20653b extends C8362a {

            /* renamed from: b */
            public final /* synthetic */ StatusBarAppearance f58196b;

            public C20653b(StatusBarAppearance statusBarAppearance) {
                C20651d.this = r4;
                this.f58196b = statusBarAppearance;
            }

            @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
            /* renamed from: a */
            public void mo2199a(MotionLayout motionLayout, int i, int i2, float f) {
                m10876e(Float.valueOf(f), null);
            }

            @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
            /* renamed from: b */
            public void mo2198b(MotionLayout motionLayout, int i) {
                m10876e(null, Integer.valueOf(i));
            }

            /* renamed from: e */
            public final void m10876e(Float f, Integer num) {
                if (f == null || f.floatValue() <= 0.5f) {
                    int i = C3857R.C3859id.collapsed;
                    if (num == null || num.intValue() != i) {
                        C20651d.this.m10878a(this.f58196b.f11791a);
                        return;
                    }
                }
                C20651d.this.m10878a(this.f58196b.f11792b);
            }
        }

        /* renamed from: e.a.v.a.a$d$c */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$d$c.class */
        public static final class View$OnClickListenerC20654c implements View.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ AvatarXConfig f58198b;

            public View$OnClickListenerC20654c(AvatarXConfig avatarXConfig) {
                C20651d.this = r4;
                this.f58198b = avatarXConfig;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC20741a m10883QA = C20647a.this.m10883QA();
                AvatarXConfig avatarXConfig = this.f58198b;
                C20743c c20743c = (C20743c) m10883QA;
                Objects.requireNonNull(c20743c);
                s1.z.c.l.e(avatarXConfig, "avatarXConfig");
                C20879a c20879a = c20743c.f58361o;
                String str = c20879a.f58670a;
                s1.z.c.l.e(str, AnalyticsConstants.CONTEXT);
                s1.z.c.l.e("avatar", "action");
                n.B0(new ViewActionEvent("avatar", null, str), c20879a.f58671b);
                AbstractC20742b abstractC20742b = (AbstractC20742b) c20743c.f57683a;
                if (abstractC20742b != null) {
                    C20847s c20847s = c20743c.f58350d;
                    if (c20847s != null) {
                        abstractC20742b.mo10783G1(c20847s.f58578a, avatarXConfig);
                    } else {
                        s1.z.c.l.l("detailsViewModel");
                        throw null;
                    }
                }
            }
        }

        public C20651d() {
            C20647a.this = r4;
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: A1 */
        public void mo10790A1() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58752q;
            s1.z.c.l.d(textView, "binding.source");
            C19286f.m13689O(textView);
            ImageView imageView = C20647a.this.m10884PA().f58753r;
            s1.z.c.l.d(imageView, "binding.sourceIcon");
            C19286f.m13689O(imageView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: B1 */
        public void mo10789B1(C20747f c20747f) {
            s1.z.c.l.e(c20747f, AnalyticsConstants.NAME);
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            ImageView imageView = c20647a.m10884PA().f58756u;
            s1.z.c.l.d(imageView, "binding.suggestName");
            C19286f.m13683U(imageView, c20747f.f58375b);
            ImageView imageView2 = C20647a.this.m10884PA().f58734A;
            s1.z.c.l.d(imageView2, "binding.verifiedIcon");
            C19286f.m13683U(imageView2, c20747f.f58376c);
            TextView textView = C20647a.this.m10884PA().f58748m;
            s1.z.c.l.d(textView, "binding.nameOrNumber");
            textView.setText(c20747f.f58374a);
            TextView textView2 = C20647a.this.m10884PA().f58749n;
            s1.z.c.l.d(textView2, "binding.nameOrNumberShortened");
            textView2.setText(c20747f.f58374a);
            int m13603O = (c20747f.f58375b || c20747f.f58376c) ? 0 : C19291g.m13603O(16);
            C26389d k1 = C20647a.this.m10884PA().f58747l.k1(C3857R.C3859id.expanded);
            TextView textView3 = C20647a.this.m10884PA().f58748m;
            s1.z.c.l.d(textView3, "binding.nameOrNumber");
            k1.m1961j(textView3.getId()).f73891d.f73908N = m13603O;
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: C1 */
        public void mo10788C1(String str) {
            s1.z.c.l.e(str, AnalyticsConstants.TIMEZONE);
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TimezoneView timezoneView = c20647a.m10884PA().f58759x;
            C19286f.m13684T(timezoneView);
            timezoneView.setData(str);
            AbstractC19233h0 abstractC19233h0 = C20647a.this.f58176c;
            if (abstractC19233h0 != null) {
                timezoneView.m34612f1(abstractC19233h0.mo13758l(C3857R.attr.tcx_textSecondary), null);
            } else {
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: D1 */
        public void mo10787D1(C20847s c20847s) {
            s1.z.c.l.e(c20847s, "detailsViewModel");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            c20647a.m10884PA().f58750o.set(c20847s);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: E1 */
        public void mo10786E1() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58751p;
            s1.z.c.l.d(textView, "binding.privateUserInformation");
            C19286f.m13689O(textView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: F1 */
        public void mo10785F1(AbstractC20721d abstractC20721d, Drawable drawable, int i, int i2) {
            s1.z.c.l.e(abstractC20721d, "contactType");
            s1.z.c.l.e(drawable, "background");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            ImageView imageView = c20647a.m10884PA().f58735B;
            s1.z.c.l.d(imageView, "binding.viewBackdrop");
            imageView.setBackground(drawable);
            MotionLayout motionLayout = C20647a.this.m10884PA().f58747l;
            MotionLayout$h motionLayout$h = this.f58189a;
            ArrayList arrayList = motionLayout.r0;
            if (arrayList != null) {
                arrayList.remove(motionLayout$h);
            }
            this.f58189a = new C20652a(i2, i);
            MotionLayout motionLayout2 = C20647a.this.m10884PA().f58747l;
            MotionLayout$h motionLayout$h2 = this.f58189a;
            if (motionLayout2.r0 == null) {
                motionLayout2.r0 = new ArrayList();
            }
            motionLayout2.r0.add(motionLayout$h2);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: G */
        public void mo10784G() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58738c;
            s1.z.c.l.d(textView, "binding.altName");
            C19286f.m13689O(textView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: G1 */
        public void mo10783G1(Contact contact, AvatarXConfig avatarXConfig) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.z.c.l.e(avatarXConfig, "avatarXConfig");
            Uri uri = avatarXConfig.f11100a;
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20666b c20666b = new C20666b();
            Bundle bundle = new Bundle();
            bundle.putParcelable("KEY_CONTACT", contact);
            bundle.putParcelable("KEY_AVATAR_URI", uri);
            c20666b.setArguments(bundle);
            c20666b.show(C20647a.this.getChildFragmentManager(), C20666b.class.getSimpleName());
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: H1 */
        public void mo10782H1() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58754s;
            s1.z.c.l.d(textView, "binding.spamCategoryAndCount");
            C19286f.m13689O(textView);
            ImageView imageView = C20647a.this.m10884PA().f58755t;
            s1.z.c.l.d(imageView, "binding.spamCategoryIcon");
            C19286f.m13689O(imageView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: I1 */
        public void mo10781I1(StatusBarAppearance statusBarAppearance) {
            s1.z.c.l.e(statusBarAppearance, "statusBarAppearance");
            m10878a(statusBarAppearance.f11791a);
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            MotionLayout motionLayout = c20647a.m10884PA().f58747l;
            MotionLayout$h motionLayout$h = this.f58190b;
            ArrayList arrayList = motionLayout.r0;
            if (arrayList != null) {
                arrayList.remove(motionLayout$h);
            }
            this.f58190b = new C20653b(statusBarAppearance);
            MotionLayout motionLayout2 = C20647a.this.m10884PA().f58747l;
            MotionLayout$h motionLayout$h2 = this.f58190b;
            if (motionLayout2.r0 == null) {
                motionLayout2.r0 = new ArrayList();
            }
            motionLayout2.r0.add(motionLayout$h2);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: J1 */
        public void mo10780J1(C20750i c20750i) {
            s1.z.c.l.e(c20750i, RemoteMessageConst.Notification.TAG);
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TagXView tagXView = c20647a.m10884PA().f58758w;
            C19286f.m13684T(tagXView);
            tagXView.setTitle(c20750i.f58384a);
            tagXView.setIcon(c20750i.f58385b);
            AbstractC20845h abstractC20845h = c20750i.f58386c;
            s1.z.c.l.d(tagXView, "this");
            abstractC20845h.mo10628c(tagXView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: K1 */
        public void mo10779K1(int i) {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            Toolbar toolbar = c20647a.m10884PA().f58760y;
            s1.z.c.l.d(toolbar, "binding.toolbar");
            Drawable navigationIcon = toolbar.getNavigationIcon();
            if (navigationIcon != null) {
                Drawable mutate = navigationIcon.mutate();
                s1.z.c.l.d(mutate, "DrawableCompat.wrap(it).mutate()");
                mutate.setTint(i);
                Toolbar toolbar2 = C20647a.this.m10884PA().f58760y;
                s1.z.c.l.d(toolbar2, "binding.toolbar");
                toolbar2.setNavigationIcon(mutate);
            }
            Toolbar toolbar3 = C20647a.this.m10884PA().f58760y;
            s1.z.c.l.d(toolbar3, "binding.toolbar");
            Drawable overflowIcon = toolbar3.getOverflowIcon();
            if (overflowIcon != null) {
                Drawable mutate2 = overflowIcon.mutate();
                s1.z.c.l.d(mutate2, "DrawableCompat.wrap(it).mutate()");
                mutate2.setTint(i);
                Toolbar toolbar4 = C20647a.this.m10884PA().f58760y;
                s1.z.c.l.d(toolbar4, "binding.toolbar");
                toolbar4.setOverflowIcon(mutate2);
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: P */
        public void mo10778P(AbstractC18240c abstractC18240c) {
            s1.z.c.l.e(abstractC18240c, "presenter");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TrueContext trueContext = c20647a.m10884PA().f58761z;
            C19286f.m13684T(trueContext);
            trueContext.setPresenter(abstractC18240c);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: P0 */
        public void mo10777P0() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TagXView tagXView = c20647a.m10884PA().f58758w;
            s1.z.c.l.d(tagXView, "binding.tag");
            C19286f.m13689O(tagXView);
        }

        /* renamed from: a */
        public final void m10878a(StatusBarAppearance.Appearance appearance) {
            int ordinal = appearance.ordinal();
            if (ordinal == 0) {
                C26577e0 c26577e0 = C20647a.this.f58185l;
                if (c26577e0 != null) {
                    c26577e0.f74451a.mo1633a(false);
                } else {
                    s1.z.c.l.l("windowInsetsControllerCompat");
                    throw null;
                }
            } else if (ordinal != 1) {
            } else {
                C26577e0 c26577e02 = C20647a.this.f58185l;
                if (c26577e02 != null) {
                    c26577e02.f74451a.mo1633a(true);
                } else {
                    s1.z.c.l.l("windowInsetsControllerCompat");
                    throw null;
                }
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: e1 */
        public void mo10776e1(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20647a.this.requireActivity().startActivity(NameSuggestionActivity.m34625ra(C20647a.this.requireActivity(), contact, "details"));
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: n */
        public void mo10775n() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TrueContext trueContext = c20647a.m10884PA().f58761z;
            s1.z.c.l.d(trueContext, "binding.trueContext");
            C19286f.m13689O(trueContext);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: v1 */
        public void mo10774v1(AvatarXConfig avatarXConfig) {
            s1.z.c.l.e(avatarXConfig, "avatarXConfig");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            AvatarXView avatarXView = c20647a.m10884PA().f58740e;
            AbstractC19233h0 abstractC19233h0 = C20647a.this.f58176c;
            if (abstractC19233h0 == null) {
                s1.z.c.l.l("resourceProvider");
                throw null;
            }
            C8243a c8243a = new C8243a(abstractC19233h0);
            avatarXView.setPresenter(c8243a);
            C8243a.m28739ok(c8243a, avatarXConfig, false, 2, null);
            C20647a.this.m10884PA().f58740e.setOnClickListener(new View$OnClickListenerC20654c(avatarXConfig));
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: w1 */
        public void mo10773w1() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58751p;
            s1.z.c.l.d(textView, "binding.privateUserInformation");
            C19286f.m13684T(textView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: x1 */
        public void mo10772x1(C20749h c20749h) {
            s1.z.c.l.e(c20749h, "spamInfo");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58754s;
            C19286f.m13684T(textView);
            textView.setText(c20749h.f58381a);
            ImageView imageView = C20647a.this.m10884PA().f58755t;
            C19286f.m13683U(imageView, c20749h.f58383c);
            ComponentCallbacks2C22222c.m8445f(imageView).mo8407r(c20749h.f58382b).mo8095m().m8427O(imageView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: y1 */
        public void mo10771y1(String str) {
            s1.z.c.l.e(str, "altName");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58738c;
            C19286f.m13684T(textView);
            textView.setText(str);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: z */
        public void mo10770z() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TimezoneView timezoneView = c20647a.m10884PA().f58759x;
            s1.z.c.l.d(timezoneView, "binding.timezone");
            C19286f.m13689O(timezoneView);
        }

        @Override // p193e.p194a.p1275v.p1276a.p1285e0.AbstractC20742b
        /* renamed from: z1 */
        public void mo10769z1(C20748g c20748g) {
            s1.z.c.l.e(c20748g, "source");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            TextView textView = c20647a.m10884PA().f58752q;
            textView.setText(textView.getResources().getString(c20748g.f58377a));
            ColorStateList withAlpha = ColorStateList.valueOf(c20748g.f58378b).withAlpha(180);
            s1.z.c.l.d(withAlpha, "ColorStateList.valueOf(s…textColor).withAlpha(180)");
            textView.setTextColor(withAlpha);
            ImageView imageView = C20647a.this.m10884PA().f58753r;
            C19286f.m13683U(imageView, c20748g.f58379c != null);
            Drawable drawable = c20748g.f58379c;
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
            }
            Integer num = c20748g.f58380d;
            if (num != null) {
                imageView.setColorFilter(num.intValue());
            }
        }
    }

    /* renamed from: e.a.v.a.a$e */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e.class */
    public final class C20655e implements AbstractC20758g {

        /* renamed from: a */
        public final C20850c f58199a;

        /* renamed from: b */
        public final C20656a f58200b = new C20656a();

        /* renamed from: e.a.v.a.a$e$a */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$a.class */
        public static final class C20656a implements AbstractC20805d {
            @Override // p193e.p194a.p1275v.p1276a.p1294n0.AbstractC20805d
            /* renamed from: a */
            public void mo10680a(String str) {
                s1.z.c.l.e(str, RemoteMessageConst.Notification.TAG);
            }
        }

        /* renamed from: e.a.v.a.a$e$b */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$b.class */
        public static final class C20657b implements SwipeRefreshLayout$h {
            public C20657b() {
                C20655e.this = r4;
            }

            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h
            /* renamed from: a */
            public final void mo10874a() {
                C20826q c20826q = (C20826q) C20647a.this.m10881SA();
                C20847s c20847s = c20826q.f58506d;
                if (c20847s == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                boolean m28259b = c20826q.f58523u.m28259b(c20847s.f58578a.m35540X(), TimeUnit.HOURS.toMillis(1L));
                C20879a c20879a = c20826q.f58527y;
                n.B0(C22128a.m8584p1("DetailsViewPullToRefresh", "action", "DetailsViewPullToRefresh", m28259b ? "SearchHappened" : "SearchNotHappened", c20879a.f58670a), c20879a.f58671b);
                if (m28259b) {
                    d.w2(c20826q, c20826q.f58511i, (j0) null, new C20801n(c20826q, null), 2, (Object) null);
                } else {
                    AbstractC20758g abstractC20758g = (AbstractC20758g) c20826q.f57683a;
                    if (abstractC20758g != null) {
                        abstractC20758g.mo10753E();
                    }
                }
                C20873g m10885OA = C20647a.this.m10885OA();
                if (m10885OA == null) {
                    return;
                }
                AbstractC20865a abstractC20865a = m10885OA.f58655a;
                if (abstractC20865a != null) {
                    ((C20867c) abstractC20865a).m10612Ij(true);
                } else {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
            }
        }

        /* renamed from: e.a.v.a.a$e$c */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$c.class */
        public static final class C20658c implements SwipeRefreshLayout$g {
            public C20658c() {
                C20655e.this = r4;
            }

            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout$g
            /* renamed from: a */
            public final boolean mo10873a(SwipeRefreshLayout swipeRefreshLayout, View view) {
                boolean z;
                s1.z.c.l.e(swipeRefreshLayout, "<anonymous parameter 0>");
                C20647a c20647a = C20647a.this;
                l[] lVarArr = C20647a.f58172n;
                MotionLayout motionLayout = c20647a.m10884PA().f58747l;
                s1.z.c.l.d(motionLayout, "binding.motionLayout");
                boolean z2 = false;
                if (motionLayout.getCurrentState() != C3857R.C3859id.collapsed) {
                    MotionLayout motionLayout2 = C20647a.this.m10884PA().f58747l;
                    s1.z.c.l.d(motionLayout2, "binding.motionLayout");
                    if (motionLayout2.getProgress() <= 0.0f) {
                        z = false;
                        boolean canScrollVertically = C20647a.this.m10884PA().f58742g.canScrollVertically(-1);
                        if (!z || canScrollVertically) {
                            z2 = true;
                        }
                        return z2;
                    }
                }
                z = true;
                boolean canScrollVertically2 = C20647a.this.m10884PA().f58742g.canScrollVertically(-1);
                if (!z) {
                }
                z2 = true;
                return z2;
            }
        }

        /* renamed from: e.a.v.a.a$e$d */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$d.class */
        public static final class DialogInterface$OnClickListenerC20659d implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC20659d() {
                C20655e.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C20826q c20826q = (C20826q) C20647a.this.m10881SA();
                d.w2(c20826q, c20826q.f58511i, (j0) null, new C20785k(c20826q, null), 2, (Object) null);
            }
        }

        /* renamed from: e.a.v.a.a$e$e */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$e.class */
        public static final class DialogInterface$OnClickListenerC20660e implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC20660e() {
                C20655e.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C20826q c20826q = (C20826q) C20647a.this.m10881SA();
                d.w2(c20826q, c20826q.f58511i, (j0) null, new C20791l(c20826q, null), 2, (Object) null);
            }
        }

        /* renamed from: e.a.v.a.a$e$f */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$f.class */
        public static final class DialogInterface$OnClickListenerC20661f implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC20661f() {
                C20655e.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C20826q c20826q = (C20826q) C20647a.this.m10881SA();
                d.w2(c20826q, c20826q.f58511i, (j0) null, new C20836r(c20826q, "notspam", null), 2, (Object) null);
            }
        }

        /* renamed from: e.a.v.a.a$e$g */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$e$g.class */
        public static final class DialogInterface$OnClickListenerC20662g implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC20662g() {
                C20655e.this = r4;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C20826q c20826q = (C20826q) C20647a.this.m10881SA();
                d.w2(c20826q, c20826q.f58511i, (j0) null, new C20836r(c20826q, "unblock", null), 2, (Object) null);
            }
        }

        public C20655e() {
            C20647a.this = r6;
            l[] lVarArr = C20647a.f58172n;
            LinearLayout linearLayout = r6.m10884PA().f58743h;
            s1.z.c.l.d(linearLayout, "binding.contentContainer");
            this.f58199a = new C20850c(linearLayout);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: A */
        public void mo10757A(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20937k m10882RA = C20647a.this.m10882RA();
            Objects.requireNonNull(m10882RA);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20879a c20879a = m10882RA.f58885d;
            String str = c20879a.f58670a;
            ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.COPY_NUMBER;
            s1.z.c.l.e(str, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(contactDetailsAction, "action");
            String value = contactDetailsAction.getValue();
            s1.z.c.l.e(value, "action");
            n.B0(new ViewActionEvent(value, null, str), c20879a.f58671b);
            String m35496t = contact.m35496t();
            if (m35496t != null) {
                C12864a2.m22560d0(m10882RA.f58882a, m35496t, "LABEL_NUMBER");
                Toast.makeText(m10882RA.f58882a, C3857R.string.details_view_copied_to_clipboard, 0).show();
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: B */
        public void mo10756B(String str) {
            s1.z.c.l.e(str, "contactId");
            C20937k m10882RA = C20647a.this.m10882RA();
            C20647a c20647a = C20647a.this;
            Objects.requireNonNull(m10882RA);
            s1.z.c.l.e(str, "contactId");
            s1.z.c.l.e(c20647a, "frag");
            C20879a c20879a = m10882RA.f58885d;
            n.B0(ViewActionEvent.f9985d.m35933e(c20879a.f58670a, ViewActionEvent.ContactAction.EDIT), c20879a.f58671b);
            Intent intent = new Intent("android.intent.action.EDIT", Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, str));
            intent.putExtra("finishActivityOnSaveCompleted", true);
            C8613t.m28200l(c20647a, intent, 21);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: C */
        public void mo10755C() {
            C20647a c20647a = C20647a.this;
            AbstractC20802a abstractC20802a = c20647a.f58182i;
            if (abstractC20802a == null) {
                s1.z.c.l.l("detailsShowcaseController");
                throw null;
            }
            C20896c m10884PA = c20647a.m10884PA();
            s1.z.c.l.d(m10884PA, "binding");
            ConstraintLayout constraintLayout = m10884PA.f58736a;
            s1.z.c.l.d(constraintLayout, "binding.root");
            Activity requireActivity = C20647a.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            C20656a c20656a = this.f58200b;
            C20804c c20804c = (C20804c) abstractC20802a;
            s1.z.c.l.e(constraintLayout, ViewAction.VIEW);
            s1.z.c.l.e(requireActivity, "activity");
            s1.z.c.l.e(c20656a, "detailsShowcaseDismissedCallback");
            ArrayList arrayList = new ArrayList();
            View findViewWithTag = constraintLayout.findViewWithTag(11);
            if (findViewWithTag != null) {
                c20804c.f58458a.mo13456d(c20804c.m10681a(DetailsShowcases.VOIP, findViewWithTag, requireActivity));
                arrayList.add(c20804c.f58458a);
            }
            View findViewWithTag2 = constraintLayout.findViewWithTag(13);
            if (findViewWithTag2 != null) {
                c20804c.f58459b.mo13456d(c20804c.m10681a(DetailsShowcases.CONTEXT_CALL, findViewWithTag2, requireActivity));
                arrayList.add(c20804c.f58459b);
            }
            c20804c.f58460c.mo13453c(arrayList, requireActivity, new C20803b(c20656a));
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: D */
        public void mo10754D(SpamCategoryRequest spamCategoryRequest) {
            s1.z.c.l.e(spamCategoryRequest, "spamCategoryRequest");
            C20647a c20647a = C20647a.this;
            Context requireContext = c20647a.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            c20647a.startActivityForResult(SpamCategoriesActivity.C4511a.m34732a(requireContext, spamCategoryRequest), 1);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: E */
        public void mo10753E() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            SwipeRefreshLayout swipeRefreshLayout = c20647a.m10884PA().f58757v;
            s1.z.c.l.d(swipeRefreshLayout, "binding.swipeRefreshLayout");
            swipeRefreshLayout.setRefreshing(false);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: F */
        public void mo10752F(int i) {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            FloatingActionButton floatingActionButton = c20647a.m10884PA().f58744i;
            floatingActionButton.p();
            floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(i));
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: F2 */
        public void mo10751F2(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20647a c20647a = C20647a.this;
            AbstractC20918a abstractC20918a = c20647a.f58177d;
            if (abstractC20918a == null) {
                s1.z.c.l.l("callingRouter");
                throw null;
            }
            n3.r.a.l requireActivity = c20647a.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            abstractC20918a.mo10523c(requireActivity, contact);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: G */
        public void mo10750G(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            AbstractC20663f abstractC20663f = C20647a.this.f58184k;
            if (abstractC20663f != null) {
                abstractC20663f.mo10872Y(contact);
            }
        }

        /* renamed from: H */
        public final void m10875H(boolean z) {
            int m13603O = C19291g.m13603O(z ? 128 : 64);
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            C26389d k1 = c20647a.m10884PA().f58747l.k1(C3857R.C3859id.collapsed);
            NestedScrollView nestedScrollView = C20647a.this.m10884PA().f58742g;
            s1.z.c.l.d(nestedScrollView, "binding.content");
            k1.m1958m(nestedScrollView.getId(), 3, m13603O + C20647a.this.f58186m);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: a */
        public void mo10749a(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20647a c20647a = C20647a.this;
            AbstractC20918a abstractC20918a = c20647a.f58177d;
            if (abstractC20918a == null) {
                s1.z.c.l.l("callingRouter");
                throw null;
            }
            n3.r.a.l requireActivity = c20647a.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            abstractC20918a.mo10524b(requireActivity, contact);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v35, types: [android.view.ViewGroup] */
        /* JADX WARN: Type inference failed for: r0v38, types: [android.widget.LinearLayout] */
        /* JADX WARN: Type inference failed for: r1v9, types: [android.view.View] */
        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: b */
        public void mo10748b(List<? extends WidgetType> list, C20847s c20847s) {
            C20873g c20873g;
            LinearLayout.LayoutParams layoutParams;
            s1.z.c.l.e(list, "widgets");
            s1.z.c.l.e(c20847s, "detailsViewModel");
            C20850c c20850c = this.f58199a;
            Objects.requireNonNull(c20850c);
            s1.z.c.l.e(list, "widgets");
            s1.z.c.l.e(c20847s, "detailsViewModel");
            if (s1.z.c.l.a(c20850c.f58589a, list)) {
                for (AbstractC20848a abstractC20848a : c20850c.f58590b) {
                    abstractC20848a.mo10605K0(c20847s);
                }
                return;
            }
            c20850c.f58591c.removeAllViews();
            c20850c.f58589a.clear();
            c20850c.f58589a.addAll(list);
            c20850c.f58590b.clear();
            for (WidgetType widgetType : list) {
                List<AbstractC20848a> list2 = c20850c.f58590b;
                Context context = c20850c.f58591c.getContext();
                switch (widgetType.ordinal()) {
                    case 0:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20861d(context, null, 0, 0, 14);
                        break;
                    case 1:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20768d(context, null, 0, 0, 14);
                        break;
                    case 2:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20684d(context, null, 0, 0, 14);
                        break;
                    case 3:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20717n(context, null, 0, 0, 14);
                        break;
                    case 4:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20687a(context, null, 0, 0, 14);
                        break;
                    case 5:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20736d(context, null, 0, 0, 14);
                        break;
                    case 6:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20776f(context, null, 0, 0, 14);
                        break;
                    case 7:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20792a(context, null, 0, 0, 14);
                        break;
                    case 8:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20789d(context, null, 0, 0, 14);
                        break;
                    case 9:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20798e(context, null, 0, 0, 14);
                        break;
                    case 10:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20834d(context, null, 0, 0, 14);
                        break;
                    case 11:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20821d(context, null, 0, 0, 14);
                        break;
                    case 12:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20815h(context, null, 0, 0, 14);
                        break;
                    case 13:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20762d(context, null, 0, 6);
                        break;
                    case 14:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20756d(context, null, 0, 6);
                        break;
                    case 15:
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        c20873g = new C20873g(context, null, 0, 0, 14);
                        break;
                    default:
                        throw new i();
                }
                c20873g.setVisibility(8);
                if (widgetType == WidgetType.LEARN_MORE) {
                    layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = C19291g.m13603O(2);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.topMargin = C19291g.m13603O(16);
                }
                c20850c.f58591c.addView(c20873g, layoutParams);
                c20873g.mo10605K0(c20847s);
                list2.add(c20873g);
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: c */
        public void mo10747c() {
            g$a g_a = new g$a(C20647a.this.requireContext());
            g_a.m3664e(C3857R.string.details_view_not_spam_confirmation_message);
            g_a.m3660i(C3857R.string.details_view_action_button_not_spam, new DialogInterface$OnClickListenerC20661f());
            g_a.m3662g(C3857R.string.str_cancel, null);
            g_a.m3652q();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: d */
        public void mo10746d(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20937k m10882RA = C20647a.this.m10882RA();
            Fragment fragment = C20647a.this;
            Objects.requireNonNull(m10882RA);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.z.c.l.e(fragment, "frag");
            C20879a c20879a = m10882RA.f58885d;
            n.B0(ViewActionEvent.f9985d.m35933e(c20879a.f58670a, ViewActionEvent.ContactAction.SAVE), c20879a.f58671b);
            Fragment mo10490a = m10882RA.f58883b.mo10490a(contact, fragment);
            n3.r.a.l requireActivity = fragment.requireActivity();
            s1.z.c.l.d(requireActivity, "frag.requireActivity()");
            C26907a c26907a = new C26907a(requireActivity.getSupportFragmentManager());
            c26907a.mo1122k(0, mo10490a, "contact_save", 1);
            c26907a.mo1126g();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: e */
        public void mo10745e() {
            g$a g_a = new g$a(C20647a.this.requireContext());
            g_a.m3656m(C3857R.string.details_view_delete_contact_confirmation_title);
            g_a.m3664e(C3857R.string.details_view_delete_contact_confirmation_message);
            g_a.m3660i(C3857R.string.details_view_menu_remove_contact, new DialogInterface$OnClickListenerC20659d());
            g_a.m3662g(C3857R.string.str_cancel, null);
            g_a.m3652q();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: f */
        public void mo10744f() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            ActionButtonBarView actionButtonBarView = c20647a.m10884PA().f58737b;
            Objects.requireNonNull(actionButtonBarView);
            C19286f.m13689O(actionButtonBarView);
            m10875H(false);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        public void finish() {
            C20647a.this.requireActivity().finish();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: g */
        public void mo10743g(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20937k m10882RA = C20647a.this.m10882RA();
            Objects.requireNonNull(m10882RA);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20879a c20879a = m10882RA.f58885d;
            String str = c20879a.f58670a;
            ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.COPY_NAME;
            s1.z.c.l.e(str, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(contactDetailsAction, "action");
            String value = contactDetailsAction.getValue();
            s1.z.c.l.e(value, "action");
            n.B0(new ViewActionEvent(value, null, str), c20879a.f58671b);
            String m35491w = contact.m35491w();
            if (m35491w != null) {
                s1.z.c.l.d(m35491w, "it");
                C12864a2.m22560d0(m10882RA.f58882a, m35491w, null);
                Toast.makeText(m10882RA.f58882a, C3857R.string.details_view_copied_to_clipboard, 0).show();
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: h */
        public void mo10742h(int i) {
            Toast.makeText(C20647a.this.requireContext(), i, 0).show();
        }

        /* JADX WARN: Removed duplicated region for block: B:143:0x03cc  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x03f7  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x0408  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x0419  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x0436  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x0468  */
        /* JADX WARN: Removed duplicated region for block: B:163:0x04cf  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x04e8  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0137  */
        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: i */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo10741i(p193e.p194a.p1275v.p1276a.C20847s r20) {
            /*
                Method dump skipped, instructions count: 1275
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.C20647a.C20655e.mo10741i(e.a.v.a.s):void");
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: j */
        public void mo10740j(long j, boolean z, int i, ProfileViewSource profileViewSource) {
            s1.z.c.l.e(profileViewSource, "source");
            Context requireContext = C20647a.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            GenerateProfileViewService.C4853a.m34281a(requireContext, j, z, i, profileViewSource);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0048, code lost:
            if (r8 != null) goto L10;
         */
        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo10739k(com.truecaller.data.entity.Contact r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r1 = "contact"
                s1.z.c.l.e(r0, r1)
                r0 = r4
                e.a.v.a.a r0 = p193e.p194a.p1275v.p1276a.C20647a.this
                e.a.v.p.k r0 = r0.m10882RA()
                r6 = r0
                r0 = r6
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r5
                java.lang.String r1 = "contact"
                s1.z.c.l.e(r0, r1)
                r0 = r6
                e.a.v.a.z.a r0 = r0.f58885d
                r7 = r0
                com.truecaller.analytics.common.event.ViewActionEvent$a r0 = com.truecaller.analytics.common.event.ViewActionEvent.f9985d
                r1 = r7
                java.lang.String r1 = r1.f58670a
                com.truecaller.analytics.common.event.ViewActionEvent$ContactAction r2 = com.truecaller.analytics.common.event.ViewActionEvent.ContactAction.SEARCH_WEB
                com.truecaller.analytics.common.event.ViewActionEvent r0 = r0.m35933e(r1, r2)
                r1 = r7
                e.a.q2.a r1 = r1.f58671b
                e.m.d.y.n.B0(r0, r1)
                r0 = r5
                com.truecaller.data.entity.Address r0 = r0.m35500r()
                r8 = r0
                r0 = 0
                r7 = r0
                r0 = r8
                if (r0 == 0) goto L4e
                r0 = r8
                java.lang.String r0 = r0.getCountryCode()
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L4e
                goto L66
            L4e:
                r0 = r5
                com.truecaller.data.entity.Number r0 = r0.m35493v()
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L63
                r0 = r8
                java.lang.String r0 = r0.getCountryCode()
                r8 = r0
                goto L66
            L63:
                r0 = 0
                r8 = r0
            L66:
                r0 = r5
                java.lang.String r0 = r0.m35491w()
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L77
                r0 = r9
                r7 = r0
                goto L88
            L77:
                r0 = r5
                com.truecaller.data.entity.Number r0 = r0.m35493v()
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L88
                r0 = r9
                java.lang.String r0 = r0.m35477g()
                r7 = r0
            L88:
                r0 = r7
                if (r0 == 0) goto L8f
                goto L94
            L8f:
                r0 = r5
                java.lang.String r0 = r0.m35498s()
                r7 = r0
            L94:
                r0 = r7
                boolean r0 = w3.c.a.a.a.h.j(r0)
                if (r0 != 0) goto Lcc
                java.lang.String r0 = "https://www.google.com/search?q="
                java.lang.StringBuilder r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8728C(r0)
                r5 = r0
                r0 = r5
                r1 = r7
                java.lang.String r2 = "UTF-8"
                java.lang.String r1 = java.net.URLEncoder.encode(r1, r2)
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                java.lang.String r0 = r0.toString()
                r7 = r0
                r0 = r7
                r5 = r0
                r0 = r8
                if (r0 == 0) goto Lc4
                r0 = r7
                java.lang.String r1 = "&cr=country"
                r2 = r8
                java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8725C2(r0, r1, r2)
                r5 = r0
            Lc4:
                r0 = r5
                r1 = r6
                android.content.Context r1 = r1.f58882a
                p193e.p194a.p1129p5.p1132s0.C19291g.m13596Q0(r0, r1)
            Lcc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.C20647a.C20655e.mo10739k(com.truecaller.data.entity.Contact):void");
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: l */
        public void mo10738l(String str) {
            s1.z.c.l.e(str, "message");
            Toast.makeText(C20647a.this.requireContext(), str, 0).show();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: m */
        public void mo10737m(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20937k m10882RA = C20647a.this.m10882RA();
            Objects.requireNonNull(m10882RA);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20879a c20879a = m10882RA.f58885d;
            String str = c20879a.f58670a;
            ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.COPY;
            s1.z.c.l.e(str, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(contactDetailsAction, "action");
            String value = contactDetailsAction.getValue();
            s1.z.c.l.e(value, "action");
            n.B0(new ViewActionEvent(value, null, str), c20879a.f58671b);
            String m35566G = contact.m35566G();
            String m35571C = contact.m35571C();
            s1.z.c.l.d(m35571C, "jobDetails");
            String m35496t = contact.m35496t();
            String m35513i = contact.m35513i();
            String m35515h = contact.m35515h();
            String m13813D = C19231g0.m13813D(", ", m35566G, m35571C, m35496t, m35513i, h.j(m35515h) ? null : C22128a.m8725C2("\"", m35515h, "\""));
            s1.z.c.l.d(m13813D, "StringUtils.combineDefau…, number, address, about)");
            C12864a2.m22560d0(m10882RA.f58882a, m13813D, null);
            Toast.makeText(m10882RA.f58882a, C3857R.string.details_view_copied_to_clipboard, 0).show();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: n */
        public void mo10736n(String str, String str2, boolean z) {
            s1.z.c.l.e(str, "spammerName");
            n3.b.a.h activity = C20647a.this.getActivity();
            n3.r.a.l lVar = activity;
            if (!(activity instanceof n3.b.a.h)) {
                lVar = null;
            }
            n3.b.a.h hVar = lVar;
            if (hVar != null) {
                AbstractC13343b abstractC13343b = C20647a.this.f58181h;
                if (abstractC13343b != null) {
                    abstractC13343b.m21897a(hVar, "DetailsViewV2", str, str2, z, 3);
                } else {
                    s1.z.c.l.l("afterBlockPromo");
                    throw null;
                }
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: o */
        public void mo10735o() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            c20647a.m10884PA().f58744i.i();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: p */
        public void mo10734p() {
            g$a g_a = new g$a(C20647a.this.requireContext());
            g_a.m3656m(C3857R.string.details_view_delete_identified_contact_confirmation_title);
            g_a.m3664e(C3857R.string.details_view_delete_identified_contact_confirmation_message);
            g_a.m3660i(C3857R.string.details_view_menu_remove_identified_contact, new DialogInterface$OnClickListenerC20660e());
            g_a.m3662g(C3857R.string.str_cancel, null);
            g_a.m3652q();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: q */
        public void mo10733q(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20647a c20647a = C20647a.this;
            AbstractC20919b abstractC20919b = c20647a.f58178e;
            if (abstractC20919b == null) {
                s1.z.c.l.l("conversationsRouter");
                throw null;
            }
            n3.r.a.l requireActivity = c20647a.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            abstractC20919b.mo10521b(requireActivity, contact);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: r */
        public void mo10732r(List<FlashContact> list) {
            s1.z.c.l.e(list, "flashContacts");
            AbstractC21631b m10880TA = C20647a.this.m10880TA();
            Context requireContext = C20647a.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            m10880TA.mo9320J(requireContext, new ArrayList<>(list), "detailView");
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: s */
        public void mo10731s(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C21167a.f59336h.m10178a(contact, ReferralAnalytics$Source.DETAILS_VIEW).show(C20647a.this.getChildFragmentManager(), C21167a.class.getSimpleName());
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: t */
        public void mo10730t() {
            g$a g_a = new g$a(C20647a.this.requireContext());
            g_a.m3664e(C3857R.string.details_view_unblock_confirmation_message);
            g_a.m3660i(C3857R.string.details_view_action_button_unblock, new DialogInterface$OnClickListenerC20662g());
            g_a.m3662g(C3857R.string.str_cancel, null);
            g_a.m3652q();
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: u */
        public void mo10729u() {
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            SwipeRefreshLayout swipeRefreshLayout = c20647a.m10884PA().f58757v;
            swipeRefreshLayout.setColorSchemeColors(new int[]{C19291g.m13612L(C20647a.this.requireContext(), C3857R.attr.tcx_brandBackgroundBlue)});
            swipeRefreshLayout.setProgressBackgroundColorSchemeColor(C19291g.m13612L(C20647a.this.requireContext(), C3857R.attr.tcx_backgroundTertiary));
            swipeRefreshLayout.setOnRefreshListener(new C20657b());
            C20647a.this.m10884PA().f58757v.setOnChildScrollUpCallback(new C20658c());
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: v */
        public void mo10728v(Contact contact) {
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            C20937k m10882RA = C20647a.this.m10882RA();
            n3.r.a.l requireActivity = C20647a.this.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            Objects.requireNonNull(m10882RA);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            s1.z.c.l.e(requireActivity, "activity");
            C20879a c20879a = m10882RA.f58885d;
            String str = c20879a.f58670a;
            ViewActionEvent.ContactDetailsAction contactDetailsAction = ViewActionEvent.ContactDetailsAction.SHARE;
            s1.z.c.l.e(str, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(contactDetailsAction, "action");
            String value = contactDetailsAction.getValue();
            s1.z.c.l.e(value, "action");
            n.B0(new ViewActionEvent(value, null, str), c20879a.f58671b);
            AssertionUtil.isTrue(!contact.m35488x0(), new String[0]);
            StringBuilder sb = new StringBuilder();
            if (h.m(contact.m35491w())) {
                sb.append(contact.m35491w());
                sb.append("\r\n");
            }
            sb.append(contact.m35498s());
            sb.append("\r\n");
            if (h.m(contact.m35513i())) {
                sb.append(contact.m35513i());
                sb.append("\r\n");
            }
            sb.append(m10882RA.f58884c.mo28262a(contact.m35498s()));
            sb.append("\r\n\r\n");
            sb.append(m10882RA.f58882a.getString(C3857R.string.details_view_share_contact_signature));
            String sb2 = sb.toString();
            s1.z.c.l.d(sb2, "builder.append(tcSearchU…)\n            .toString()");
            C8582g0.m28323R(requireActivity, m10882RA.f58882a.getString(C3857R.string.details_view_share_contact_title), m10882RA.f58882a.getString(C3857R.string.details_view_share_contact_text), sb2, null);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: w */
        public void mo10727w(String str, String str2) {
            s1.z.c.l.e(str, AnalyticsConstants.PHONE);
            s1.z.c.l.e(str2, AnalyticsConstants.NAME);
            Bundle bundle = new Bundle();
            bundle.putString("flashContext", "detailView");
            C21632c.m9330b().mo9308j("FlashTapped", bundle);
            AbstractC21631b m10880TA = C20647a.this.m10880TA();
            Context requireContext = C20647a.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            m10880TA.mo9319K(requireContext, Long.parseLong(str), str2, "detailView");
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: x */
        public void mo10726x() {
            n3.r.a.l activity = C20647a.this.getActivity();
            if (activity != null) {
                activity.invalidateOptionsMenu();
            }
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: y */
        public void mo10725y(long j, String str, long j2) {
            s1.z.c.l.e(str, AnalyticsConstants.NAME);
            AbstractC21631b m10880TA = C20647a.this.m10880TA();
            Context requireContext = C20647a.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            m10880TA.mo9306l(requireContext, j, str, "detailView", j2);
        }

        @Override // p193e.p194a.p1275v.p1276a.AbstractC20758g
        /* renamed from: z */
        public void mo10724z(List<ActionButton> list) {
            s1.z.c.l.e(list, "actionButtons");
            C20647a c20647a = C20647a.this;
            l[] lVarArr = C20647a.f58172n;
            ActionButtonBarView actionButtonBarView = c20647a.m10884PA().f58737b;
            Objects.requireNonNull(actionButtonBarView);
            s1.z.c.l.e(list, "actionButtons");
            C19286f.m13684T(actionButtonBarView);
            actionButtonBarView.removeAllViews();
            int size = list.size();
            if (size == 2 || size == 3) {
                actionButtonBarView.m35436b();
                for (ActionButton actionButton : list) {
                    actionButtonBarView.m35437a(actionButton);
                }
                actionButtonBarView.m35436b();
            } else {
                for (ActionButton actionButton2 : list) {
                    actionButtonBarView.m35437a(actionButton2);
                }
            }
            m10875H(true);
        }
    }

    /* renamed from: e.a.v.a.a$f */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$f.class */
    public interface AbstractC20663f {
        /* renamed from: Y */
        void mo10872Y(Contact contact);

        /* renamed from: a8 */
        void mo10871a8();
    }

    /* renamed from: e.a.v.a.a$g */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/a$g.class */
    public static final class C20664g extends AbstractC25369b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20664g(boolean z) {
            super(z);
            C20647a.this = r4;
        }

        @Override // p1727n3.p1728a.AbstractC25369b
        public void handleOnBackPressed() {
            AbstractC20758g abstractC20758g = (AbstractC20758g) ((C20826q) C20647a.this.m10881SA()).f57683a;
            if (abstractC20758g != null) {
                abstractC20758g.finish();
            }
        }
    }

    /* renamed from: OA */
    public final C20873g m10885OA() {
        return (C20873g) m10884PA().f58743h.findViewWithTag("AD");
    }

    /* renamed from: PA */
    public final C20896c m10884PA() {
        return (C20896c) this.f58183j.m34468b(this, f58172n[0]);
    }

    /* renamed from: QA */
    public final AbstractC20741a m10883QA() {
        AbstractC20741a abstractC20741a = this.f58175b;
        if (abstractC20741a != null) {
            return abstractC20741a;
        }
        s1.z.c.l.l("detailsHeaderPresenter");
        throw null;
    }

    /* renamed from: RA */
    public final C20937k m10882RA() {
        C20937k c20937k = this.f58179f;
        if (c20937k != null) {
            return c20937k;
        }
        s1.z.c.l.l("detailsOptionsMenuHelper");
        throw null;
    }

    /* renamed from: SA */
    public final AbstractC20751f m10881SA() {
        AbstractC20751f abstractC20751f = this.f58174a;
        if (abstractC20751f != null) {
            return abstractC20751f;
        }
        s1.z.c.l.l("detailsPresenter");
        throw null;
    }

    /* renamed from: TA */
    public final AbstractC21631b m10880TA() {
        AbstractC21631b abstractC21631b = this.f58180g;
        if (abstractC21631b != null) {
            return abstractC21631b;
        }
        s1.z.c.l.l("flashManager");
        throw null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        AbstractC20663f abstractC20663f;
        Contact contact;
        C20647a.super.onActivityResult(i, i2, intent);
        int i3 = 1;
        if (i == 1 && i2 == -1) {
            SpamCategoryResult spamCategoryResult = intent != null ? (SpamCategoryResult) intent.getParcelableExtra("result") : null;
            if (spamCategoryResult != null) {
                AbstractC20751f abstractC20751f = this.f58174a;
                if (abstractC20751f == null) {
                    s1.z.c.l.l("detailsPresenter");
                    throw null;
                }
                C20826q c20826q = (C20826q) abstractC20751f;
                Objects.requireNonNull(c20826q);
                s1.z.c.l.e(spamCategoryResult, "spamCategoryResult");
                C20847s c20847s = c20826q.f58506d;
                if (c20847s == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                Contact contact2 = c20847s.f58578a;
                if (spamCategoryResult.f14928f) {
                    if (spamCategoryResult.f14925c) {
                        i3 = 2;
                    }
                    c20826q.f58516n.mo11854a().mo20028a(contact2, spamCategoryResult.f14924b, i3).mo11828g();
                }
                d.w2(c20826q, c20826q.f58511i, (j0) null, new C20769i(c20826q, spamCategoryResult, null), 2, (Object) null);
            }
        }
        if (i == 2 && i2 == -1 && intent != null && (contact = (Contact) intent.getParcelableExtra(AnalyticsConstants.CONTACT)) != null) {
            AbstractC20751f abstractC20751f2 = this.f58174a;
            if (abstractC20751f2 == null) {
                s1.z.c.l.l("detailsPresenter");
                throw null;
            }
            s1.z.c.l.d(contact, "it");
            C20826q c20826q2 = (C20826q) abstractC20751f2;
            Objects.requireNonNull(c20826q2);
            s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
            d.w2(c20826q2, (s1.w.f) null, (j0) null, new C20817p(c20826q2, contact, null), 3, (Object) null);
        }
        if (i == 21 && i2 == -1 && (abstractC20663f = this.f58184k) != null) {
            abstractC20663f.mo10871a8();
        }
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C20647a.super.onAttach(context);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider");
        ((AbstractC20914b) applicationContext).mo10529v().mo10539k(this);
        try {
            this.f58184k = (AbstractC20663f) context;
        } catch (ClassCastException e) {
            throw new ClassCastException(d0.a(requireActivity().getClass()).a() + " must implement OnBlockStateChangeListener");
        }
    }

    public void onCreate(Bundle bundle) {
        C26577e0 c26577e0;
        C20647a.super.onCreate(bundle);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Window window = requireActivity.getWindow();
        n3.r.a.l requireActivity2 = requireActivity();
        s1.z.c.l.d(requireActivity2, "requireActivity()");
        Window window2 = requireActivity2.getWindow();
        s1.z.c.l.d(window2, "requireActivity().window");
        View decorView = window2.getDecorView();
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController insetsController = window.getInsetsController();
            c26577e0 = insetsController != null ? new C26577e0(insetsController) : null;
        } else {
            c26577e0 = new C26577e0(window, decorView);
        }
        if (c26577e0 != null) {
            this.f58185l = c26577e0;
            n3.r.a.l requireActivity3 = requireActivity();
            s1.z.c.l.d(requireActivity3, "requireActivity()");
            Window window3 = requireActivity3.getWindow();
            s1.z.c.l.d(window3, "requireActivity().window");
            View decorView2 = window3.getDecorView();
            s1.z.c.l.d(decorView2, "requireActivity().window.decorView");
            decorView2.setSystemUiVisibility(1280);
            n3.r.a.l requireActivity4 = requireActivity();
            s1.z.c.l.d(requireActivity4, "requireActivity()");
            Window window4 = requireActivity4.getWindow();
            s1.z.c.l.d(window4, "requireActivity().window");
            Context requireContext = requireContext();
            Object obj = C26467a.f74235a;
            window4.setStatusBarColor(C26467a.C26471d.m1787a(requireContext, 17170445));
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x01bb, code lost:
        if (r0.m35508l0() != false) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreateOptionsMenu(android.view.Menu r8, android.view.MenuInflater r9) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.C20647a.onCreateOptionsMenu(android.view.Menu, android.view.MenuInflater):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C3857R.layout.fragment_details_view, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…s_view, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC20751f abstractC20751f = this.f58174a;
        if (abstractC20751f == null) {
            s1.z.c.l.l("detailsPresenter");
            throw null;
        }
        ((C20826q) abstractC20751f).mo9806c();
        AbstractC20741a abstractC20741a = this.f58175b;
        if (abstractC20741a == null) {
            s1.z.c.l.l("detailsHeaderPresenter");
            throw null;
        }
        ((AbstractC20574a) abstractC20741a).mo9806c();
        C20647a.super.onDestroyView();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        s1.z.c.l.e(menuItem, "item");
        AbstractC20751f abstractC20751f = this.f58174a;
        if (abstractC20751f == null) {
            s1.z.c.l.l("detailsPresenter");
            throw null;
        }
        int itemId = menuItem.getItemId();
        C20826q c20826q = (C20826q) abstractC20751f;
        Objects.requireNonNull(c20826q);
        ViewActionEvent.C2856a c2856a = ViewActionEvent.f9985d;
        if (itemId == 16908332) {
            AbstractC20758g abstractC20758g = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g != null) {
                abstractC20758g.finish();
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_share) {
            AbstractC20758g abstractC20758g2 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g2 != null) {
                C20847s c20847s = c20826q.f58506d;
                if (c20847s == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g2.mo10728v(c20847s.f58578a);
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_copy_number) {
            AbstractC20758g abstractC20758g3 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g3 != null) {
                C20847s c20847s2 = c20826q.f58506d;
                if (c20847s2 == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g3.mo10757A(c20847s2.f58578a);
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_copy_contact) {
            AbstractC20758g abstractC20758g4 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g4 != null) {
                C20847s c20847s3 = c20826q.f58506d;
                if (c20847s3 == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g4.mo10737m(c20847s3.f58578a);
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_copy_name) {
            AbstractC20758g abstractC20758g5 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g5 != null) {
                C20847s c20847s4 = c20826q.f58506d;
                if (c20847s4 == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g5.mo10743g(c20847s4.f58578a);
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_save) {
            AbstractC20758g abstractC20758g6 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g6 != null) {
                C20847s c20847s5 = c20826q.f58506d;
                if (c20847s5 == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g6.mo10746d(c20847s5.f58578a);
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_search_web) {
            AbstractC20758g abstractC20758g7 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g7 != null) {
                C20847s c20847s6 = c20826q.f58506d;
                if (c20847s6 == null) {
                    s1.z.c.l.l("detailsViewModel");
                    throw null;
                }
                abstractC20758g7.mo10739k(c20847s6.f58578a);
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_favorite_contact) {
            c20826q.m10649Mj(true);
            z = true;
        } else if (itemId == C3857R.C3859id.action_unfavorite_contact) {
            c20826q.m10649Mj(false);
            z = true;
        } else if (itemId == C3857R.C3859id.action_edit_contact) {
            d.w2(c20826q, (s1.w.f) null, (j0) null, new C20793m(c20826q, null), 3, (Object) null);
            z = true;
        } else if (itemId == C3857R.C3859id.action_delete_contact) {
            C20879a c20879a = c20826q.f58527y;
            n.B0(c2856a.m35933e(c20879a.f58670a, ViewActionEvent.ContactAction.DELETE), c20879a.f58671b);
            AbstractC20758g abstractC20758g8 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g8 != null) {
                abstractC20758g8.mo10745e();
                z = true;
            }
        } else if (itemId == C3857R.C3859id.action_delete_identified_contact) {
            C20879a c20879a2 = c20826q.f58527y;
            n.B0(c2856a.m35933e(c20879a2.f58670a, ViewActionEvent.ContactAction.DELETE_IDENTIFIED), c20879a2.f58671b);
            AbstractC20758g abstractC20758g9 = (AbstractC20758g) c20826q.f57683a;
            z = true;
            if (abstractC20758g9 != null) {
                abstractC20758g9.mo10734p();
                z = true;
            }
        } else {
            z = false;
        }
        return z;
    }

    public void onPause() {
        C20647a.super.onPause();
        AbstractC20751f abstractC20751f = this.f58174a;
        if (abstractC20751f == null) {
            s1.z.c.l.l("detailsPresenter");
            throw null;
        }
        ((C20826q) abstractC20751f).onVisibilityChanged(false);
        C20873g m10885OA = m10885OA();
        if (m10885OA == null) {
            return;
        }
        m10885OA.m10602b(false);
    }

    public void onResume() {
        C20647a.super.onResume();
        AbstractC20751f abstractC20751f = this.f58174a;
        if (abstractC20751f == null) {
            s1.z.c.l.l("detailsPresenter");
            throw null;
        }
        ((C20826q) abstractC20751f).onVisibilityChanged(true);
        C20873g m10885OA = m10885OA();
        if (m10885OA == null) {
            return;
        }
        m10885OA.m10602b(true);
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [PV, e.a.v.a.a$e] */
    /* JADX WARN: Type inference failed for: r0v54, types: [PV, e.a.v.a.a$d] */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20647a.super.onViewCreated(view, bundle);
        C26614s.m1563r(m10884PA().f58747l, new C20740e(this));
        TextView textView = m10884PA().f58748m;
        s1.z.c.l.d(textView, "binding.nameOrNumber");
        textView.setSelected(true);
        ImageView imageView = m10884PA().f58753r;
        s1.z.c.l.d(imageView, "binding.sourceIcon");
        C19286f.m13689O(imageView);
        ImageView imageView2 = m10884PA().f58756u;
        s1.z.c.l.d(imageView2, "binding.suggestName");
        C19286f.m13689O(imageView2);
        TagXView tagXView = m10884PA().f58758w;
        s1.z.c.l.d(tagXView, "binding.tag");
        C19286f.m13689O(tagXView);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        OnBackPressedDispatcher onBackPressedDispatcher = requireActivity.getOnBackPressedDispatcher();
        C20664g c20664g = new C20664g(true);
        onBackPressedDispatcher.f73b.add(c20664g);
        c20664g.addCancellable(new OnBackPressedDispatcher.C0018a(c20664g));
        m10884PA().f58756u.setOnClickListener(new View$OnClickListenerC20648a(0, this));
        m10884PA().f58744i.setOnClickListener(new View$OnClickListenerC20648a(1, this));
        AbstractC20751f abstractC20751f = this.f58174a;
        if (abstractC20751f == null) {
            s1.z.c.l.l("detailsPresenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20751f).f57683a = new C20655e();
        AbstractC20741a abstractC20741a = this.f58175b;
        if (abstractC20741a == null) {
            s1.z.c.l.l("detailsHeaderPresenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20741a).f57683a = new C20651d();
        AbstractC20751f abstractC20751f2 = this.f58174a;
        if (abstractC20751f2 == null) {
            s1.z.c.l.l("detailsPresenter");
            throw null;
        }
        Contact contact = (Contact) requireArguments().getParcelable(AnalyticsConstants.CONTACT);
        boolean z = requireArguments().getBoolean("save_to_history", false);
        int i = requireArguments().getInt("search_type", 4);
        SourceType sourceType = SourceType.values()[requireArguments().getInt("source_type", -1)];
        C20826q c20826q = (C20826q) abstractC20751f2;
        s1.z.c.l.e(sourceType, "sourceType");
        if (contact == null) {
            AbstractC20758g abstractC20758g = (AbstractC20758g) c20826q.f57683a;
            if (abstractC20758g == null) {
                return;
            }
            abstractC20758g.finish();
            return;
        }
        C20879a c20879a = c20826q.f58527y;
        Objects.requireNonNull(c20879a);
        s1.z.c.l.e(sourceType, "sourceType");
        String str = c20879a.f58670a;
        n.B0(C22128a.m8580q1(str, "viewId", str, sourceType.name(), null), c20879a.f58671b);
        c20826q.f58507e = Integer.valueOf(i);
        c20826q.f58508f = sourceType;
        C20875i c20875i = (C20875i) c20826q.f58505K;
        Objects.requireNonNull(c20875i);
        s1.z.c.l.e(contact, AnalyticsConstants.CONTACT);
        if (!c20875i.m10595f(contact)) {
            c20875i.f58664g.mo10570i(c20875i.m10598c());
        }
        d.w2(c20826q, c20826q.f58511i, (j0) null, new C20806o(c20826q, contact, sourceType, i, null), 2, (Object) null);
        if (!z) {
            return;
        }
        if (contact.getTcId() == null) {
            c20826q.f58524v.mo10516n(c20826q.f58525w.mo17387a(contact, 5, null, 0L));
        } else {
            c20826q.f58524v.mo10517f(c20826q.f58525w.mo17387a(contact, 5, null, 0L), contact);
        }
    }
}
