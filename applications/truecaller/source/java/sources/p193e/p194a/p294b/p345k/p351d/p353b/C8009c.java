package p193e.p194a.p294b.p345k.p351d.p353b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.actions.SearchIntents;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.covidDirectory.config.CovidDirectoryBanner;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p294b.p345k.p346a.C7964d;
import p193e.p194a.p294b.p345k.p347b.p349b.C7981b;
import p193e.p194a.p294b.p345k.p350c.AbstractC7987d;
import p193e.p194a.p294b.p345k.p350c.AbstractC7988e;
import p193e.p194a.p294b.p345k.p350c.C7989f;
import p193e.p194a.p294b.p345k.p350c.C7994i;
import p193e.p194a.p294b.p345k.p351d.p352a.AbstractC8002d;
import p193e.p194a.p294b.p345k.p351d.p352a.C7999c;
import p193e.p194a.p294b.p355m.C8072i0;
import p193e.p194a.p294b.p355m.C8076j1;
import p193e.p194a.p294b.p357o.p358a.AbstractC8117a;
import p193e.p194a.p294b.p357o.p365f.p368c.C8173b;
import p193e.p194a.p294b.p357o.p365f.p368c.C8175d;
import p193e.p194a.p294b.p357o.p365f.p368c.C8182h;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� o2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001pB\u0007¢\u0006\u0004\bn\u0010\u001bJ-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b!\u0010 J\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u0011H\u0016¢\u0006\u0004\b#\u0010\u0019J\u0017\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u0011H\u0016¢\u0006\u0004\b%\u0010\u0019J\u0017\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u0011H\u0016¢\u0006\u0004\b'\u0010\u0019J\u001f\u0010+\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u0006\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u000eH\u0016¢\u0006\u0004\b-\u0010\u001bJ\u0017\u00100\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u000eH\u0016¢\u0006\u0004\b2\u0010\u001bJ\u000f\u00103\u001a\u00020\u000eH\u0016¢\u0006\u0004\b3\u0010\u001bJ\u0017\u00104\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u0011H\u0016¢\u0006\u0004\b4\u0010\u0019J\u000f\u00105\u001a\u00020\u000eH\u0016¢\u0006\u0004\b5\u0010\u001bJ'\u0010:\u001a\u00020\u000e2\u0016\u00109\u001a\u0012\u0012\u0004\u0012\u00020706j\b\u0012\u0004\u0012\u000207`8H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u000eH\u0016¢\u0006\u0004\b<\u0010\u001bJ\u000f\u0010=\u001a\u00020\u000eH\u0016¢\u0006\u0004\b=\u0010\u001bJ\u000f\u0010>\u001a\u00020\u000eH\u0016¢\u0006\u0004\b>\u0010\u001bJ\u000f\u0010?\u001a\u00020\u000eH\u0016¢\u0006\u0004\b?\u0010\u001bJ\u0017\u0010B\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\u000e2\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\u0019\u0010I\u001a\u00020\u001d2\b\u0010H\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\bI\u0010JJ\u0019\u0010K\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\bK\u0010JJ\u000f\u0010L\u001a\u00020\u000eH\u0016¢\u0006\u0004\bL\u0010\u001bJ\u000f\u0010M\u001a\u00020\u000eH\u0016¢\u0006\u0004\bM\u0010\u001bJ\u0017\u0010O\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020\u001dH\u0016¢\u0006\u0004\bO\u0010 J\u0017\u0010Q\u001a\u00020\u000e2\u0006\u0010P\u001a\u00020\u0011H\u0016¢\u0006\u0004\bQ\u0010\u0019J\u0019\u0010S\u001a\u00020\u000e2\b\u0010R\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\bS\u0010\u0019R\"\u0010[\u001a\u00020T8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u0018\u0010_\u001a\u0004\u0018\u00010\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0016\u0010c\u001a\u00020`8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\ba\u0010bR\u001d\u0010i\u001a\u00020d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bg\u0010hR\u0016\u0010m\u001a\u00020j8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bk\u0010l¨\u0006q"}, d2 = {"Le/a/b/k/d/b/c;", "Landroidx/fragment/app/Fragment;", "Le/a/b/k/c/e;", "Le/a/b/k/d/a/d;", "Landroidx/appcompat/widget/SearchView$l;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "getSource", "()Ljava/lang/String;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "title", "o", "(Ljava/lang/String;)V", "onResume", "()V", "v", "", "visbility", "B", "(Z)V", "H", "info", "zp", "text", "y", "searchHint", "K", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "y4", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "onAttach", "(Landroid/content/Context;)V", "Y1", "s3", "s2", "g4", "Ljava/util/ArrayList;", "Le/a/b/o/f/c/b;", "Lkotlin/collections/ArrayList;", "indexedList", "X2", "(Ljava/util/ArrayList;)V", "w3", "O2", "G1", "e6", "Le/a/b/k/b/b/b;", "district", "Kv", "(Le/a/b/k/b/b/b;)V", "", "listSize", "F", "(I)V", SearchIntents.EXTRA_QUERY, "onQueryTextSubmit", "(Ljava/lang/String;)Z", "onQueryTextChange", "onDestroyView", "onDetach", "isVisible", "Nq", "imageUrl", "Jg", "url", "qy", "Le/a/b/k/c/d;", "e", "Le/a/b/k/c/d;", "RA", "()Le/a/b/k/c/d;", "setPresenter", "(Le/a/b/k/c/d;)V", "presenter", "Le/a/b/k/d/a/c;", "h", "Le/a/b/k/d/a/c;", "adapter", "Landroidx/appcompat/widget/SearchView;", "j", "Landroidx/appcompat/widget/SearchView;", "mSearchView", "Le/a/b/m/i0;", "k", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/b/m/i0;", "binding", "Le/a/b/o/a/a;", "i", "Le/a/b/o/a/a;", "govServicesFragmentListener", "<init>", "m", C22021b.f61237c, "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.k.d.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/c.class */
public final class C8009c extends AbstractC8017f implements AbstractC7988e, AbstractC8002d, SearchView.AbstractC0071l {

