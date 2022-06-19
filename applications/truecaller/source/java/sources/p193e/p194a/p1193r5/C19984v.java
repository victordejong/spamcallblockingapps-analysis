package p193e.p194a.p1193r5;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.p173ui.embedded.EmbeddedPurchaseView;
import com.truecaller.premium.premiumusertab.list.LabelView;
import com.truecaller.whoviewedme.WhoViewedMePresenterView;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1013c.p1014a.C16723q;
import p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17278i;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1111o2.AbstractC18892a;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1275v.p1309p.C20940n;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8602m;
import s1.d0.i;
import s1.d0.j;
import s1.g;
import s1.s;
import s1.u.z;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��³\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t*\u0001j\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bz\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J7\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u001e\u0010\u0006J\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001aH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\"\u0010!J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010\u0006J\r\u0010&\u001a\u00020\u0004¢\u0006\u0004\b&\u0010\u0006J\u0017\u0010'\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b'\u0010!J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010\u0006J3\u0010-\u001a\u00020\u00042\u0006\u0010*\u001a\u00020)2\b\u0010+\u001a\u0004\u0018\u00010\u00182\b\u0010,\u001a\u0004\u0018\u00010)2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0004H\u0016¢\u0006\u0004\b/\u0010\u0006J\u000f\u00100\u001a\u00020\u0004H\u0016¢\u0006\u0004\b0\u0010\u0006J\u000f\u00101\u001a\u00020\u0004H\u0016¢\u0006\u0004\b1\u0010\u0006J7\u00109\u001a\u00020\u00042\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u00020\u001a2\u0006\u00107\u001a\u00020\u001a2\u0006\u00108\u001a\u00020)H\u0016¢\u0006\u0004\b9\u0010:J\u0017\u0010<\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u001aH\u0017¢\u0006\u0004\b<\u0010!J\u000f\u0010=\u001a\u00020\u0004H\u0016¢\u0006\u0004\b=\u0010\u0006J\u000f\u0010>\u001a\u00020\u0004H\u0016¢\u0006\u0004\b>\u0010\u0006J\u000f\u0010?\u001a\u00020\u0004H\u0016¢\u0006\u0004\b?\u0010\u0006J\u000f\u0010@\u001a\u00020\u0004H\u0016¢\u0006\u0004\b@\u0010\u0006R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\"\u0010K\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\"\u0010R\u001a\u00020L8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bT\u0010UR%\u0010]\u001a\n X*\u0004\u0018\u00010W0W8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\"\u0010d\u001a\u00020^8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b=\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR%\u0010i\u001a\n X*\u0004\u0018\u00010e0e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bf\u0010Z\u001a\u0004\bg\u0010hR\u0016\u0010m\u001a\u00020j8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bk\u0010lR\u0016\u0010q\u001a\u00020n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bo\u0010pR\"\u0010y\u001a\u00020r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bs\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010x¨\u0006{"}, d2 = {"Le/a/r5/v;", "Landroidx/fragment/app/Fragment;", "Lcom/truecaller/whoviewedme/WhoViewedMePresenterView;", "Le/a/l/v2/h/i;", "Ls1/s;", "TA", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/r5/s;", "revealedProfileView", "Le/a/l/c/a/q;", "premiumRequiredLabel", "unlockedLabel", "", "revealedViewSubtitle", "", "onlyUpdate", "Vn", "(Le/a/r5/s;Le/a/l/c/a/q;Le/a/l/c/a/q;Ljava/lang/String;Z)V", "em", AnalyticsConstants.SHOW, "f", "(Z)V", "g2", "a3", "dz", "ov", "UA", "Ge", "Rj", "", "numberOfPeopleViewed", "location", "peopleInLocation", "Zr", "(ILjava/lang/String;Ljava/lang/Integer;Z)V", "onPause", "onResume", "onDetach", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "Lcom/truecaller/details_view/analytics/SourceType;", "sourceType", "saveToHistory", "fetchMoreIfNeeded", "searchType", "L1", "(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZI)V", "enabled", "a6", "g", "e", "g0", "bs", "Ln3/b/e/a;", "m", "Ln3/b/e/a;", "listActionMode", "Le/a/r5/f0;", "Le/a/r5/f0;", "QA", "()Le/a/r5/f0;", "setListPresenter", "(Le/a/r5/f0;)V", "listPresenter", "Le/a/r5/d0;", "Le/a/r5/d0;", "getListItemPresenter", "()Le/a/r5/d0;", "setListItemPresenter", "(Le/a/r5/d0;)V", "listItemPresenter", "Le/a/o2/f;", "l", "Le/a/o2/f;", "listAdapter", "Landroid/widget/FrameLayout;", "kotlin.jvm.PlatformType", "j", "Ls1/g;", "SA", "()Landroid/widget/FrameLayout;", "rootView", "Le/a/r5/z;", "Le/a/r5/z;", "getIncognitoPresenter", "()Le/a/r5/z;", "setIncognitoPresenter", "(Le/a/r5/z;)V", "incognitoPresenter", "Landroid/widget/ProgressBar;", "i", "RA", "()Landroid/widget/ProgressBar;", "progress", "e/a/r5/v$a", "n", "Le/a/r5/v$a;", "actionModeCallBack", "Le/a/o2/a;", "k", "Le/a/o2/a;", "listDelegate", "Le/a/l/a2;", "h", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.r5.v */
/* loaded from: classes8-dex2jar.jar:e/a/r5/v.class */
public final class C19984v extends AbstractC19948h implements WhoViewedMePresenterView, AbstractC17278i {
    @Inject

    /* renamed from: e */
    public AbstractC19945f0 f56499e;
    @Inject

    /* renamed from: f */
    public C19941d0 f56500f;
    @Inject

    /* renamed from: g */
    public AbstractC19996z f56501g;
    @Inject

    /* renamed from: h */
    public AbstractC16613a2 f56502h;

    /* renamed from: k */
    public AbstractC18892a f56505k;

    /* renamed from: l */
    public C18898f f56506l;

    /* renamed from: m */
    public AbstractC25450a f56507m;

    /* renamed from: i */
    public final g f56503i = C19286f.m13659t(this, 2131365275);

    /* renamed from: j */
    public final g f56504j = C19286f.m13659t(this, 2131365500);

    /* renamed from: n */
    public final C19985a f56508n = new C19985a();

    /* renamed from: e.a.r5.v$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$a.class */
    public static final class C19985a implements AbstractC25450a.AbstractC25451a {
        public C19985a() {
            C19984v.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            Drawable mutate;
            l.e(abstractC25450a, "actionMode");
            l.e(menu, "menu");
            abstractC25450a.mo3516f().inflate(C2752R.C2756menu.who_viewed_me_action_mode, menu);
            Context requireContext = C19984v.this.requireContext();
            l.d(requireContext, "requireContext()");
            int m16105M = C17422k.m16105M(requireContext, 2130970255);
            l.e(menu, "$this$tintMenuItems");
            int size = menu.size();
            for (int i = 0; i < size; i++) {
                MenuItem item = menu.getItem(i);
                l.d(item, "getItem(i)");
                Drawable icon = item.getIcon();
                if (icon != null && (mutate = icon.mutate()) != null) {
                    mutate.setColorFilter(m16105M, PorterDuff.Mode.SRC_IN);
                }
            }
            C19984v.this.f56507m = abstractC25450a;
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            l.e(abstractC25450a, "actionMode");
            l.e(menu, "menu");
            String mo11778R = C19984v.this.m11707QA().mo11778R();
            if (mo11778R != null) {
                abstractC25450a.mo3507o(mo11778R);
            }
            i j = j.j(0, menu.size());
            ArrayList<MenuItem> arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (it.hasNext()) {
                arrayList.add(menu.getItem(it.a()));
            }
            for (MenuItem menuItem : arrayList) {
                l.d(menuItem, "it");
                menuItem.setVisible(C19984v.this.m11707QA().mo11774t7(menuItem.getItemId()));
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            l.e(abstractC25450a, "actionMode");
            l.e(menuItem, "menuItem");
            return C19984v.this.m11707QA().mo11777d(menuItem.getItemId());
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            l.e(abstractC25450a, "actionMode");
            C19984v.this.m11707QA().mo11780O();
        }
    }

    /* renamed from: e.a.r5.v$b */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$b.class */
    public static final class View$OnClickListenerC19986b implements View.OnClickListener {
        public View$OnClickListenerC19986b() {
            C19984v.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C19984v c19984v = C19984v.this;
            AbstractC16613a2 abstractC16613a2 = c19984v.f56502h;
            if (abstractC16613a2 == null) {
                l.l("premiumScreenNavigator");
                throw null;
            }
            Context requireContext = c19984v.requireContext();
            l.d(requireContext, "requireContext()");
            abstractC16613a2.mo17167b(requireContext, PremiumLaunchContext.WHO_VIEWED_ME);
        }
    }

    /* renamed from: e.a.r5.v$c */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$c.class */
    public static final class C19987c extends m implements s1.z.b.l<View, C19995y> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19987c() {
            super(1);
            C19984v.this = r4;
        }

        /* renamed from: d */
        public Object m11688d(Object obj) {
            View view = (View) obj;
            l.e(view, "v");
            C18898f c18898f = C19984v.this.f56506l;
            if (c18898f != null) {
                return new C19995y(view, c18898f);
            }
            l.l("listAdapter");
            throw null;
        }
    }

    /* renamed from: e.a.r5.v$d */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$d.class */
    public static final class C19988d extends m implements s1.z.b.l<C19995y, AbstractC19994x> {

        /* renamed from: b */
        public static final C19988d f56512b = new C19988d();

        public C19988d() {
            super(1);
        }

        /* renamed from: d */
        public Object m11687d(Object obj) {
            C19995y c19995y = (C19995y) obj;
            l.e(c19995y, "it");
            return c19995y;
        }
    }

    /* renamed from: e.a.r5.v$e */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$e.class */
    public static final class C19989e extends m implements s1.z.b.l<View, C19938c0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19989e() {
            super(1);
            C19984v.this = r4;
        }

        /* renamed from: d */
        public Object m11686d(Object obj) {
            View view = (View) obj;
            l.e(view, "v");
            C18898f c18898f = C19984v.this.f56506l;
            if (c18898f != null) {
                return new C19938c0(view, c18898f);
            }
            l.l("listAdapter");
            throw null;
        }
    }

    /* renamed from: e.a.r5.v$f */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$f.class */
    public static final class C19990f extends m implements s1.z.b.l<C19938c0, C19938c0> {

        /* renamed from: b */
        public static final C19990f f56514b = new C19990f();

        public C19990f() {
            super(1);
        }

        /* renamed from: d */
        public Object m11685d(Object obj) {
            C19938c0 c19938c0 = (C19938c0) obj;
            l.e(c19938c0, "it");
            return c19938c0;
        }
    }

    /* renamed from: e.a.r5.v$g */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$g.class */
    public static final class View$OnClickListenerC19991g implements View.OnClickListener {
        public View$OnClickListenerC19991g(C19979s c19979s, C8243a c8243a) {
            C19984v.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C19984v.this.m11707QA().mo11786D7();
        }
    }

    /* renamed from: e.a.r5.v$h */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/v$h.class */
    public static final class C19992h extends m implements s1.z.b.l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19992h(C19979s c19979s, C8243a c8243a) {
            super(1);
            C19984v.this = r4;
        }

        /* renamed from: d */
        public Object m11684d(Object obj) {
            l.e((View) obj, "it");
            C19984v.this.m11707QA().mo11786D7();
            return s.a;
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: Ge */
    public void mo11709Ge(boolean z) {
        if (!z) {
            m11703TA();
            AbstractC19945f0 abstractC19945f0 = this.f56499e;
            if (abstractC19945f0 == null) {
                l.l("listPresenter");
                throw null;
            }
            abstractC19945f0.mo11773tf();
        }
        TextView textView = (TextView) m11704SA().findViewById(C2752R.C2754id.profile_view_count_desc);
        if (textView != null) {
            textView.setText(getResources().getString(C2752R.string.NoProfileViews));
        }
        TextView textView2 = (TextView) m11704SA().findViewById(C2752R.C2754id.upgrade_premium);
        if (textView2 != null) {
            textView2.setText(getResources().getString(C2752R.string.NoProfileViewsUpgradeToPremium));
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: L1 */
    public void mo11708L1(Contact contact, SourceType sourceType, boolean z, boolean z2, int i) {
        Intent m10486b;
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(sourceType, "sourceType");
        Context activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            C20940n c20940n = C20940n.f58889a;
            m10486b = c20940n.m10486b(activity, contact.getTcId(), contact.m35491w(), "", "", "", SourceType.WhoViewedMe, false, true, 21, null, null, null);
            c20940n.m10483e(activity, m10486b);
        }
    }

    /* renamed from: QA */
    public final AbstractC19945f0 m11707QA() {
        AbstractC19945f0 abstractC19945f0 = this.f56499e;
        if (abstractC19945f0 != null) {
            return abstractC19945f0;
        }
        l.l("listPresenter");
        throw null;
    }

    /* renamed from: RA */
    public final ProgressBar m11706RA() {
        return (ProgressBar) this.f56503i.getValue();
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: Rj */
    public void mo11705Rj() {
        TextView textView = (TextView) m11704SA().findViewById(C2752R.C2754id.learn_more_button);
        if (textView != null) {
            C19286f.m13687Q(textView);
        }
    }

    /* renamed from: SA */
    public final FrameLayout m11704SA() {
        return (FrameLayout) this.f56504j.getValue();
    }

    /* renamed from: TA */
    public final void m11703TA() {
        m11704SA().removeAllViews();
        FrameLayout m11704SA = m11704SA();
        l.d(m11704SA, "rootView");
        C19286f.m13668k(m11704SA, C2752R.layout.include_who_viewed_me_non_pro, true);
        EmbeddedPurchaseView embeddedPurchaseView = (EmbeddedPurchaseView) m11704SA().findViewById(C2752R.C2754id.premiumFloatingButtons);
        embeddedPurchaseView.setCallBack(this);
        embeddedPurchaseView.setLaunchContext(PremiumLaunchContext.WHO_VIEWED_ME);
        m11704SA().findViewById(C2752R.C2754id.learn_more_button).setOnClickListener(new View$OnClickListenerC19986b());
    }

    /* renamed from: UA */
    public final void m11702UA() {
        h activity = getActivity();
        if (activity != null) {
            TextView textView = (TextView) activity.findViewById(C2752R.C2754id.toolbarTitle);
            if (textView != null) {
                C19286f.m13689O(textView);
            }
            TextView textView2 = (TextView) activity.findViewById(C2752R.C2754id.toolbarCaption);
            if (textView2 != null) {
                C19286f.m13689O(textView2);
            }
            AbstractC25393a supportActionBar = activity.getSupportActionBar();
            if (supportActionBar == null) {
                return;
            }
            supportActionBar.mo3542y(activity.getString(C2752R.string.WhoViewedMeTitle));
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: Vn */
    public void mo11701Vn(C19979s c19979s, C16723q c16723q, C16723q c16723q2, String str, boolean z) {
        l.e(c19979s, "revealedProfileView");
        l.e(c16723q, "premiumRequiredLabel");
        l.e(c16723q2, "unlockedLabel");
        l.e(str, "revealedViewSubtitle");
        if (!z) {
            m11704SA().removeAllViews();
            FrameLayout m11704SA = m11704SA();
            l.d(m11704SA, "rootView");
            C19286f.m13668k(m11704SA, C2752R.layout.include_wvm_revealed_non_pro, true);
            EmbeddedPurchaseView embeddedPurchaseView = (EmbeddedPurchaseView) m11704SA().findViewById(C2752R.C2754id.premiumFloatingButtons);
            embeddedPurchaseView.setCallBack(this);
            embeddedPurchaseView.setLaunchContext(PremiumLaunchContext.WHO_VIEWED_ME);
            Context requireContext = requireContext();
            l.d(requireContext, "requireContext()");
            C8243a c8243a = new C8243a(new C19235i0(requireContext));
            ListItemX listItemX = (ListItemX) m11704SA().findViewById(C2752R.C2754id.revealedView);
            ListItemX.m35637x1(listItemX, c19979s.f56493a, false, 0, 0, 14, null);
            ListItemX.m35644o1(listItemX, c19979s.f56494b, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
            ListItemX.m35639v1(listItemX, C8602m.m28249i(listItemX.getContext(), c19979s.f56495c, true).toString(), null, false, 6, null);
            listItemX.setAvatarPresenter(c8243a);
            C8243a.m28739ok(c8243a, c19979s.f56496d, false, 2, null);
            listItemX.setOnClickListener(new View$OnClickListenerC19991g(c19979s, c8243a));
            listItemX.m35650i1(C2752R.C2753drawable.ic_expand_wvm_reveal, new C19992h(c19979s, c8243a));
            listItemX.m35653f1();
            LabelView labelView = (LabelView) m11704SA().findViewById(2131364536);
            C19286f.m13684T(labelView);
            labelView.setLabel(c16723q);
            LabelView labelView2 = (LabelView) m11704SA().findViewById(C2752R.C2754id.revealedViewLabel);
            C19286f.m13684T(labelView2);
            labelView2.setLabel(c16723q2);
        }
        h activity = getActivity();
        if (activity != null) {
            TextView textView = (TextView) activity.findViewById(C2752R.C2754id.toolbarTitle);
            if (textView != null) {
                C19286f.m13684T(textView);
                textView.setText(activity.getString(C2752R.string.WhoViewedMeTitle));
            }
            TextView textView2 = (TextView) activity.findViewById(C2752R.C2754id.toolbarCaption);
            if (textView2 != null) {
                C19286f.m13684T(textView2);
                textView2.setText(str);
            }
            AbstractC25393a supportActionBar = activity.getSupportActionBar();
            if (supportActionBar == null) {
                return;
            }
            supportActionBar.mo3542y("");
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: Zr */
    public void mo11700Zr(int i, String str, Integer num, boolean z) {
        String str2;
        if (!z) {
            m11703TA();
            AbstractC19945f0 abstractC19945f0 = this.f56499e;
            if (abstractC19945f0 == null) {
                l.l("listPresenter");
                throw null;
            }
            abstractC19945f0.mo11773tf();
        }
        TextView textView = (TextView) m11704SA().findViewById(C2752R.C2754id.profile_view_count_desc);
        if (textView != null) {
            if (str != null) {
                if ((num != null ? num.intValue() : 0) > 0) {
                    str2 = getResources().getQuantityString(C2752R.plurals.ProfileViewCountLocationDesc, i, Integer.valueOf(i), str, num);
                    l.d(str2, "when {\n        location …pleViewed\n        )\n    }");
                    textView.setText(str2);
                }
            }
            str2 = getResources().getQuantityString(C2752R.plurals.ProfileViewCountDesc, i, Integer.valueOf(i));
            l.d(str2, "when {\n        location …pleViewed\n        )\n    }");
            textView.setText(str2);
        }
        TextView textView2 = (TextView) m11704SA().findViewById(C2752R.C2754id.upgrade_premium);
        if (textView2 != null) {
            textView2.setText(getResources().getString(C2752R.string.WhoViewedMeTextUpgradeToPremium));
        }
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17278i
    /* renamed from: a3 */
    public void mo11699a3() {
        ProgressBar m11706RA = m11706RA();
        if (m11706RA != null) {
            C19286f.m13683U(m11706RA, false);
        }
        EmbeddedPurchaseView embeddedPurchaseView = (EmbeddedPurchaseView) m11704SA().findViewById(C2752R.C2754id.premiumFloatingButtons);
        if (embeddedPurchaseView != null) {
            C19286f.m13683U(embeddedPurchaseView, false);
        }
        AbstractC19945f0 abstractC19945f0 = this.f56499e;
        if (abstractC19945f0 != null) {
            abstractC19945f0.mo11776ie();
        } else {
            l.l("listPresenter");
            throw null;
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: a6 */
    public void mo11698a6(boolean z) {
        C19941d0 c19941d0 = this.f56500f;
        if (c19941d0 == null) {
            l.l("listItemPresenter");
            throw null;
        }
        c19941d0.f52996a = z;
        C18898f c18898f = this.f56506l;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            l.l("listAdapter");
            throw null;
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: bs */
    public void mo11697bs() {
        C18898f c18898f = this.f56506l;
        if (c18898f != null) {
            c18898f.notifyItemChanged(0);
        } else {
            l.l("listAdapter");
            throw null;
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: dz */
    public void mo11696dz() {
        m11704SA().removeAllViews();
        FrameLayout m11704SA = m11704SA();
        l.d(m11704SA, "rootView");
        C19286f.m13668k(m11704SA, C2752R.layout.include_who_viewed_me_pro_empty, true);
        m11702UA();
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: e */
    public void mo11695e() {
        AbstractC25450a abstractC25450a = this.f56507m;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: em */
    public void mo11694em() {
        C18898f c18898f = this.f56506l;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            l.l("listAdapter");
            throw null;
        }
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: f */
    public void mo11693f(boolean z) {
        ProgressBar m11706RA = m11706RA();
        l.d(m11706RA, "progress");
        C19286f.m13683U(m11706RA, z);
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: g */
    public void mo11692g() {
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        activity.startSupportActionMode(this.f56508n);
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: g0 */
    public void mo11691g0() {
        AbstractC25450a abstractC25450a = this.f56507m;
        if (abstractC25450a != null) {
            abstractC25450a.mo3513i();
        }
    }

    @Override // p193e.p194a.p1011l.p1033v2.p1036h.AbstractC17278i
    /* renamed from: g2 */
    public void mo11690g2(boolean z) {
        EmbeddedPurchaseView embeddedPurchaseView = (EmbeddedPurchaseView) m11704SA().findViewById(C2752R.C2754id.premiumFloatingButtons);
        if (embeddedPurchaseView != null) {
            C19286f.m13683U(embeddedPurchaseView, !z);
        }
        ProgressBar m11706RA = m11706RA();
        if (m11706RA != null) {
            C19286f.m13683U(m11706RA, z);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setTitle(C2752R.string.WhoViewedMeTitle);
        }
        View inflate = layoutInflater.inflate(C2752R.layout.view_whoviewedme_list, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…e_list, container, false)");
        return inflate;
    }

    public void onDetach() {
        C19984v.super.onDetach();
        AbstractC19945f0 abstractC19945f0 = this.f56499e;
        if (abstractC19945f0 != null) {
            abstractC19945f0.mo9806c();
        } else {
            l.l("listPresenter");
            throw null;
        }
    }

    public void onPause() {
        C19984v.super.onPause();
        AbstractC19945f0 abstractC19945f0 = this.f56499e;
        if (abstractC19945f0 != null) {
            abstractC19945f0.mo11775ni();
        } else {
            l.l("listPresenter");
            throw null;
        }
    }

    public void onResume() {
        C19984v.super.onResume();
        AbstractC19945f0 abstractC19945f0 = this.f56499e;
        if (abstractC19945f0 != null) {
            abstractC19945f0.mo11776ie();
        } else {
            l.l("listPresenter");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0086, code lost:
        if (r11 != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r11, android.os.Bundle r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1193r5.C19984v.onViewCreated(android.view.View, android.os.Bundle):void");
    }

    @Override // com.truecaller.whoviewedme.WhoViewedMePresenterView
    /* renamed from: ov */
    public void mo11689ov() {
        m11704SA().removeAllViews();
        FrameLayout m11704SA = m11704SA();
        l.d(m11704SA, "rootView");
        C19286f.m13668k(m11704SA, C2752R.layout.include_who_viewed_me_pro_not_empty, true);
        RecyclerView recyclerView = (RecyclerView) m11704SA().findViewById(2131365378);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        C18898f c18898f = this.f56506l;
        if (c18898f == null) {
            l.l("listAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        recyclerView.setHasFixedSize(true);
        m11702UA();
    }
}
