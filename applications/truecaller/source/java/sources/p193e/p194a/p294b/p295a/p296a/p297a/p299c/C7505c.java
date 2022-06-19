package p193e.p194a.p294b.p295a.p296a.p297a.p299c;

import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p294b.p295a.p296a.p306d.p307d.C7638b;
import p193e.p194a.p294b.p295a.p312c.p313a.p315c0.C7699b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8101s0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p802e0.p803u.C14512g;
import s1.a.l;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� D2\u00020\u0001:\u0002?5B\u0007¢\u0006\u0004\bB\u0010CJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u00020\u00118F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R$\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001d\u0010+\u001a\u00020'8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0013\u001a\u0004\b)\u0010*R\"\u00103\u001a\u00020,8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001d\u0010=\u001a\u0002088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006E"}, d2 = {"Le/a/b/a/a/a/c/c;", "Landroidx/fragment/app/Fragment;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/f/a/i;", AbstractC2405c.f7629a, "Ls1/g;", "getGlideRequestManager", "()Le/f/a/i;", "glideRequestManager", "Le/a/b/a/a/a/c/c$e;", "f", "Le/a/b/a/a/a/c/c$e;", "getInteractionListener", "()Le/a/b/a/a/a/c/c$e;", "setInteractionListener", "(Le/a/b/a/a/a/c/c$e;)V", "interactionListener", "Le/a/b/a/a/a/c/h;", "g", "Le/a/b/a/a/a/c/h;", "getTagSaveListener", "()Le/a/b/a/a/a/c/h;", "setTagSaveListener", "(Le/a/b/a/a/a/c/h;)V", "tagSaveListener", "Le/a/b/a/a/d/d/b;", C22021b.f61237c, "PA", "()Le/a/b/a/a/d/d/b;", "tagViewModel", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/g5/e0/u/g;", "e", "Le/a/g5/e0/u/g;", "tagSearchAdapter", "Le/a/b/m/s0;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/s0;", "binding", "Le/a/b/a/c/a/c0/b;", "d", "Le/a/b/a/c/a/c0/b;", "categoryAdapter", "<init>", "()V", "j", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.c.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c.class */
public final class C7505c extends Fragment {

