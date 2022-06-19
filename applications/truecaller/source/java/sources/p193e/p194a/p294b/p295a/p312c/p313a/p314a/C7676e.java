package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.newBusiness.onboarding.p149ui.fragments.ScreenState;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.tagger.tagPicker.adapter.TagSearchType;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7695b;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7697c;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7746s;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7748u;
import p193e.p194a.p294b.p295a.p312c.p313a.p315c0.C7699b;
import p193e.p194a.p294b.p295a.p322f.AbstractC7780a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.C8057d0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p802e0.p803u.C14512g;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bR\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001a\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001c\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0013J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\"\u0010 J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0013J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010*\u001a\u00020\u00052\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0005H\u0016¢\u0006\u0004\b,\u0010\u0013J\u000f\u0010-\u001a\u00020\u0005H\u0016¢\u0006\u0004\b-\u0010\u0013J\u000f\u0010.\u001a\u00020\u0005H\u0016¢\u0006\u0004\b.\u0010\u0013J\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\u0013R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R$\u0010G\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u001d\u0010M\u001a\u00020H8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006S"}, d2 = {"Le/a/b/a/c/a/a/e;", "Le/a/b/a/c/a/a/d;", "Le/a/b/a/c/a/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "pt", "()Z", "", "Le/a/b0/p/c;", "tags", "u7", "(Ljava/util/List;)V", "gl", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "businessProfile", "nz", "(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V", "Gb", "b4", "ie", "Le/a/b/a/f/a;", "businessAPIResult", "G2", "(Le/a/b/a/f/a;)V", "", "error", "M", "(Ljava/lang/String;)V", "a0", "b0", "km", "e9", "Le/a/g5/e0/u/g;", "e", "Le/a/g5/e0/u/g;", "tagSearchAdapter", "Le/a/b/a/c/a/c0/b;", "d", "Le/a/b/a/c/a/c0/b;", "categoryAdapter", "Le/a/b/a/c/a/b;", C22021b.f61237c, "Le/a/b/a/c/a/b;", "getCategoryPresenter", "()Le/a/b/a/c/a/b;", "setCategoryPresenter", "(Le/a/b/a/c/a/b;)V", "categoryPresenter", "Le/a/b/a/c/a/s;", "f", "Le/a/b/a/c/a/s;", "getOnSearchViewToggle", "()Le/a/b/a/c/a/s;", "setOnSearchViewToggle", "(Le/a/b/a/c/a/s;)V", "onSearchViewToggle", "Le/f/a/i;", AbstractC2405c.f7629a, "Ls1/g;", "getGlideRequestManager", "()Le/f/a/i;", "glideRequestManager", "Le/a/b/m/d0;", "g", "Le/a/b/m/d0;", "binding", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/e.class */
public final class C7676e extends AbstractC7675d<AbstractC7697c> implements AbstractC7697c {
    @Inject

    /* renamed from: b */
    public AbstractC7695b f24061b;

    /* renamed from: c */
    public final g f24062c = C25225a.m3978P1(new C7678b());

    /* renamed from: d */
    public C7699b f24063d;

    /* renamed from: e */
    public C14512g f24064e;

    /* renamed from: f */
    public AbstractC7746s f24065f;

    /* renamed from: g */
    public C8057d0 f24066g;

    /* renamed from: e.a.b.a.c.a.a.e$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/e$a.class */
    public static final /* synthetic */ class C7677a extends j implements l<C8551c, s> {
        public C7677a(C7676e c7676e) {
            super(1, c7676e, C7676e.class, "onSelectCategory", "onSelectCategory(Lcom/truecaller/common/tag/AvailableTag;)V", 0);
        }

        /* renamed from: d */
        public Object m29449d(Object obj) {
            C8551c c8551c = (C8551c) obj;
            s1.z.c.l.e(c8551c, "p1");
            C7676e c7676e = (C7676e) ((b) this).b;
            Objects.requireNonNull(c7676e);
            s1.z.c.l.e(c8551c, RemoteMessageConst.Notification.TAG);
            AbstractC7695b abstractC7695b = c7676e.f24061b;
            if (abstractC7695b != null) {
                abstractC7695b.mo29423Ub(c8551c.f26350a);
                return s.a;
            }
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
    }

    /* renamed from: e.a.b.a.c.a.a.e$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/e$b.class */
    public static final class C7678b extends m implements a<C21853e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7678b() {
            super(0);
            C7676e.this = r4;
        }

        public Object invoke() {
            return C17891a1.C17902k.m15655N1(C7676e.this.requireActivity());
        }
    }

    /* renamed from: e.a.b.a.c.a.a.e$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/e$c.class */
    public static final class C7679c extends m implements l<C8551c, s> {

        /* renamed from: c */
        public final /* synthetic */ List f24069c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7679c(List list) {
            super(1);
            C7676e.this = r4;
            this.f24069c = list;
        }

        /* renamed from: d */
        public Object m29448d(Object obj) {
            C8551c c8551c = (C8551c) obj;
            s1.z.c.l.e(c8551c, "it");
            AbstractC7695b abstractC7695b = C7676e.this.f24061b;
            if (abstractC7695b != null) {
                abstractC7695b.mo29422bb(C25225a.m3897h3(C17422k.m16103O(c8551c)));
                return s.a;
            }
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: G2 */
    public void mo29336G2(AbstractC7780a abstractC7780a) {
        s1.z.c.l.e(abstractC7780a, "businessAPIResult");
        AbstractC7695b abstractC7695b = this.f24061b;
        if (abstractC7695b != null) {
            abstractC7695b.mo29342G2(abstractC7780a);
        } else {
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: Gb */
    public void mo29335Gb() {
        n3.r.a.l activity = getActivity();
        if (activity == null || !activity.isFinishing()) {
            AbstractC7748u activity2 = getActivity();
            n3.r.a.l lVar = activity2;
            if (!(activity2 instanceof AbstractC7748u)) {
                lVar = null;
            }
            AbstractC7748u abstractC7748u = lVar;
            if (abstractC7748u != null) {
                C18334g0.m15199v(abstractC7748u, false, 1, null);
                SearchView mo29323O7 = abstractC7748u.mo29323O7();
                if (mo29323O7 != null) {
                    C8057d0 c8057d0 = this.f24066g;
                    if (c8057d0 == null) {
                        s1.z.c.l.l("binding");
                        throw null;
                    }
                    C17422k.m16101Q(mo29323O7, new C7681g(c8057d0, this, mo29323O7));
                }
                abstractC7748u.mo29322U3(true);
                abstractC7748u.mo29316p3(false);
            }
            AbstractC7695b abstractC7695b = this.f24061b;
            if (abstractC7695b == null) {
                s1.z.c.l.l("categoryPresenter");
                throw null;
            }
            abstractC7695b.mo29339d4();
            View view = getView();
            if (view == null) {
                return;
            }
            C19286f.m13679Y(view, false, 0L, 2);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: M */
    public void mo29334M(String str) {
        s1.z.c.l.e(str, "error");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: a0 */
    public void mo29333a0() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29320a0();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b0 */
    public void mo29332b0() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29319b0();
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: b4 */
    public void mo29331b4(BusinessProfile businessProfile) {
        s1.z.c.l.e(businessProfile, "businessProfile");
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: e9 */
    public void mo29330e9() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        SearchView mo29323O7 = requireActivity.mo29323O7();
        int ordinal = (s1.z.c.l.a(mo29323O7 != null ? Boolean.valueOf(mo29323O7.f341U) : null, Boolean.FALSE) ? ScreenState.SEARCH_MODE : ScreenState.DEFAULT).ordinal();
        if (ordinal == 0) {
            AbstractC7748u requireActivity2 = requireActivity();
            Objects.requireNonNull(requireActivity2, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
            requireActivity2.mo29314v1();
        } else if (ordinal != 1) {
        } else {
            AbstractC7748u requireActivity3 = requireActivity();
            Objects.requireNonNull(requireActivity3, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
            AbstractC7748u abstractC7748u = requireActivity3;
            SearchView mo29323O72 = abstractC7748u.mo29323O7();
            if (mo29323O72 == null) {
                return;
            }
            AbstractC7746s abstractC7746s = this.f24065f;
            if (abstractC7746s != null) {
                abstractC7746s.mo29326i7(false);
            }
            mo29323O72.m43120B(null, true);
            mo29323O72.setIconified(true);
            C18334g0.m15199v(abstractC7748u, false, 1, null);
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7697c
    /* renamed from: gl */
    public void mo29436gl(List<C8551c> list) {
        s1.z.c.l.e(list, "tags");
        C8057d0 c8057d0 = this.f24066g;
        if (c8057d0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        RecyclerView recyclerView = c8057d0.f24834b;
        s1.z.c.l.d(recyclerView, "categoryGrid");
        C19286f.m13689O(recyclerView);
        RecyclerView recyclerView2 = c8057d0.f24835c;
        s1.z.c.l.d(recyclerView2, "categoryList");
        C19286f.m13684T(recyclerView2);
        this.f24064e = new C14512g(TagSearchType.BIZMON, null, list, (ComponentCallbacks2C22236i) this.f24062c.getValue(), new C7679c(list), 2);
        RecyclerView recyclerView3 = c8057d0.f24835c;
        s1.z.c.l.d(recyclerView3, "categoryList");
        recyclerView3.setAdapter(this.f24064e);
        RecyclerView recyclerView4 = c8057d0.f24835c;
        s1.z.c.l.d(recyclerView4, "categoryList");
        recyclerView4.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: ie */
    public void mo29329ie() {
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29313v4(3);
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: km */
    public void mo29328km() {
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7697c
    /* renamed from: nz */
    public void mo29435nz(BusinessProfile businessProfile) {
        s1.z.c.l.e(businessProfile, "businessProfile");
        AbstractC7695b abstractC7695b = this.f24061b;
        if (abstractC7695b == null) {
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
        abstractC7695b.mo29340c4(businessProfile);
        AbstractC7748u requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type com.truecaller.bizmon.newBusiness.onboarding.ui.OnboardingMvp.ParentView");
        requireActivity.mo29317n1();
    }

    public void onCreate(Bundle bundle) {
        C7676e.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f24061b = (AbstractC7695b) ((C7805e) C18334g0.m15219l(activity)).f24297f0.get();
        }
        AbstractC7695b abstractC7695b = this.f24061b;
        if (abstractC7695b != null) {
            m29451OA(abstractC7695b);
        } else {
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.fragment_biz_enter_category, viewGroup, false);
        int i = C3478R.C3480id.categoryGrid;
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
        if (recyclerView != null) {
            i = C3478R.C3480id.categoryGridLayout;
            ScrollView scrollView = (ScrollView) inflate.findViewById(i);
            if (scrollView != null) {
                i = C3478R.C3480id.categoryList;
                RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(i);
                if (recyclerView2 != null) {
                    i = C3478R.C3480id.lblEnterBizCategory;
                    TextView textView = (TextView) inflate.findViewById(i);
                    if (textView != null) {
                        i = C3478R.C3480id.placeHolder;
                        View findViewById = inflate.findViewById(i);
                        if (findViewById != null) {
                            C8057d0 c8057d0 = new C8057d0((ConstraintLayout) inflate, recyclerView, scrollView, recyclerView2, textView, findViewById);
                            s1.z.c.l.d(c8057d0, "FragmentBizEnterCategory…flater, container, false)");
                            this.f24066g = c8057d0;
                            if (c8057d0 != null) {
                                return c8057d0.f24833a;
                            }
                            s1.z.c.l.l("binding");
                            throw null;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroyView() {
        C7676e.super.onDestroyView();
        AbstractC7695b abstractC7695b = this.f24061b;
        if (abstractC7695b != null) {
            abstractC7695b.mo9806c();
        } else {
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7676e.super.onViewCreated(view, bundle);
        AbstractC7695b abstractC7695b = this.f24061b;
        if (abstractC7695b != null) {
            abstractC7695b.mo9029Y0(this);
        } else {
            s1.z.c.l.l("categoryPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7745r
    /* renamed from: pt */
    public boolean mo29327pt() {
        return this.f24061b != null;
    }

    @Override // p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7697c
    /* renamed from: u7 */
    public void mo29434u7(List<C8551c> list) {
        s1.z.c.l.e(list, "tags");
        C8057d0 c8057d0 = this.f24066g;
        if (c8057d0 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        RecyclerView recyclerView = c8057d0.f24834b;
        s1.z.c.l.d(recyclerView, "categoryGrid");
        C19286f.m13684T(recyclerView);
        RecyclerView recyclerView2 = c8057d0.f24835c;
        s1.z.c.l.d(recyclerView2, "categoryList");
        C19286f.m13689O(recyclerView2);
        this.f24063d = new C7699b(list, new C7677a(this));
        RecyclerView recyclerView3 = c8057d0.f24834b;
        s1.z.c.l.d(recyclerView3, "categoryGrid");
        recyclerView3.setAdapter(this.f24063d);
        RecyclerView recyclerView4 = c8057d0.f24834b;
        s1.z.c.l.d(recyclerView4, "categoryGrid");
        recyclerView4.setLayoutManager(new GridLayoutManager(getContext(), 3));
    }
}
