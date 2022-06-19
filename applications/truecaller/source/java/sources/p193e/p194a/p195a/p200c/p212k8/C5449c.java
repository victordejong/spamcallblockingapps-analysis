package p193e.p194a.p195a.p200c.p212k8;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.snackbar.Snackbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.imgroupinvitation.ImGroupInvitationActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18190v;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.d0.i;
import s1.d0.j;
import s1.u.z;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n*\u00011\u0018�� O2\u00020\u00012\u00020\u0002:\u00016B\u0007¢\u0006\u0004\bN\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0013J\u001d\u0010\u001d\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0013J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0015H\u0016¢\u0006\u0004\b#\u0010\u0018J\u001f\u0010'\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u0018\u0010?\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010>R\u001d\u0010E\u001a\u00020@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8��@��X\u0081.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010L¨\u0006P"}, d2 = {"Le/a/a/c/k8/c;", "Landroidx/fragment/app/Fragment;", "Le/a/a/c/k8/n;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "()V", "onDetach", "", AnalyticsConstants.SHOW, "Df", "(Z)V", "c0", "", "Lcom/truecaller/messaging/data/types/Conversation;", "archiveList", "sp", "(Ljava/util/List;)V", "g", "e", "g0", "isActionMode", "B1", "conversation", "", "filter", "q2", "(Lcom/truecaller/messaging/data/types/Conversation;I)V", "Lcom/truecaller/messaging/data/types/ImGroupInfo;", "imGroupInfo", "I", "(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V", "Le/a/o2/f;", "d", "Le/a/o2/f;", "listAdapter", "e/a/a/c/k8/c$c", "f", "Le/a/a/c/k8/c$c;", "actionModeCallBack", "Le/a/a/c/k8/m;", C22021b.f61237c, "Le/a/a/c/k8/m;", "PA", "()Le/a/a/c/k8/m;", "setPresenter", "(Le/a/a/c/k8/m;)V", "presenter", "Ln3/b/e/a;", "Ln3/b/e/a;", "actionMode", "Le/a/m3/v;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/v;", "binding", "Le/a/a/c/k8/j;", AbstractC2405c.f7629a, "Le/a/a/c/k8/j;", "getConversationPresenter$truecaller_googlePlayRelease", "()Le/a/a/c/k8/j;", "setConversationPresenter$truecaller_googlePlayRelease", "(Le/a/a/c/k8/j;)V", "conversationPresenter", "<init>", "h", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.k8.c */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c.class */
public final class C5449c extends Fragment implements AbstractC5470n {