    /* renamed from: i */
    public static final /* synthetic */ l[] f23792i = {C22128a.m8621g0(C7505c.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/FragmentTagPickBinding;", 0)};

    /* renamed from: j */
    public static final C7509d f23793j = new C7509d(null);
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f23794a;

    /* renamed from: d */
    public C7699b f23797d;

    /* renamed from: e */
    public C14512g f23798e;

    /* renamed from: f */
    public AbstractC7510e f23799f;

    /* renamed from: g */
    public AbstractC7518h f23800g;

    /* renamed from: b */
    public final g f23795b = MediaSessionCompat.m43278P(this, d0.a(C7638b.class), new C7508c(new C7507b(this)), new C7513h());

    /* renamed from: c */
    public final g f23796c = C25225a.m3978P1(new C7511f());

    /* renamed from: h */
    public final ViewBindingProperty f23801h = new C19350a(new C7506a());

    /* renamed from: e.a.b.a.a.a.c.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$a.class */
    public static final class C7506a extends m implements s1.z.b.l<C7505c, C8101s0> {
        public C7506a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29545d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.categoryGrid;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
            if (recyclerView != null) {
                i = C3478R.C3480id.categoryGridLayout;
                ScrollView scrollView = (ScrollView) requireView.findViewById(i);
                if (scrollView != null) {
                    i = C3478R.C3480id.categoryList;
                    RecyclerView recyclerView2 = (RecyclerView) requireView.findViewById(i);
                    if (recyclerView2 != null) {
                        i = C3478R.C3480id.lblEnterBizCategory;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            i = C3478R.C3480id.noResult;
                            TextView textView2 = (TextView) requireView.findViewById(i);
                            if (textView2 != null) {
                                i = C3478R.C3480id.noResultIcon;
                                ImageView imageView = (ImageView) requireView.findViewById(i);
                                if (imageView != null) {
                                    i = C3478R.C3480id.placeHolder;
                                    View findViewById = requireView.findViewById(i);
                                    if (findViewById != null) {
                                        i = C3478R.C3480id.searchView;
                                        SearchView searchView = (SearchView) requireView.findViewById(i);
                                        if (searchView != null) {
                                            return new C8101s0((ConstraintLayout) requireView, recyclerView, scrollView, recyclerView2, textView, textView2, imageView, findViewById, searchView);
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

    /* renamed from: e.a.b.a.a.a.c.c$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$b.class */
    public static final class C7507b extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f23802b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7507b(Fragment fragment) {
            super(0);
            this.f23802b = fragment;
        }

        public Object invoke() {
            return this.f23802b;
        }
    }

    /* renamed from: e.a.b.a.a.a.c.c$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$c.class */
    public static final class C7508c extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23803b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7508c(a aVar) {
            super(0);
            this.f23803b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23803b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.c.c$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$d.class */
    public static final class C7509d {
        public C7509d(f fVar) {
        }
    }

    /* renamed from: e.a.b.a.a.a.c.c$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$e.class */
    public interface AbstractC7510e {
        /* renamed from: U */
        void mo29544U(C8551c c8551c);
    }

    /* renamed from: e.a.b.a.a.a.c.c$f */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$f.class */
    public static final class C7511f extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7511f() {
            super(0);
            C7505c.this = r4;
        }

        public Object invoke() {
            return C17891a1.C17902k.m15655N1(C7505c.this.requireActivity());
        }
    }

    /* renamed from: e.a.b.a.a.a.c.c$g */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$g.class */
    public static final class C7512g extends m implements s1.z.b.l<String, s> {

        /* renamed from: b */
        public final /* synthetic */ C8101s0 f23805b;

        /* renamed from: c */
        public final /* synthetic */ C7505c f23806c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7512g(C8101s0 c8101s0, C7505c c7505c) {
            super(1);
            this.f23805b = c8101s0;
            this.f23806c = c7505c;
        }

        /* renamed from: d */
        public Object m29543d(Object obj) {
            C7638b.m29461c(this.f23806c.m29546PA(), 0L, (String) obj, 1);
            this.f23805b.f25097b.setOnTouchListener(new View$OnTouchListenerC7516f(this));
            return s.a;
        }
    }

    /* renamed from: e.a.b.a.a.a.c.c$h */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/c/c$h.class */
    public static final class C7513h extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7513h() {
            super(0);
            C7505c.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7505c.this.f23794a;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            s1.z.c.l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C8101s0 m29547OA() {
        return (C8101s0) this.f23801h.m34468b(this, f23792i[0]);
    }

    /* renamed from: PA */
    public final C7638b m29546PA() {
        return (C7638b) this.f23795b.getValue();
    }

    public void onCreate(Bundle bundle) {
        C7505c.super.onCreate(bundle);
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        this.f23794a = (C26986a1.AbstractC26987b) ((C7805e) C18334g0.m15219l(requireActivity)).f24270K.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3478R.layout.fragment_tag_pick, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7505c.super.onViewCreated(view, bundle);
        C7638b.m29461c(m29546PA(), 0L, null, 3);
        RecyclerView recyclerView = m29547OA().f25096a;
        s1.z.c.l.d(recyclerView, "binding.categoryGrid");
        recyclerView.setLayoutManager(new GridLayoutManager(requireContext(), 3));
        this.f23797d = null;
        RecyclerView recyclerView2 = m29547OA().f25096a;
        s1.z.c.l.d(recyclerView2, "binding.categoryGrid");
        recyclerView2.setAdapter(null);
        RecyclerView recyclerView3 = m29547OA().f25097b;
        s1.z.c.l.d(recyclerView3, "binding.categoryList");
        recyclerView3.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        this.f23798e = null;
        RecyclerView recyclerView4 = m29547OA().f25097b;
        s1.z.c.l.d(recyclerView4, "binding.categoryList");
        recyclerView4.setAdapter(null);
        C8101s0 m29547OA = m29547OA();
        SearchView searchView = m29547OA.f25101f;
        s1.z.c.l.d(searchView, "searchView");
        C19286f.m13679Y(searchView, false, 0L, 2);
        SearchView searchView2 = m29547OA.f25101f;
        s1.z.c.l.d(searchView2, "searchView");
        C17422k.m16101Q(searchView2, new C7512g(m29547OA, this));
        LiveData m43264W = MediaSessionCompat.m43264W(m29546PA().f24008a);
        s1.z.c.l.b(m43264W, "Transformations.distinctUntilChanged(this)");
        m43264W.m42867f(getViewLifecycleOwner(), new C7517g(this));
    }
}
