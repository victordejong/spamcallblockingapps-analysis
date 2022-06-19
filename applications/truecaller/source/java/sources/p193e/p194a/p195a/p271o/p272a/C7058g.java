package p193e.p194a.p195a.p271o.p272a;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1059m3.C18194x;
import p193e.p194a.p1111o2.AbstractC18892a;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.d0.i;
import s1.d0.j;
import s1.s;
import s1.u.z;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u009f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\\\u0018�� e2\u00020\u00012\u00020\u0002:\u0001RB\u0007¢\u0006\u0004\bd\u0010\u001fJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u001fJ%\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00050#H\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0005H\u0016¢\u0006\u0004\b'\u0010\u001fJ\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\u001fJ\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u001fJ\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020!H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u001fJ\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\u001fR\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R(\u0010C\u001a\u00020;8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b<\u0010=\u0012\u0004\bB\u0010\u001f\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010K\u001a\u00020D8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001d\u0010P\u001a\u00020L8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010M\u001a\u0004\bN\u0010OR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u0016\u0010[\u001a\u00020Y8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010ZR\u0016\u0010_\u001a\u00020\\8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010c\u001a\u0004\u0018\u00010`8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010b¨\u0006f"}, d2 = {"Le/a/a/o/a/g;", "Landroidx/fragment/app/Fragment;", "Le/a/a/o/a/i;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onPrepareOptionsMenu", "(Landroid/view/Menu;)V", "onDestroyView", "()V", "Lc", "", "text", "Lkotlin/Function0;", "confirmCallback", "Ep", "(Ljava/lang/String;Ls1/z/b/a;)V", "C", "g", "e", "title", "T0", "(Ljava/lang/String;)V", "u1", "U2", "Le/a/o2/f;", "f", "Le/a/o2/f;", "callRecordingsAdapter", "Le/a/a/o/a/h;", "a", "Le/a/a/o/a/h;", "PA", "()Le/a/a/o/a/h;", "setPresenter", "(Le/a/a/o/a/h;)V", "presenter", "Le/a/l4/c;", AbstractC2405c.f7629a, "Le/a/l4/c;", "getAvailabilityManager", "()Le/a/l4/c;", "setAvailabilityManager", "(Le/a/l4/c;)V", "getAvailabilityManager$annotations", "availabilityManager", "Le/a/p5/c;", "d", "Le/a/p5/c;", "getClock", "()Le/a/p5/c;", "setClock", "(Le/a/p5/c;)V", "clock", "Le/a/m3/x;", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/x;", "binding", "Le/a/a/o/a/d;", C22021b.f61237c, "Le/a/a/o/a/d;", "getItemsPresenter", "()Le/a/a/o/a/d;", "setItemsPresenter", "(Le/a/a/o/a/d;)V", "itemsPresenter", "Le/a/o2/a;", "Le/a/o2/a;", "callRecordingsDelegate", "e/a/a/o/a/g$c", "i", "Le/a/a/o/a/g$c;", "actionModeCallback", "Ln3/b/e/a;", "h", "Ln3/b/e/a;", "actionMode", "<init>", "k", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.o.a.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g.class */
public final class C7058g extends Fragment implements AbstractC7068i {

