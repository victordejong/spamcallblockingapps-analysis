package p193e.p194a.p195a.p271o.p274s;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.mediamanager.MediaManagerActivity;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18165i0;
import p193e.p194a.p1111o2.AbstractC18892a;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� >2\u00020\u00012\u00020\u0002:\u00010B\u0007¢\u0006\u0004\b=\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001d\u0010<\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;¨\u0006?"}, d2 = {"Le/a/a/o/s/f;", "Landroidx/fragment/app/Fragment;", "Le/a/a/o/s/k;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "()V", "onDestroyView", "q5", "Lcom/truecaller/messaging/data/types/Conversation;", "conversation", "Px", "(Lcom/truecaller/messaging/data/types/Conversation;)V", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Le/a/a/o/s/j;", "a", "Le/a/a/o/s/j;", "getPresenter", "()Le/a/a/o/s/j;", "setPresenter", "(Le/a/a/o/s/j;)V", "presenter", "Le/a/o2/f;", "d", "Le/a/o2/f;", "mediaAdapter", "Le/a/o2/a;", AbstractC2405c.f7629a, "Le/a/o2/a;", "mediaDelegate", "Le/a/a/o/s/b;", C22021b.f61237c, "Le/a/a/o/s/b;", "getItemsPresenter", "()Le/a/a/o/s/b;", "setItemsPresenter", "(Le/a/a/o/s/b;)V", "itemsPresenter", "Le/a/m3/i0;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/i0;", "binding", "<init>", "g", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.o.s.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f.class */
public final class C7136f extends Fragment implements AbstractC7148k {

