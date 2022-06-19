package p193e.p194a.p195a.p271o.p273r;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
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
import com.google.android.material.card.MaterialCardView;
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
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1744b0.p1745a.C25595i;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1059m3.C18161g0;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p682e.p684b.p686b.AbstractC12891i;
import p193e.p194a.p682e.p684b.p686b.AbstractC12892j;
import p193e.p194a.p682e.p684b.p686b.C12894l;
import s1.a.l;
import s1.d0.i;
import s1.d0.j;
import s1.s;
import s1.u.z;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008f\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001A\b\u0007\u0018�� P2\u00020\u00012\u00020\u0002:\u0001QB\u0007¢\u0006\u0004\bO\u0010\u001dJ-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010\u001dJ\u000f\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b \u0010\u001dJ\u000f\u0010!\u001a\u00020\rH\u0016¢\u0006\u0004\b!\u0010\u001dJ\u000f\u0010\"\u001a\u00020\rH\u0016¢\u0006\u0004\b\"\u0010\u001dJ\u000f\u0010#\u001a\u00020\rH\u0016¢\u0006\u0004\b#\u0010\u001dJ\u0017\u0010&\u001a\u00020\r2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\rH\u0016¢\u0006\u0004\b(\u0010\u001dJ%\u0010-\u001a\u00020\r2\u0006\u0010*\u001a\u00020)2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\r0+H\u0016¢\u0006\u0004\b-\u0010.R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0016\u00109\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u00108R\"\u0010@\u001a\u00020:8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b#\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u001d\u0010J\u001a\u00020E8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR\u0018\u0010N\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010M¨\u0006R"}, d2 = {"Le/a/a/o/r/e;", "Landroidx/fragment/app/Fragment;", "Le/a/a/o/r/h;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onPrepareOptionsMenu", "(Landroid/view/Menu;)V", "onResume", "()V", "onDestroyView", "c0", "U2", "C", "g", "e", "", "title", "T0", "(Ljava/lang/String;)V", "u1", "", "args", "Lkotlin/Function0;", "callback", "He", "(ILs1/z/b/a;)V", "Le/a/e/b/b/i;", "f", "Le/a/e/b/b/i;", "getItemPresenter", "()Le/a/e/b/b/i;", "setItemPresenter", "(Le/a/e/b/b/i;)V", "itemPresenter", "Le/a/o2/f;", "Le/a/o2/f;", "adapter", "Le/a/a/o/r/g;", "Le/a/a/o/r/g;", "RA", "()Le/a/a/o/r/g;", "setPresenter", "(Le/a/a/o/r/g;)V", "presenter", "e/a/a/o/r/e$c", "j", "Le/a/a/o/r/e$c;", "actionModeCallback", "Le/a/m3/g0;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/m3/g0;", "binding", "Ln3/b/e/a;", "i", "Ln3/b/e/a;", "actionMode", "<init>", "l", C22021b.f61237c, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.o.r.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e.class */
public final class C7113e extends AbstractC7111c implements AbstractC7123h {

    /* renamed from: k */
    public static final /* synthetic */ l[] f22890k = {C22128a.m8621g0(C7113e.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentLangPackStorageManagerBinding;", 0)};

    /* renamed from: l */
    public static final C7115b f22891l = new C7115b(null);
    @Inject

    /* renamed from: e */
    public AbstractC7122g f22892e;
    @Inject

    /* renamed from: f */
    public AbstractC12891i f22893f;

    /* renamed from: g */
    public C18898f f22894g;

    /* renamed from: i */
    public AbstractC25450a f22896i;

    /* renamed from: h */
    public final ViewBindingProperty f22895h = new C19350a(new C7114a());

    /* renamed from: j */
    public final C7116c f22897j = new C7116c();

    /* renamed from: e.a.a.o.r.e$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$a.class */
    public static final class C7114a extends m implements s1.z.b.l<C7113e, C18161g0> {
        public C7114a() {
            super(1);
        }

        /* renamed from: d */
        public Object m30103d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131364545;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C2752R.C2754id.langPackList);
            if (recyclerView != null) {
                i = 2131365834;
                MaterialCardView findViewById = requireView.findViewById(C2752R.C2754id.settingsTranslationFilesContainer);
                if (findViewById != null) {
                    i = 2131366512;
                    MaterialToolbar findViewById2 = requireView.findViewById(2131366512);
                    if (findViewById2 != null) {
                        return new C18161g0((ConstraintLayout) requireView, recyclerView, findViewById, findViewById2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.o.r.e$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$b.class */
    public static final class C7115b {
        public C7115b(f fVar) {
        }
    }

    /* renamed from: e.a.a.o.r.e$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$c.class */
    public static final class C7116c implements AbstractC25450a.AbstractC25451a {
        public C7116c() {
            C7113e.this = r4;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: c9 */
        public boolean mo3503c9(AbstractC25450a abstractC25450a, Menu menu) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            s1.z.c.l.e(menu, "menu");
            abstractC25450a.mo3516f().inflate(C2752R.C2756menu.delete_and_select_menu, menu);
            C7113e.this.f22896i = abstractC25450a;
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
                menuItem.setVisible(C7113e.this.m30104RA().mo30086u(menuItem.getItemId()));
            }
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: sd */
        public boolean mo3501sd(AbstractC25450a abstractC25450a, MenuItem menuItem) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            s1.z.c.l.e(menuItem, "item");
            C7113e.this.m30104RA().mo30090d(menuItem.getItemId());
            return true;
        }

        @Override // p1727n3.p1734b.p1741e.AbstractC25450a.AbstractC25451a
        /* renamed from: zn */
        public void mo3500zn(AbstractC25450a abstractC25450a) {
            s1.z.c.l.e(abstractC25450a, AnalyticsConstants.MODE);
            C7113e.this.m30104RA().mo30085z();
            C7113e.this.f22896i = null;
        }
    }

    /* renamed from: e.a.a.o.r.e$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$d.class */
    public static final class View$OnClickListenerC7117d implements View.OnClickListener {
        public View$OnClickListenerC7117d() {
            C7113e.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7113e.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.o.r.e$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$e.class */
    public static final class C7118e extends m implements s1.z.b.l<View, C12894l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7118e() {
            super(1);
            C7113e.this = r4;
        }

        /* renamed from: d */
        public Object m30102d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "v");
            C18898f c18898f = C7113e.this.f22894g;
            if (c18898f != null) {
                return new C12894l(view, c18898f);
            }
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.o.r.e$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$f.class */
    public static final class C7119f extends m implements s1.z.b.l<C12894l, AbstractC12892j> {

        /* renamed from: b */
        public static final C7119f f22901b = new C7119f();

        public C7119f() {
            super(1);
        }

        /* renamed from: d */
        public Object m30101d(Object obj) {
            C12894l c12894l = (C12894l) obj;
            s1.z.c.l.e(c12894l, "it");
            return c12894l;
        }
    }

    /* renamed from: e.a.a.o.r.e$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/r/e$g.class */
    public static final class DialogInterface$OnClickListenerC7120g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f22902a;

        public DialogInterface$OnClickListenerC7120g(a aVar) {
            this.f22902a = aVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            this.f22902a.invoke();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: C */
    public void mo30100C() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: He */
    public void mo30099He(int i, a<s> aVar) {
        s1.z.c.l.e(aVar, "callback");
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(getContext()).setPositiveButton(C2752R.string.btn_delete, new DialogInterface$OnClickListenerC7120g(aVar));
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        positiveButton.setMessage(requireContext.getResources().getQuantityString(C2752R.plurals.ManageStorageDeleteLangPacks, i, Integer.valueOf(i))).setNegativeButton(2131887867, (DialogInterface.OnClickListener) null).create().show();
    }

    /* renamed from: QA */
    public final C18161g0 m30105QA() {
        return (C18161g0) this.f22895h.m34468b(this, f22890k[0]);
    }

    /* renamed from: RA */
    public final AbstractC7122g m30104RA() {
        AbstractC7122g abstractC7122g = this.f22892e;
        if (abstractC7122g != null) {
            return abstractC7122g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: T0 */
    public void mo30098T0(String str) {
        s1.z.c.l.e(str, "title");
        AbstractC25450a abstractC25450a = this.f22896i;
        if (abstractC25450a != null) {
            abstractC25450a.mo3507o(str);
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: U2 */
    public void mo30097U2() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: c0 */
    public void mo30096c0() {
        C18898f c18898f = this.f22894g;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: e */
    public void mo30095e() {
        AbstractC25450a abstractC25450a = this.f22896i;
        if (abstractC25450a != null) {
            abstractC25450a.mo3519c();
        }
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: g */
    public void mo30094g() {
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        activity.startSupportActionMode(this.f22897j);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C7113e.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.delete_all_menu, menu);
        int m13612L = C19291g.m13612L(requireContext(), 2130969966);
        MenuItem findItem = menu.findItem(C2752R.C2754id.action_delete_all);
        s1.z.c.l.d(findItem, "item");
        C19286f.m13674e(findItem, Integer.valueOf(m13612L), Integer.valueOf(m13612L));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_lang_pack_storage_manager, viewGroup, false);
    }

    public void onDestroyView() {
        C7113e.super.onDestroyView();
        AbstractC7122g abstractC7122g = this.f22892e;
        if (abstractC7122g != null) {
            abstractC7122g.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        s1.z.c.l.e(menuItem, "item");
        if (2131361958 == menuItem.getItemId()) {
            AbstractC7122g abstractC7122g = this.f22892e;
            if (abstractC7122g != null) {
                abstractC7122g.mo30087s1();
                return true;
            }
            s1.z.c.l.l("presenter");
            throw null;
        }
        return C7113e.super.onOptionsItemSelected(menuItem);
    }

    public void onPrepareOptionsMenu(Menu menu) {
        s1.z.c.l.e(menu, "menu");
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menu.getItem(i);
            s1.z.c.l.d(item, "menuItem");
            if (item.getItemId() == 2131361958) {
                AbstractC7122g abstractC7122g = this.f22892e;
                if (abstractC7122g == null) {
                    s1.z.c.l.l("presenter");
                    throw null;
                }
                item.setVisible(abstractC7122g.mo30089h0());
            }
        }
    }

    public void onResume() {
        C7113e.super.onResume();
        AbstractC7122g abstractC7122g = this.f22892e;
        if (abstractC7122g != null) {
            abstractC7122g.mo30088je();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7113e.super.onViewCreated(view, bundle);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(m30105QA().f51236b);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        m30105QA().f51236b.setNavigationOnClickListener(new View$OnClickListenerC7117d());
        AbstractC12891i abstractC12891i = this.f22893f;
        if (abstractC12891i == null) {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
        C18898f c18898f = new C18898f(new C18910r(abstractC12891i, C2752R.layout.downloaded_language_item, new C7118e(), C7119f.f22901b));
        c18898f.setHasStableIds(true);
        this.f22894g = c18898f;
        C25595i c25595i = new C25595i(requireContext(), 1);
        Drawable drawable = c25595i.f71674a;
        if (drawable != null) {
            drawable.setTint(C19291g.m13612L(requireContext(), 2130970072));
        }
        m30105QA().f51235a.addItemDecoration(c25595i);
        RecyclerView recyclerView = m30105QA().f51235a;
        s1.z.c.l.d(recyclerView, "binding.langPackList");
        C18898f c18898f2 = this.f22894g;
        if (c18898f2 == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f2);
        AbstractC7122g abstractC7122g = this.f22892e;
        if (abstractC7122g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7122g.mo9029Y0(this);
        setHasOptionsMenu(true);
    }

    @Override // p193e.p194a.p195a.p271o.p273r.AbstractC7123h
    /* renamed from: u1 */
    public void mo30093u1() {
        AbstractC25450a abstractC25450a = this.f22896i;
        if (abstractC25450a != null) {
            abstractC25450a.mo3513i();
        }
    }
}
