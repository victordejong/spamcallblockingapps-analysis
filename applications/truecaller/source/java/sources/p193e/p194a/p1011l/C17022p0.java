package p193e.p194a.p1011l;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.DotPagerIndicator;
import com.truecaller.premium.data.PremiumType;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1011l.C16614b;
import p193e.p194a.p1049l4.C17422k;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002?7B\u0007¢\u0006\u0004\b>\u0010\u0016J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ'\u0010#\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001bH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010\u0016R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0018\u0010=\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006@"}, d2 = {"Le/a/l/p0;", "Landroidx/fragment/app/Fragment;", "Le/a/l/s0;", "Le/a/l/x1;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "onDetach", "Le/a/l/w1;", "tt", "()Le/a/l/w1;", "", "titleRes", "setTitle", "(I)V", "Lcom/truecaller/premium/data/PremiumType;", "premiumType", "count", "initialPage", "xj", "(Lcom/truecaller/premium/data/PremiumType;II)V", "onDestroy", "Landroidx/viewpager2/widget/ViewPager2$e;", "d", "Landroidx/viewpager2/widget/ViewPager2$e;", "pageChangeCallback", "Landroidx/viewpager2/widget/ViewPager2;", "g", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager", "Le/a/l/l;", AbstractC2405c.f7629a, "Le/a/l/l;", "featuresStyleProvider", "Lcom/google/android/material/appbar/MaterialToolbar;", "f", "Lcom/google/android/material/appbar/MaterialToolbar;", "toolbar", "Le/a/l/y;", C22021b.f61237c, "Le/a/l/y;", "onCloseDetailsListener", "Lcom/truecaller/ui/view/DotPagerIndicator;", "e", "Lcom/truecaller/ui/view/DotPagerIndicator;", "pagerIndicator", "<init>", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.p0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p0.class */
public final class C17022p0 extends Fragment implements AbstractC17227s0, AbstractC17301x1 {
    @Inject

    /* renamed from: a */
    public C17219r0 f47757a;

    /* renamed from: b */
    public AbstractC17302y f47758b;

    /* renamed from: c */
    public AbstractC16949l f47759c;

    /* renamed from: d */
    public ViewPager2.AbstractC0407e f47760d;

    /* renamed from: e */
    public DotPagerIndicator f47761e;

    /* renamed from: f */
    public MaterialToolbar f47762f;

    /* renamed from: g */
    public ViewPager2 f47763g;

    /* renamed from: e.a.l.p0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p0$a.class */
    public final class C17023a extends ViewPager2.AbstractC0407e {

        /* renamed from: a */
        public final DotPagerIndicator f47764a;