    /* renamed from: f */
    public static final /* synthetic */ l[] f22937f = {C22128a.m8621g0(C7136f.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentMediaStorageManagerBinding;", 0)};

    /* renamed from: g */
    public static final C7138b f22938g = new C7138b(null);
    @Inject

    /* renamed from: a */
    public AbstractC7147j f22939a;
    @Inject

    /* renamed from: b */
    public AbstractC7132b f22940b;

    /* renamed from: c */
    public AbstractC18892a f22941c;

    /* renamed from: d */
    public C18898f f22942d;

    /* renamed from: e */
    public final ViewBindingProperty f22943e = new C19350a(new C7137a());

    /* renamed from: e.a.a.o.s.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$a.class */
    public static final class C7137a extends m implements s1.z.b.l<C7136f, C18165i0> {
        public C7137a() {
            super(1);
        }

        /* renamed from: d */
        public Object m30072d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131364769;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C2752R.C2754id.mediaList);
            if (recyclerView != null) {
                i = 2131366512;
                MaterialToolbar findViewById = requireView.findViewById(2131366512);
                if (findViewById != null) {
                    return new C18165i0((ConstraintLayout) requireView, recyclerView, findViewById);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.o.s.f$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$b.class */
    public static final class C7138b {
        public C7138b(f fVar) {
        }
    }

    /* renamed from: e.a.a.o.s.f$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$c.class */
    public static final class C7139c implements SearchView.AbstractC0071l {
        public C7139c() {
            C7136f.this = r4;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextChange(String str) {
            AbstractC7147j abstractC7147j = C7136f.this.f22939a;
            if (abstractC7147j != null) {
                abstractC7147j.mo30067C7(str);
                return true;
            }
            s1.z.c.l.l("presenter");
            throw null;
        }

        @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    /* renamed from: e.a.a.o.s.f$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$d.class */
    public static final class MenuItem$OnActionExpandListenerC7140d implements MenuItem.OnActionExpandListener {

        /* renamed from: a */
        public final /* synthetic */ SearchView f22945a;

        public MenuItem$OnActionExpandListenerC7140d(SearchView searchView) {
            this.f22945a = searchView;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            s1.z.c.l.e(menuItem, "item");
            this.f22945a.mo3444b();
            return true;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            s1.z.c.l.e(menuItem, "item");
            this.f22945a.mo3443c();
            return true;
        }
    }

    /* renamed from: e.a.a.o.s.f$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$e.class */
    public static final class View$OnClickListenerC7141e implements View.OnClickListener {
        public View$OnClickListenerC7141e() {
            C7136f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C7136f.this.requireActivity().onBackPressed();
        }
    }

    /* renamed from: e.a.a.o.s.f$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$f.class */
    public static final class C7142f extends m implements s1.z.b.l<View, C7135e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7142f() {
            super(1);
            C7136f.this = r4;
        }

        /* renamed from: d */
        public Object m30071d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, ViewAction.VIEW);
            C18898f c18898f = C7136f.this.f22942d;
            if (c18898f != null) {
                return new C7135e(view, c18898f);
            }
            s1.z.c.l.l("mediaAdapter");
            throw null;
        }
    }

    /* renamed from: e.a.a.o.s.f$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/o/s/f$g.class */
    public static final class C7143g extends m implements s1.z.b.l<C7135e, C7135e> {

        /* renamed from: b */
        public static final C7143g f22948b = new C7143g();

        public C7143g() {
            super(1);
        }

        /* renamed from: d */
        public Object m30070d(Object obj) {
            C7135e c7135e = (C7135e) obj;
            s1.z.c.l.e(c7135e, "it");
            return c7135e;
        }
    }

    /* renamed from: OA */
    public final C18165i0 m30073OA() {
        return (C18165i0) this.f22943e.m34468b(this, f22937f[0]);
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7148k
    /* renamed from: Px */
    public void mo30069Px(Conversation conversation) {
        s1.z.c.l.e(conversation, "conversation");
        MediaManagerActivity.C4224a c4224a = MediaManagerActivity.f13548a;
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        startActivity(c4224a.m34972a(requireContext, conversation, "storageManager", true));
    }

    public void onCreate(Bundle bundle) {
        C7136f.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C7144g c7144g = new C7144g();
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C7129a c7129a = new C7129a(c7144g, mo10154s, null);
        this.f22939a = (AbstractC7147j) c7129a.f22922e.get();
        this.f22940b = (AbstractC7132b) c7129a.f22924g.get();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        s1.z.c.l.e(menu, "menu");
        s1.z.c.l.e(menuInflater, "inflater");
        C7136f.super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(C2752R.C2756menu.media_storage_manager, menu);
        MenuItem findItem = menu.findItem(2131362015);
        if (findItem != null) {
            View actionView = findItem.getActionView();
            View view = actionView;
            if (!(actionView instanceof SearchView)) {
                view = null;
            }
            SearchView searchView = (SearchView) view;
            if (searchView == null) {
                return;
            }
            TextView textView = (TextView) searchView.findViewById(2131365593);
            if (textView != null) {
                textView.setHintTextColor(C19291g.m13612L(requireContext(), 2130970256));
                if (Build.VERSION.SDK_INT >= 29) {
                    textView.setTextCursorDrawable((Drawable) null);
                }
            }
            searchView.setOnQueryTextListener(new C7139c());
            findItem.setOnActionExpandListener(new MenuItem$OnActionExpandListenerC7140d(searchView));
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_media_storage_manager, viewGroup, false);
    }

    public void onDestroyView() {
        C7136f.super.onDestroyView();
        AbstractC7147j abstractC7147j = this.f22939a;
        if (abstractC7147j != null) {
            abstractC7147j.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C7136f.super.onResume();
        AbstractC7147j abstractC7147j = this.f22939a;
        if (abstractC7147j != null) {
            abstractC7147j.mo30065k9();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7136f.super.onViewCreated(view, bundle);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(m30073OA().f51263b);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3552o(true);
        }
        m30073OA().f51263b.setNavigationOnClickListener(new View$OnClickListenerC7141e());
        AbstractC7132b abstractC7132b = this.f22940b;
        if (abstractC7132b == null) {
            s1.z.c.l.l("itemsPresenter");
            throw null;
        }
        C18910r c18910r = new C18910r(abstractC7132b, C2752R.layout.item_conversation, new C7142f(), C7143g.f22948b);
        this.f22941c = c18910r;
        if (c18910r == null) {
            s1.z.c.l.l("mediaDelegate");
            throw null;
        }
        this.f22942d = new C18898f(c18910r);
        RecyclerView recyclerView = m30073OA().f51262a;
        s1.z.c.l.d(recyclerView, "binding.mediaList");
        C18898f c18898f = this.f22942d;
        if (c18898f == null) {
            s1.z.c.l.l("mediaAdapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC7147j abstractC7147j = this.f22939a;
        if (abstractC7147j == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC7147j.mo9029Y0(this);
        setHasOptionsMenu(true);
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7148k
    /* renamed from: q5 */
    public void mo30068q5() {
        C18898f c18898f = this.f22942d;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("mediaAdapter");
            throw null;
        }
    }
}