    /* renamed from: g */
    public static final /* synthetic */ l[] f18565g = {C22128a.m8621g0(C5449c.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentArchiveConversationListBinding;", 0)};

    /* renamed from: h */
    public static final C5451b f18566h = new C5451b(null);
    @Inject

    /* renamed from: b */
    public AbstractC5469m f18568b;
    @Inject

    /* renamed from: c */
    public AbstractC5466j f18569c;

    /* renamed from: d */
    public C18898f f18570d;

    /* renamed from: e */
    public AbstractC25450a f18571e;

    /* renamed from: a */
    public final ViewBindingProperty f18567a = new C19350a(new C5450a());

    /* renamed from: f */
    public final C5452c f18572f = new C5452c();

    /* renamed from: e.a.a.c.k8.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$a.class */
    public static final class C5450a extends m implements s1.z.b.l<C5449c, C18190v> {
        public C5450a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33105d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131364250;
            AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imageEmpty);
            if (appCompatImageView != null) {
                i = 2131364633;
                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(2131364633);
                if (recyclerView != null) {
                    i = 2131366286;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.textEmpty);
                    if (appCompatTextView != null) {
                        i = 2131366512;
                        MaterialToolbar findViewById = requireView.findViewById(2131366512);
                        if (findViewById != null) {
                            return new C18190v((ConstraintLayout) requireView, appCompatImageView, recyclerView, appCompatTextView, findViewById);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.c.k8.c$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$b.class */
    public static final class C5451b {
        public C5451b(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.k8.c$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$c.class */
    public static final class C5452c implements AbstractC25450a.AbstractC25451a {
        public C5452c() {
            C5449c.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            s1.z.c.l.e(menu, "menu");
            abstractC25450a.mo3516f().inflate(C2752R.C2756menu.archive_conversation_list_menu, menu);
            C5449c c5449c = C5449c.this;
            c5449c.f18571e = abstractC25450a;
            int m13612L = C19291g.m13612L(c5449c.requireContext(), 2130970255);
            int m13612L2 = C19291g.m13612L(C5449c.this.requireContext(), 2130970253);
            i j = j.j(0, menu.size());
            ArrayList<MenuItem> arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (it.hasNext()) {
                arrayList.add(menu.getItem(it.a()));
            }
            for (MenuItem menuItem : arrayList) {
                s1.z.c.l.d(menuItem, "it");
                C19286f.m13674e(menuItem, Integer.valueOf(m13612L), Integer.valueOf(m13612L2));
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            s1.z.c.l.e(menu, "menu");
            abstractC25450a.mo3507o(C5449c.this.m33106PA().mo33083R());
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            s1.z.c.l.e(menuItem, "menuItem");
            return C5449c.this.m33106PA().mo33082d(menuItem.getItemId());
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            s1.z.c.l.e(abstractC25450a, "actionMode");
            C5449c.this.m33106PA().mo33085O();
        }
    }

    /* renamed from: e.a.a.c.k8.c$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$d.class */
    public static final class View$OnClickListenerC5453d implements View.OnClickListener {
        public View$OnClickListenerC5453d() {
            C5449c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5449c.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.c.k8.c$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$e.class */
    public static final class C5454e extends m implements s1.z.b.l<View, C5448b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5454e() {
            super(1);
            C5449c.this = r4;
        }

        /* renamed from: d */
        public Object m33104d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            C18898f c18898f = C5449c.this.f18570d;
            if (c18898f != null) {
                return new C5448b(view, c18898f);
            }
            s1.z.c.l.l("listAdapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.c.k8.c$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$f.class */
    public static final class C5455f extends m implements s1.z.b.l<C5448b, C5448b> {

        /* renamed from: b */
        public static final C5455f f18576b = new C5455f();

        public C5455f() {
            super(1);
        }

        /* renamed from: d */
        public Object m33103d(Object obj) {
            C5448b c5448b = (C5448b) obj;
            s1.z.c.l.e(c5448b, "it");
            return c5448b;
        }
    }

    /* renamed from: e.a.a.c.k8.c$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/k8/c$g.class */
    public static final class View$OnClickListenerC5456g implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f18578b;

        public View$OnClickListenerC5456g(List list) {
            C5449c.this = r4;
            this.f18578b = list;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C5449c.this.m33106PA().mo33080ya(this.f18578b);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: B1 */
    public void mo33079B1(boolean z) {
        AbstractC5466j abstractC5466j = this.f18569c;
        if (abstractC5466j != null) {
            abstractC5466j.mo14348r(z);
        } else {
            s1.z.c.l.l("conversationPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: Df */
    public void mo33078Df(boolean z) {
        AppCompatTextView appCompatTextView = m33107OA().f51424c;
        s1.z.c.l.d(appCompatTextView, "binding.textEmpty");
        appCompatTextView.setVisibility(z ? 0 : 8);
        AppCompatImageView appCompatImageView = m33107OA().f51422a;
        s1.z.c.l.d(appCompatImageView, "binding.imageEmpty");
        appCompatImageView.setVisibility(z ? 0 : 8);
        RecyclerView recyclerView = m33107OA().f51423b;
        s1.z.c.l.d(recyclerView, "binding.list");
        int i = 0;
        if (z) {
            i = 8;
        }
        recyclerView.setVisibility(i);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: I */
    public void mo33077I(ImGroupInfo imGroupInfo) {
        s1.z.c.l.e(imGroupInfo, "imGroupInfo");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(ImGroupInvitationActivity.m34987pa(requireContext, imGroupInfo));
    }

    /* renamed from: OA */
    public final C18190v m33107OA() {
        return (C18190v) this.f18567a.m34468b(this, f18565g[0]);
    }

    /* renamed from: PA */
    public final AbstractC5469m m33106PA() {
        AbstractC5469m abstractC5469m = this.f18568b;
        if (abstractC5469m != null) {
            return abstractC5469m;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: c0 */
    public void mo33076c0() {
        C18898f c18898f = this.f18570d;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: e */
    public void mo33075e() {
        AbstractC25450a abstractC25450a = this.f18571e;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: g */
    public void mo33074g() {
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        activity.startSupportActionMode(this.f18572f);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: g0 */
    public void mo33073g0() {
        AbstractC25450a abstractC25450a = this.f18571e;
        if (abstractC25450a != null) {
            abstractC25450a.mo3513i();
        }
    }

    public void onCreate(Bundle bundle) {
        C5449c.super.onCreate(bundle);
        setHasOptionsMenu(true);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        C5471o c5471o = new C5471o(requireContext2);
        C25225a.m3846s(c5471o, C5471o.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C5472p c5472p = new C5472p(c5471o, mo10154s, null);
        this.f18568b = (AbstractC5469m) c5472p.f18599e.get();
        this.f18569c = (AbstractC5466j) c5472p.f18604j.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_archive_conversation_list, viewGroup, false);
    }

    public void onDetach() {
        C5449c.super.onDetach();
        AbstractC5469m abstractC5469m = this.f18568b;
        if (abstractC5469m != null) {
            abstractC5469m.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onStart() {
        C5449c.super.onStart();
        AbstractC5469m abstractC5469m = this.f18568b;
        if (abstractC5469m != null) {
            abstractC5469m.mo33081v6();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5449c.super.onViewCreated(view, bundle);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(m33107OA().f51425d);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        m33107OA().f51425d.setNavigationOnClickListener(new View$OnClickListenerC5453d());
        AbstractC5466j abstractC5466j = this.f18569c;
        if (abstractC5466j == null) {
            s1.z.c.l.l("conversationPresenter");
            throw null;
        }
        this.f18570d = new C18898f(new C18910r(abstractC5466j, C2752R.layout.listitem_archive_conversation, new C5454e(), C5455f.f18576b));
        RecyclerView recyclerView = m33107OA().f51423b;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        C18898f c18898f = this.f18570d;
        if (c18898f == null) {
            s1.z.c.l.l("listAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC5469m abstractC5469m = this.f18568b;
        if (abstractC5469m != null) {
            abstractC5469m.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: q2 */
    public void mo33072q2(Conversation conversation, int i) {
        s1.z.c.l.e(conversation, "conversation");
        Intent intent = new Intent(getContext(), ConversationActivity.class);
        intent.putExtra("conversation", conversation);
        intent.putExtra("filter", i);
        startActivity(intent);
    }

    @Override // p193e.p194a.p195a.p200c.p212k8.AbstractC5470n
    /* renamed from: sp */
    public void mo33071sp(List<? extends Conversation> list) {
        s1.z.c.l.e(list, "archiveList");
        String quantityString = getResources().getQuantityString(C2752R.plurals.unarchived_conversations_confirmation, list.size(), Integer.valueOf(list.size()));
        s1.z.c.l.d(quantityString, "resources.getQuantityStr…t.size, archiveList.size)");
        Snackbar l = Snackbar.l(requireView(), quantityString, (int) TimeUnit.SECONDS.toMillis(3L));
        s1.z.c.l.d(l, "Snackbar.make(requireVie…ONDS.toMillis(3).toInt())");
        l.m((int) C2752R.string.unarchived_conversations_undo, new View$OnClickListenerC5456g(list));
        l.n();
    }
}