    /* renamed from: l */
    public static final /* synthetic */ l[] f24717l = {C22128a.m8621g0(C8009c.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentCovidReliefDistrictListBinding;", 0)};

    /* renamed from: m */
    public static final C8011b f24718m = new C8011b(null);
    @Inject

    /* renamed from: e */
    public AbstractC7987d f24719e;
    @Inject

    /* renamed from: f */
    public C8182h f24720f;
    @Inject

    /* renamed from: g */
    public C8175d f24721g;

    /* renamed from: h */
    public C7999c f24722h;

    /* renamed from: i */
    public AbstractC8117a f24723i;

    /* renamed from: j */
    public SearchView f24724j;

    /* renamed from: k */
    public final ViewBindingProperty f24725k = new C19350a(new C8010a());

    /* renamed from: e.a.b.k.d.b.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/c$a.class */
    public static final class C8010a extends m implements s1.z.b.l<C8009c, C8072i0> {
        public C8010a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28976d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.bannerImageView;
            AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(i);
            if (appCompatImageView != null) {
                i = C3478R.C3480id.forceUpdate;
                AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(i);
                if (appCompatTextView != null) {
                    i = C3478R.C3480id.rvDistrictList;
                    RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                    if (recyclerView != null) {
                        i = C3478R.C3480id.textLastUpdatedTime;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) requireView.findViewById(i);
                        if (appCompatTextView2 != null) {
                            i = C3478R.C3480id.toolbar;
                            Toolbar toolbar = (Toolbar) requireView.findViewById(i);
                            if (toolbar != null) {
                                i = C3478R.C3480id.tvHeader;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) requireView.findViewById(i);
                                if (appCompatTextView3 != null) {
                                    i = C3478R.C3480id.updateInfo;
                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                                    if (linearLayout != null) {
                                        i = C3478R.C3480id.viewDistrictList;
                                        Group group = (Group) requireView.findViewById(i);
                                        if (group != null) {
                                            i = C3478R.C3480id.viewEmptySearch;
                                            View findViewById = requireView.findViewById(i);
                                            if (findViewById != null) {
                                                C8076j1 m28915a = C8076j1.m28915a(findViewById);
                                                i = C3478R.C3480id.viewLoading;
                                                LinearLayout linearLayout2 = (LinearLayout) requireView.findViewById(i);
                                                if (linearLayout2 != null) {
                                                    return new C8072i0((LinearLayout) requireView, appCompatImageView, appCompatTextView, recyclerView, appCompatTextView2, toolbar, appCompatTextView3, linearLayout, group, m28915a, linearLayout2);
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

    /* renamed from: e.a.b.k.d.b.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/c$b.class */
    public static final class C8011b {
        public C8011b(f fVar) {
        }
    }

    /* renamed from: e.a.b.k.d.b.c$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/c$c.class */
    public static final class View$OnClickListenerC8012c implements View.OnClickListener {
        public View$OnClickListenerC8012c() {
            C8009c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7994i c7994i = (C7994i) C8009c.this.m28990RA();
            Objects.requireNonNull(c7994i);
            d.w2(c7994i, (s1.w.f) null, (j0) null, new C7989f(c7994i, true, null), 3, (Object) null);
        }
    }

    /* renamed from: e.a.b.k.d.b.c$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/c$d.class */
    public static final class View$OnClickListenerC8013d implements View.OnClickListener {
        public View$OnClickListenerC8013d(String str) {
            C8009c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7988e abstractC7988e;
            C7994i c7994i = (C7994i) C8009c.this.m28990RA();
            CovidDirectoryBanner m29057a = ((C7964d) c7994i.f24683e).m29057a();
            if (m29057a != null) {
                String actionUrl = m29057a.getActionUrl();
                if (actionUrl == null) {
                    return;
                }
                if (!(!r.p(actionUrl))) {
                    actionUrl = null;
                }
                if (actionUrl == null || (abstractC7988e = (AbstractC7988e) c7994i.f57683a) == null) {
                    return;
                }
                abstractC7988e.mo28984qy(actionUrl);
            }
        }
    }

    /* renamed from: e.a.b.k.d.b.c$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/k/d/b/c$e.class */
    public static final class View$OnClickListenerC8014e implements View.OnClickListener {
        public View$OnClickListenerC8014e() {
            C8009c.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC7988e abstractC7988e = (AbstractC7988e) ((C7994i) C8009c.this.m28990RA()).f57683a;
            if (abstractC7988e != null) {
                abstractC7988e.mo28981v();
            }
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: B */
    public void mo29000B(boolean z) {
        C8076j1 c8076j1 = m28991QA().f24932i;
        s1.z.c.l.d(c8076j1, "binding.viewEmptySearch");
        LinearLayout linearLayout = c8076j1.f24956a;
        s1.z.c.l.d(linearLayout, "binding.viewEmptySearch.root");
        C19286f.m13683U(linearLayout, z);
    }

    @Override // p193e.p194a.p294b.p345k.p351d.p352a.AbstractC8002d
    /* renamed from: F */
    public void mo28999F(int i) {
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        Integer valueOf = Integer.valueOf(i);
        AbstractC7988e abstractC7988e = (AbstractC7988e) ((C7994i) abstractC7987d).f57683a;
        if (abstractC7988e == null) {
            return;
        }
        if (valueOf == null || valueOf.intValue() != 0) {
            abstractC7988e.mo28988Y1();
            abstractC7988e.mo28998G1();
            abstractC7988e.mo29000B(false);
            abstractC7988e.mo28997H(true);
            return;
        }
        abstractC7988e.mo28987e6();
        abstractC7988e.mo28992O2();
        abstractC7988e.mo29000B(true);
        abstractC7988e.mo28997H(false);
        abstractC7988e.mo28982s3();
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: G1 */
    public void mo28998G1() {
        RecyclerView recyclerView = m28991QA().f24926c;
        s1.z.c.l.d(recyclerView, "binding.rvDistrictList");
        C19286f.m13684T(recyclerView);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: H */
    public void mo28997H(boolean z) {
        Group group = m28991QA().f24931h;
        s1.z.c.l.d(group, "binding.viewDistrictList");
        C19286f.m13683U(group, z);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: Jg */
    public void mo28996Jg(String str) {
        Drawable m13597Q;
        s1.z.c.l.e(str, "imageUrl");
        C8072i0 m28991QA = m28991QA();
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        AppCompatImageView appCompatImageView = m28991QA.f24924a;
        s1.z.c.l.d(appCompatImageView, "bannerImageView");
        C22234h mo8414k = ((C21853e) ComponentCallbacks2C22222c.m8446e(requireContext)).mo8414k();
        mo8414k.mo8420V(str);
        C21852d c21852d = (C21852d) mo8414k;
        Resources resources = requireContext.getResources();
        s1.z.c.l.d(resources, "context.resources");
        m13597Q = C19291g.m13597Q(resources, C3478R.C3479drawable.biz_default_banner_background, null);
        c21852d.mo8096l(m13597Q).m8427O(appCompatImageView);
        m28991QA.f24924a.setOnClickListener(new View$OnClickListenerC8013d(str));
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: K */
    public void mo28995K(String str) {
        s1.z.c.l.e(str, "searchHint");
        SearchView searchView = this.f24724j;
        if (searchView == null) {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
        searchView.setMaxWidth(Integer.MAX_VALUE);
        searchView.findViewById(C0032R.C0034id.search_plate).setBackgroundColor(0);
        EditText editText = (EditText) searchView.findViewById(C0032R.C0034id.search_src_text);
        editText.setHintTextColor(C19291g.m13612L(requireActivity(), C3478R.attr.tcx_textTertiary));
        s1.z.c.l.d(editText, "editText");
        editText.setHint(str);
        SearchView searchView2 = this.f24724j;
        if (searchView2 != null) {
            searchView2.setOnQueryTextListener(this);
        } else {
            s1.z.c.l.l("mSearchView");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p345k.p351d.p352a.AbstractC8002d
    /* renamed from: Kv */
    public void mo28994Kv(C7981b c7981b) {
        s1.z.c.l.e(c7981b, "district");
        AbstractC8117a abstractC8117a = this.f24723i;
        if (abstractC8117a != null) {
            abstractC8117a.mo28906y3(c7981b);
        } else {
            s1.z.c.l.l("govServicesFragmentListener");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: Nq */
    public void mo28993Nq(boolean z) {
        AppCompatImageView appCompatImageView = m28991QA().f24924a;
        s1.z.c.l.d(appCompatImageView, "binding.bannerImageView");
        C19286f.m13683U(appCompatImageView, z);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: O2 */
    public void mo28992O2() {
        LinearLayout linearLayout = m28991QA().f24933j;
        s1.z.c.l.d(linearLayout, "binding.viewLoading");
        C19286f.m13689O(linearLayout);
    }

    /* renamed from: QA */
    public final C8072i0 m28991QA() {
        return (C8072i0) this.f24725k.m34468b(this, f24717l[0]);
    }

    /* renamed from: RA */
    public final AbstractC7987d m28990RA() {
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d != null) {
            return abstractC7987d;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: X2 */
    public void mo28989X2(ArrayList<C8173b> arrayList) {
        s1.z.c.l.e(arrayList, "indexedList");
        C7999c c7999c = this.f24722h;
        if (c7999c != null) {
            s1.z.c.l.e(arrayList, "list");
            c7999c.f24698a = arrayList;
            c7999c.f24699b = arrayList;
            c7999c.notifyDataSetChanged();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: Y1 */
    public void mo28988Y1() {
        AppCompatTextView appCompatTextView = m28991QA().f24929f;
        s1.z.c.l.d(appCompatTextView, "binding.tvHeader");
        C19286f.m13684T(appCompatTextView);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: e6 */
    public void mo28987e6() {
        RecyclerView recyclerView = m28991QA().f24926c;
        s1.z.c.l.d(recyclerView, "binding.rvDistrictList");
        C19286f.m13689O(recyclerView);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: g4 */
    public void mo28986g4() {
        C8072i0 m28991QA = m28991QA();
        RecyclerView recyclerView = m28991QA.f24926c;
        s1.z.c.l.d(recyclerView, "rvDistrictList");
        recyclerView.setLayoutManager(new LinearLayoutManager(requireActivity()));
        C8182h c8182h = this.f24720f;
        if (c8182h == null) {
            s1.z.c.l.l("districtPresenter");
            throw null;
        }
        C8175d c8175d = this.f24721g;
        if (c8175d == null) {
            s1.z.c.l.l("districtIndexPresenter");
            throw null;
        }
        this.f24722h = new C7999c(c8182h, c8175d, this);
        RecyclerView recyclerView2 = m28991QA.f24926c;
        s1.z.c.l.d(recyclerView2, "rvDistrictList");
        recyclerView2.setAdapter(this.f24722h);
        RecyclerView recyclerView3 = m28991QA.f24926c;
        s1.z.c.l.d(recyclerView3, "rvDistrictList");
        recyclerView3.setNestedScrollingEnabled(false);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    public String getSource() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("source") : null;
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: o */
    public void mo28985o(String str) {
        s1.z.c.l.e(str, "title");
        h activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof h)) {
            lVar = null;
        }
        h hVar = lVar;
        if (hVar != null) {
            hVar.setSupportActionBar(m28991QA().f24928e);
            AbstractC25393a supportActionBar = hVar.getSupportActionBar();
            if (supportActionBar != null) {
                s1.z.c.l.d(supportActionBar, "this");
                supportActionBar.mo3542y(str);
                supportActionBar.mo3553n(true);
                supportActionBar.mo3552o(true);
            }
        }
        m28991QA().f24928e.setNavigationOnClickListener(new View$OnClickListenerC8014e());
    }

    @Override // p193e.p194a.p294b.p345k.p351d.p353b.AbstractC8017f
    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        super.onAttach(context);
        if (context instanceof AbstractC8117a) {
            this.f24723i = (AbstractC8117a) context;
            return;
        }
        throw new RuntimeException(context + " must implement GovServicesFragmentListener");
    }

    public void onCreate(Bundle bundle) {
        C8009c.super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuInflater menuInflater2;
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        if (((C7994i) abstractC7987d).f24682d > 0) {
            n3.r.a.l activity = getActivity();
            if (activity != null && (menuInflater2 = activity.getMenuInflater()) != null) {
                menuInflater2.inflate(C3478R.C3482menu.menu_search, menu);
            }
            MenuItem findItem = menu.findItem(C3478R.C3480id.actionSearch);
            s1.z.c.l.d(findItem, "mSearch");
            findItem.setVisible(true);
            View actionView = findItem.getActionView();
            Objects.requireNonNull(actionView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
            this.f24724j = (SearchView) actionView;
            AbstractC7987d abstractC7987d2 = this.f24719e;
            if (abstractC7987d2 == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            C7994i c7994i = (C7994i) abstractC7987d2;
            AbstractC7988e abstractC7988e = (AbstractC7988e) c7994i.f57683a;
            if (abstractC7988e != null) {
                String mo13768b = c7994i.f24685g.mo13768b(C3478R.string.biz_govt_search, new Object[0]);
                s1.z.c.l.d(mo13768b, "resourceProvider.getStri…R.string.biz_govt_search)");
                abstractC7988e.mo28995K(mo13768b);
            }
        }
        C8009c.super.onCreateOptionsMenu(menu, menuInflater);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.fragment_covid_relief_district_list, viewGroup, false);
    }

    public void onDestroyView() {
        C8009c.super.onDestroyView();
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d != null) {
            ((C7994i) abstractC7987d).f57683a = null;
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onDetach() {
        C8009c.super.onDetach();
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d != null) {
            ((AbstractC20574a) abstractC7987d).mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextChange(String str) {
        AbstractC7988e abstractC7988e;
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C7994i c7994i = (C7994i) abstractC7987d;
        if (str == null || (abstractC7988e = (AbstractC7988e) c7994i.f57683a) == null) {
            return true;
        }
        abstractC7988e.mo28979y(str);
        return true;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextSubmit(String str) {
        AbstractC7988e abstractC7988e;
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C7994i c7994i = (C7994i) abstractC7987d;
        if (str == null || (abstractC7988e = (AbstractC7988e) c7994i.f57683a) == null) {
            return true;
        }
        abstractC7988e.mo28979y(str);
        return true;
    }

    public void onResume() {
        C8009c.super.onResume();
        AbstractC7987d abstractC7987d = this.f24719e;
        String str = null;
        if (abstractC7987d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C7994i c7994i = (C7994i) abstractC7987d;
        String mo10938g = c7994i.f24690l.m10968f().mo10938g();
        if (mo10938g.length() > 0) {
            str = mo10938g;
        }
        if (str == null) {
            str = c7994i.f24685g.mo13768b(C3478R.string.biz_covid_directory, new Object[0]);
            s1.z.c.l.d(str, "resourceProvider.getStri…ring.biz_covid_directory)");
        }
        AbstractC7988e abstractC7988e = (AbstractC7988e) c7994i.f57683a;
        if (abstractC7988e == null) {
            return;
        }
        abstractC7988e.mo28985o(str);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8009c.super.onViewCreated(view, bundle);
        AbstractC7987d abstractC7987d = this.f24719e;
        if (abstractC7987d == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C7994i) abstractC7987d).mo9029Y0(this);
        m28991QA().f24925b.setOnClickListener(new View$OnClickListenerC8012c());
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: qy */
    public void mo28984qy(String str) {
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        C19291g.m13596Q0(str, requireContext);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: s2 */
    public void mo28983s2(String str) {
        s1.z.c.l.e(str, "text");
        AppCompatTextView appCompatTextView = m28991QA().f24929f;
        s1.z.c.l.d(appCompatTextView, "binding.tvHeader");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: s3 */
    public void mo28982s3() {
        AppCompatTextView appCompatTextView = m28991QA().f24929f;
        s1.z.c.l.d(appCompatTextView, "binding.tvHeader");
        C19286f.m13689O(appCompatTextView);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: v */
    public void mo28981v() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: w3 */
    public void mo28980w3() {
        LinearLayout linearLayout = m28991QA().f24933j;
        s1.z.c.l.d(linearLayout, "binding.viewLoading");
        C19286f.m13684T(linearLayout);
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: y */
    public void mo28979y(String str) {
        s1.z.c.l.e(str, "text");
        C7999c c7999c = this.f24722h;
        if (c7999c != null) {
            new C7999c.C8000a().filter(str);
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: y4 */
    public void mo28978y4() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p294b.p345k.p350c.AbstractC7988e
    /* renamed from: zp */
    public void mo28977zp(String str) {
        s1.z.c.l.e(str, "info");
        C8072i0 m28991QA = m28991QA();
        LinearLayout linearLayout = m28991QA.f24930g;
        s1.z.c.l.d(linearLayout, "updateInfo");
        C19286f.m13684T(linearLayout);
        AppCompatTextView appCompatTextView = m28991QA.f24927d;
        s1.z.c.l.d(appCompatTextView, "textLastUpdatedTime");
        appCompatTextView.setText(str);
    }
}