    /* renamed from: j */
    public static final /* synthetic */ l[] f22763j = {C22128a.m8621g0(C7058g.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentCallRecStorageManagerBinding;", 0)};

    /* renamed from: k */
    public static final C7060b f22764k = new C7060b(null);
    @Inject

    /* renamed from: a */
    public AbstractC7067h f22765a;
    @Inject

    /* renamed from: b */
    public AbstractC7055d f22766b;
    @Inject

    /* renamed from: c */
    public AbstractC17405c f22767c;
    @Inject

    /* renamed from: d */
    public AbstractC19222c f22768d;

    /* renamed from: e */
    public AbstractC18892a f22769e;

    /* renamed from: f */
    public C18898f f22770f;

    /* renamed from: h */
    public AbstractC25450a f22772h;

    /* renamed from: g */
    public final ViewBindingProperty f22771g = new C19350a(new C7059a());

    /* renamed from: i */
    public final C7061c f22773i = new C7061c();

    /* renamed from: e.a.a.o.a.g$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$a.class */
    public static final class C7059a extends m implements s1.z.b.l<C7058g, C18194x> {
        public C7059a() {
            super(1);
        }

        /* renamed from: d */
        public Object m30209d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362609;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C2752R.C2754id.callRecList);
            if (recyclerView != null) {
                i = 2131366512;
                MaterialToolbar findViewById = requireView.findViewById(2131366512);
                if (findViewById != null) {
                    return new C18194x((ConstraintLayout) requireView, recyclerView, findViewById);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.o.a.g$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$b.class */
    public static final class C7060b {
        public C7060b(f fVar) {
        }
    }

    /* renamed from: e.a.a.o.a.g$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$c.class */
    public static final class C7061c implements AbstractC25450a.AbstractC25451a {
        public C7061c() {
            C7058g.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            s1.z.c.l.e(menu, "menu");
            abstractC25450a.mo3516f().inflate(C2752R.C2756menu.delete_and_select_menu, menu);
            C7058g.this.f22772h = abstractC25450a;
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: gi */
        public boolean mo3502gi(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            s1.z.c.l.e(menu, "menu");
            i j = j.j(0, menu.size());
            ArrayList<MenuItem> arrayList = new ArrayList(C25225a.m4004J(j, 10));
            z it = j.iterator();
            while (it.hasNext()) {
                arrayList.add(menu.getItem(it.a()));
            }
            for (MenuItem menuItem : arrayList) {
                s1.z.c.l.d(menuItem, "it");
                menuItem.setVisible(C7058g.this.m30210PA().mo30183u(menuItem.getItemId()));
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            s1.z.c.l.e(menuItem, "item");
            C7058g.this.m30210PA().mo30188d(menuItem.getItemId());
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            C7058g.this.m30210PA().mo30180z();
            C7058g.this.f22772h = null;
        }
    }

    /* renamed from: e.a.a.o.a.g$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$d.class */
    public static final class View$OnClickListenerC7062d implements View.OnClickListener {
        public View$OnClickListenerC7062d() {
            C7058g.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7058g.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.o.a.g$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$e.class */
    public static final class C7063e extends m implements s1.z.b.l<View, C7051a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7063e() {
            super(1);
            C7058g.this = r4;
        }

        /* renamed from: d */
        public Object m30208d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            C7058g c7058g = C7058g.this;
            C18898f c18898f = c7058g.f22770f;
            if (c18898f == null) {
                s1.z.c.l.l("callRecordingsAdapter");
                throw null;
            }
            AbstractC17405c abstractC17405c = c7058g.f22767c;
            if (abstractC17405c == null) {
                s1.z.c.l.l("availabilityManager");
                throw null;
            }
            AbstractC19222c abstractC19222c = c7058g.f22768d;
            if (abstractC19222c != null) {
                return new C7051a(view, c18898f, abstractC17405c, abstractC19222c);
            }
            s1.z.c.l.l("clock");
            throw null;
        }
    }

    /* renamed from: e.a.a.o.a.g$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$f.class */
    public static final class C7064f extends m implements s1.z.b.l<C7051a, C7051a> {

        /* renamed from: b */
        public static final C7064f f22777b = new C7064f();

        public C7064f() {
            super(1);
        }

        /* renamed from: d */
        public Object m30207d(Object obj) {
            C7051a c7051a = (C7051a) obj;
            s1.z.c.l.e(c7051a, "it");
            return c7051a;
        }
    }

    /* renamed from: e.a.a.o.a.g$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$g.class */
    public static final class DialogInterface$OnClickListenerC7065g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f22778a;

        public DialogInterface$OnClickListenerC7065g(String str, a aVar) {
            this.f22778a = aVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f22778a.invoke();
        }
    }

    /* renamed from: e.a.a.o.a.g$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/a/g$h.class */
    public static final class DialogInterface$OnClickListenerC7066h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC7066h f22779a = new DialogInterface$OnClickListenerC7066h();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: C */
    public void mo30206C() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: Ep */
    public void mo30205Ep(String str, a<s> aVar) {
        s1.z.c.l.e(str, "text");
        s1.z.c.l.e(aVar, "confirmCallback");
        Context context = getContext();
        if (context != null) {
            g$a g_a = new g$a(context);
            g_a.f70854a.f156f = str;
            g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC7065g(str, aVar));
            g_a.m3662g(2131887867, DialogInterface$OnClickListenerC7066h.f22779a);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: Lc */
    public void mo30204Lc() {
        C18898f c18898f = this.f22770f;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("callRecordingsAdapter");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C18194x m30211OA() {
        return (C18194x) this.f22771g.m34468b(this, f22763j[0]);
    }

    /* renamed from: PA */
    public final AbstractC7067h m30210PA() {
        AbstractC7067h abstractC7067h = this.f22765a;
        if (abstractC7067h != null) {
            return abstractC7067h;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: T0 */
    public void mo30203T0(String str) {
        s1.z.c.l.e(str, "title");
        AbstractC25450a abstractC25450a = this.f22772h;
        if (abstractC25450a != null) {
            abstractC25450a.mo3507o(str);
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: U2 */
    public void mo30202U2() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: e */
    public void mo30201e() {
        AbstractC25450a abstractC25450a = this.f22772h;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: g */
    public void mo30200g() {
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        activity.startSupportActionMode(this.f22773i);
    }

    public void onCreate(Bundle bundle) {
        C7058g.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C7077m c7077m = new C7077m(mo10154s, null);
        this.f22765a = (AbstractC7067h) c7077m.f22808g.get();
        this.f22766b = (AbstractC7055d) c7077m.f22810i.get();
        this.f22767c = (AbstractC17405c) c7077m.f22812k.get();
        AbstractC19222c mo11637k = c7077m.f22802a.mo11637k();
        Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
        this.f22768d = mo11637k;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C7058g.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.delete_all_menu, menu);
        int m13612L = C19291g.m13612L(requireContext(), 2130969966);
        MenuItem findItem = menu.findItem(C2752R.C2754id.action_delete_all);
        s1.z.c.l.d(findItem, "item");
        C19286f.m13674e(findItem, Integer.valueOf(m13612L), Integer.valueOf(m13612L));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_call_rec_storage_manager, viewGroup, false);
    }

    public void onDestroyView() {
        C7058g.super.onDestroyView();
        AbstractC7067h abstractC7067h = this.f22765a;
        if (abstractC7067h != null) {
            abstractC7067h.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        s1.z.c.l.e(menuItem, "item");
        if (2131361958 == menuItem.getItemId()) {
            AbstractC7067h abstractC7067h = this.f22765a;
            if (abstractC7067h != null) {
                abstractC7067h.mo30184s1();
                return true;
            }
            s1.z.c.l.l("presenter");
            throw null;
        }
        return C7058g.super.onOptionsItemSelected(menuItem);
    }

    public void onPrepareOptionsMenu(Menu menu) {
        s1.z.c.l.e(menu, "menu");
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            s1.z.c.l.d(item, "menuItem");
            if (item.getItemId() == 2131361958) {
                AbstractC7067h abstractC7067h = this.f22765a;
                if (abstractC7067h == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                item.setVisible(abstractC7067h.mo30186h0());
            }
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7058g.super.onViewCreated(view, bundle);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(m30211OA().f51445b);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        m30211OA().f51445b.setNavigationOnClickListener(new View$OnClickListenerC7062d());
        AbstractC7055d abstractC7055d = this.f22766b;
        if (abstractC7055d == null) {
            s1.z.c.l.l("itemsPresenter");
            throw null;
        }
        C18910r c18910r = new C18910r(abstractC7055d, C2752R.layout.list_item_call_recording, new C7063e(), C7064f.f22777b);
        this.f22769e = c18910r;
        if (c18910r == null) {
            s1.z.c.l.l("callRecordingsDelegate");
            throw null;
        }
        this.f22770f = new C18898f(c18910r);
        RecyclerView recyclerView = m30211OA().f51444a;
        s1.z.c.l.d(recyclerView, "binding.callRecList");
        C18898f c18898f = this.f22770f;
        if (c18898f == null) {
            s1.z.c.l.l("callRecordingsAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC7067h abstractC7067h = this.f22765a;
        if (abstractC7067h == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7067h.mo9029Y0(this);
        setHasOptionsMenu(true);
    }

    @Override // p193e.p194a.p195a.p271o.p272a.AbstractC7068i
    /* renamed from: u1 */
    public void mo30199u1() {
        AbstractC25450a abstractC25450a = this.f22772h;
        if (abstractC25450a != null) {
            abstractC25450a.mo3513i();
        }
    }
}