        public C17023a(C17022p0 c17022p0, DotPagerIndicator dotPagerIndicator) {
            l.e(dotPagerIndicator, "pagerIndicator");
            this.f47764a = dotPagerIndicator;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
        /* renamed from: a */
        public void mo1520a(int i, float f, int i2) {
            this.f47764a.mo7749a(i, f, i2);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC0407e
        /* renamed from: g */
        public void mo1513g(int i) {
            this.f47764a.mo7748g(i);
        }
    }

    /* renamed from: e.a.l.p0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p0$b.class */
    public static final class C17024b extends FragmentStateAdapter {

        /* renamed from: i */
        public final PremiumType f47765i;

        /* renamed from: j */
        public final int f47766j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17024b(PremiumType premiumType, int i, Fragment fragment) {
            super(fragment.getChildFragmentManager(), fragment.getLifecycle());
            l.e(premiumType, "premiumType");
            l.e(fragment, "fragment");
            this.f47765i = premiumType;
            this.f47766j = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
        public int getItemCount() {
            return this.f47766j;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        /* renamed from: h */
        public Fragment mo16623h(int i) {
            PremiumType premiumType = this.f47765i;
            l.e(premiumType, "premiumType");
            C16612a1 c16612a1 = new C16612a1();
            Bundle bundle = new Bundle();
            bundle.putSerializable("type", premiumType);
            bundle.putInt("page_number", i);
            c16612a1.setArguments(bundle);
            return c16612a1;
        }
    }

    /* renamed from: e.a.l.p0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p0$c.class */
    public static final class View$OnClickListenerC17025c implements View.OnClickListener {
        public View$OnClickListenerC17025c() {
            C17022p0.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16614b.C16618e mo16736Oh;
            AbstractC16949l abstractC16949l = C17022p0.this.f47759c;
            if (abstractC16949l == null || (mo16736Oh = abstractC16949l.mo16736Oh()) == null || !mo16736Oh.f46694c) {
                C17022p0.this.getParentFragmentManager().m42921c0();
            } else {
                C17022p0.this.requireActivity().finish();
            }
        }
    }

    /* renamed from: e.a.l.p0$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p0$d.class */
    public static final class RunnableC17026d implements Runnable {
        public RunnableC17026d(PremiumType premiumType, int i, int i2) {
            C17022p0.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewPager2 viewPager2;
            if (C17022p0.this.isAdded() && (viewPager2 = C17022p0.this.f47763g) != null) {
                viewPager2.requestLayout();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0044, code lost:
        if (r8 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttach(android.content.Context r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            r1 = r8
            p193e.p194a.p1011l.C17022p0.super.onAttach(r1)
            r0 = r7
            androidx.fragment.app.Fragment r0 = r0.getParentFragment()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.OnCloseDetailsListener"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            r1 = r8
            e.a.l.y r1 = (p193e.p194a.p1011l.AbstractC17302y) r1
            r0.f47758b = r1
            r0 = r7
            androidx.fragment.app.Fragment r0 = r0.getParentFragment()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.FeaturesStyleProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            r1 = r8
            e.a.l.l r1 = (p193e.p194a.p1011l.AbstractC16949l) r1
            r0.f47759c = r1
            r0 = r7
            android.os.Bundle r0 = r0.getArguments()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L4a
            r0 = r8
            java.lang.String r1 = "type"
            java.io.Serializable r0 = r0.getSerializable(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L4a
            goto L4e
        L4a:
            com.truecaller.premium.data.PremiumType r0 = com.truecaller.premium.data.PremiumType.PREMIUM
            r8 = r0
        L4e:
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.data.PremiumType"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            com.truecaller.premium.data.PremiumType r0 = (com.truecaller.premium.data.PremiumType) r0
            r8 = r0
            r0 = r7
            android.os.Bundle r0 = r0.getArguments()
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L6d
            r0 = r9
            java.lang.String r1 = "initial_position"
            int r0 = r0.getInt(r1)
            r10 = r0
            goto L6f
        L6d:
            r0 = 0
            r10 = r0
        L6f:
            r0 = r7
            androidx.fragment.app.Fragment r0 = r0.getParentFragment()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "null cannot be cast to non-null type com.truecaller.premium.PremiumScreenEntryPointProvider"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            e.a.l.x1 r0 = (p193e.p194a.p1011l.AbstractC17301x1) r0
            e.a.l.w1 r0 = r0.mo16270tt()
            r9 = r0
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r8
            java.lang.String r1 = "premiumType"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            java.lang.Class<e.a.l.w1> r1 = p193e.p194a.p1011l.AbstractC17298w1.class
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3846s(r0, r1)
            r0 = r8
            java.lang.String r1 = "Cannot return null from a non-@Nullable @Provides method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r9
            e.a.l.i2 r0 = r0.mo11963W0()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "Cannot return null from a non-@Nullable component method"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r7
            e.a.l.r0 r1 = new e.a.l.r0
            r2 = r1
            r3 = r8
            r4 = r10
            r5 = r9
            r2.<init>(r3, r4, r5)
            r0.f47757a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.C17022p0.onAttach(android.content.Context):void");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_premium_details, viewGroup, false);
    }

    public void onDestroy() {
        ViewPager2 viewPager2;
        C17022p0.super.onDestroy();
        ViewPager2.AbstractC0407e abstractC0407e = this.f47760d;
        if (abstractC0407e == null || (viewPager2 = this.f47763g) == null) {
            return;
        }
        viewPager2.f1520c.f74596a.remove(abstractC0407e);
    }

    public void onDestroyView() {
        C17022p0.super.onDestroyView();
        C17219r0 c17219r0 = this.f47757a;
        if (c17219r0 == null) {
            l.l("presenter");
            throw null;
        }
        c17219r0.f57683a = null;
        AbstractC17302y abstractC17302y = this.f47758b;
        if (abstractC17302y == null) {
            return;
        }
        abstractC17302y.mo16269Ao();
    }

    public void onDetach() {
        C17022p0.super.onDetach();
        this.f47758b = null;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        View requireView = requireView();
        this.f47763g = (ViewPager2) requireView.findViewById(2131366788);
        this.f47761e = (DotPagerIndicator) requireView.findViewById(2131365079);
        MaterialToolbar findViewById = requireView.findViewById(2131366512);
        this.f47762f = findViewById;
        if (findViewById != null) {
            findViewById.setNavigationOnClickListener(new View$OnClickListenerC17025c());
        }
        C17219r0 c17219r0 = this.f47757a;
        if (c17219r0 != null) {
            c17219r0.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17227s0
    public void setTitle(int i) {
        MaterialToolbar materialToolbar = this.f47762f;
        if (materialToolbar != null) {
            materialToolbar.setTitle(i);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC17301x1
    /* renamed from: tt */
    public AbstractC17298w1 mo16270tt() {
        AbstractC17301x1 parentFragment = getParentFragment();
        Objects.requireNonNull(parentFragment, "null cannot be cast to non-null type com.truecaller.premium.PremiumScreenEntryPointProvider");
        return parentFragment.mo16270tt();
    }

    @Override // p193e.p194a.p1011l.AbstractC17227s0
    /* renamed from: xj */
    public void mo16360xj(PremiumType premiumType, int i, int i2) {
        l.e(premiumType, "premiumType");
        ViewPager2 viewPager2 = this.f47763g;
        if (viewPager2 != null) {
            viewPager2.setOffscreenPageLimit(2);
            viewPager2.setAdapter(new C17024b(premiumType, i, this));
            DotPagerIndicator dotPagerIndicator = this.f47761e;
            if (dotPagerIndicator != null) {
                dotPagerIndicator.setNumberOfPages(i);
            }
            DotPagerIndicator dotPagerIndicator2 = this.f47761e;
            if (dotPagerIndicator2 != null) {
                dotPagerIndicator2.setFirstPage(0);
            }
            DotPagerIndicator dotPagerIndicator3 = this.f47761e;
            if (dotPagerIndicator3 != null) {
                C17023a c17023a = new C17023a(this, dotPagerIndicator3);
                this.f47760d = c17023a;
                viewPager2.f1520c.f74596a.add(c17023a);
            }
            viewPager2.m42620d(i2, false);
            viewPager2.post(new RunnableC17026d(premiumType, i, i2));
        }
    }
}
