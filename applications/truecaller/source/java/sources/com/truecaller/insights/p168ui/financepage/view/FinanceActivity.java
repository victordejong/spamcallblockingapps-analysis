package com.truecaller.insights.p168ui.financepage.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$h;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.tablayout.TabLayoutX;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.financepage.models.FinanceTab;
import com.truecaller.p183ui.view.TintedImageView;
import e.m.a.g.x.e;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import n3.v.i0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p446c.AbstractC8780b;
import p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b;
import p193e.p194a.p437c.p438a.p456d.AbstractC8881b;
import p193e.p194a.p437c.p438a.p456d.p457a.AbstractC8872b;
import p193e.p194a.p437c.p438a.p456d.p457a.C8869a;
import p193e.p194a.p437c.p438a.p456d.p457a.p458c.AbstractC8876d;
import p193e.p194a.p437c.p438a.p456d.p457a.p458c.C8877e;
import p193e.p194a.p437c.p438a.p456d.p457a.p458c.C8878f;
import p193e.p194a.p437c.p438a.p456d.p460c.AbstractC8886b;
import p193e.p194a.p437c.p438a.p456d.p460c.C8882a;
import p193e.p194a.p437c.p438a.p456d.p462e.C8926a;
import p193e.p194a.p437c.p438a.p456d.p470g.C8941a;
import p193e.p194a.p437c.p438a.p456d.p470g.C8942b;
import p193e.p194a.p437c.p438a.p456d.p470g.C8943c;
import p193e.p194a.p437c.p438a.p456d.p470g.C8944d;
import p193e.p194a.p437c.p438a.p456d.p470g.C8946f;
import p193e.p194a.p437c.p438a.p456d.p470g.C8956l;
import p193e.p194a.p437c.p438a.p456d.p470g.RunnableC8945e;
import p193e.p194a.p437c.p438a.p456d.p470g.View$OnClickListenerC8947g;
import p193e.p194a.p437c.p438a.p477g.C9009a;
import p193e.p194a.p437c.p438a.p477g.C9023d1;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import p193e.p194a.p437c.p438a.p521s.C9593d;
import p193e.p194a.p437c.p438a.p521s.C9599f;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u0007¢\u0006\u0004\b<\u0010\u0011J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u0011J\u000f\u0010\u001c\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001c\u0010\u0011R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010*\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001d\u0010/\u001a\u00020+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u001d\u0010;\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010'\u001a\u0004\b9\u0010:¨\u0006="}, d2 = {"Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;", "Ln3/b/a/h;", "Le/a/c/a/d/a/b;", "Le/a/c/a/c/a/b;", "Le/a/c/a/d/a/c/d;", "Le/a/c/a/d/b;", "Le/a/c/a/c/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/c/a/l/a;", "accountUiModel", "x8", "(Le/a/c/a/l/a;)V", "onDestroy", "()V", "Le/a/c/a/d/c/b;", "H1", "()Le/a/c/a/d/c/b;", "Lcom/google/android/material/appbar/AppBarLayout;", "d8", "()Lcom/google/android/material/appbar/AppBarLayout;", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "b7", "()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "Q3", "g1", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/a/g/a;", "f", "Ls1/g;", "pa", "()Le/a/c/a/g/a;", "binding", "Le/a/c/a/s/d;", AbstractC2405c.f7629a, "ra", "()Le/a/c/a/s/d;", "tabLayoutXHelper", "d", "Le/a/c/a/d/c/b;", "financePageComponent", "Le/a/c/a/d/a/c/e;", "e", "Le/a/c/a/d/a/c/e;", "selectedFiltersAdapter", "Le/a/c/a/d/a/a;", C22021b.f61237c, "qa", "()Le/a/c/a/d/a/a;", "financePageViewModel", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.financepage.view.FinanceActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/view/FinanceActivity.class */
public final class FinanceActivity extends h implements AbstractC8872b, AbstractC8774b, AbstractC8876d, AbstractC8881b, AbstractC8780b {

    /* renamed from: g */
    public static final /* synthetic */ int f12754g = 0;
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f12755a;

    /* renamed from: d */
    public AbstractC8886b f12758d;

    /* renamed from: e */
    public C8877e f12759e;

    /* renamed from: b */
    public final g f12756b = C25225a.m3978P1(new C4090b());

    /* renamed from: c */
    public final g f12757c = C25225a.m3978P1(new C4091c());

    /* renamed from: f */
    public final g f12760f = C25225a.m3982O1(s1.h.c, new C4089a(this));

    /* renamed from: com.truecaller.insights.ui.financepage.view.FinanceActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/view/FinanceActivity$a.class */
    public static final class C4089a extends m implements a<C9009a> {

        /* renamed from: b */
        public final /* synthetic */ h f12761b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4089a(h hVar) {
            super(0);
            this.f12761b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12761b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            CoordinatorLayout inflate = layoutInflater.inflate(C4078R.layout.activity_finance_transactions, (ViewGroup) null, false);
            int i = C4078R.C4080id.appBarLayout;
            AppBarLayout findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                i = C4078R.C4080id.backBtn;
                TintedImageView tintedImageView = (TintedImageView) inflate.findViewById(i);
                if (tintedImageView != null) {
                    i = C4078R.C4080id.emptyState;
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(i);
                    if (constraintLayout != null) {
                        i = C4078R.C4080id.emptyStateDesc;
                        TextView textView = (TextView) inflate.findViewById(i);
                        if (textView != null) {
                            i = C4078R.C4080id.emptyStateImg;
                            ImageView imageView = (ImageView) inflate.findViewById(i);
                            if (imageView != null) {
                                i = C4078R.C4080id.emptyStateTitle;
                                TextView textView2 = (TextView) inflate.findViewById(i);
                                if (textView2 != null) {
                                    i = C4078R.C4080id.filterFab;
                                    ExtendedFloatingActionButton findViewById2 = inflate.findViewById(i);
                                    if (findViewById2 != null) {
                                        i = C4078R.C4080id.filtersContainer;
                                        View findViewById3 = inflate.findViewById(i);
                                        if (findViewById3 != null) {
                                            int i2 = C4078R.C4080id.filtersHeader;
                                            TextView textView3 = (TextView) findViewById3.findViewById(i2);
                                            if (textView3 != null) {
                                                i2 = C4078R.C4080id.selectedFiltersRv;
                                                RecyclerView recyclerView = (RecyclerView) findViewById3.findViewById(i2);
                                                if (recyclerView != null) {
                                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) findViewById3;
                                                    C9023d1 c9023d1 = new C9023d1(constraintLayout2, textView3, recyclerView, constraintLayout2);
                                                    i = C4078R.C4080id.scrollUp;
                                                    FloatingActionButton findViewById4 = inflate.findViewById(i);
                                                    if (findViewById4 != null) {
                                                        i = C4078R.C4080id.searchBtn;
                                                        TintedImageView tintedImageView2 = (TintedImageView) inflate.findViewById(i);
                                                        if (tintedImageView2 != null) {
                                                            i = C4078R.C4080id.tabs;
                                                            TabLayoutX tabLayoutX = (TabLayoutX) inflate.findViewById(i);
                                                            if (tabLayoutX != null) {
                                                                i = C4078R.C4080id.titleTv;
                                                                TextView textView4 = (TextView) inflate.findViewById(i);
                                                                if (textView4 != null) {
                                                                    i = C4078R.C4080id.viewPager;
                                                                    ViewPager2 viewPager2 = (ViewPager2) inflate.findViewById(i);
                                                                    if (viewPager2 != null) {
                                                                        return new C9009a(inflate, findViewById, tintedImageView, constraintLayout, textView, imageView, textView2, findViewById2, c9023d1, findViewById4, tintedImageView2, tabLayoutX, textView4, viewPager2);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            throw new NullPointerException("Missing required view with ID: ".concat(findViewById3.getResources().getResourceName(i2)));
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.insights.ui.financepage.view.FinanceActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/view/FinanceActivity$b.class */
    public static final class C4090b extends m implements a<C8869a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4090b() {
            super(0);
            FinanceActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.insights.ui.financepage.view.FinanceActivity, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = FinanceActivity.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f12755a;
            if (abstractC26987b == null) {
                l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C8869a.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C8869a.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C8869a.class) : abstractC26987b.create(C8869a.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            l.d(abstractC27040y0, "ViewModelProvider(this, …ageViewModel::class.java)");
            return (C8869a) abstractC27040y0;
        }
    }

    /* renamed from: com.truecaller.insights.ui.financepage.view.FinanceActivity$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/view/FinanceActivity$c.class */
    public static final class C4091c extends m implements a<C9593d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4091c() {
            super(0);
            FinanceActivity.this = r4;
        }

        public Object invoke() {
            return new C9593d(FinanceActivity.this);
        }
    }

    @Override // p193e.p194a.p437c.p438a.p456d.p457a.AbstractC8872b
    /* renamed from: H1 */
    public AbstractC8886b mo27987H1() {
        return this.f12758d;
    }

    @Override // p193e.p194a.p437c.p438a.p456d.AbstractC8881b
    /* renamed from: Q3 */
    public void mo27984Q3() {
        ExtendedFloatingActionButton extendedFloatingActionButton = m35197pa().f27361e;
        extendedFloatingActionButton.k(extendedFloatingActionButton.u, (ExtendedFloatingActionButton$h) null);
    }

    @Override // p193e.p194a.p437c.p438a.p446c.AbstractC8780b
    /* renamed from: b7 */
    public FloatingActionButton mo28075b7() {
        FloatingActionButton floatingActionButton = m35197pa().f27363g;
        l.d(floatingActionButton, "binding.scrollUp");
        return floatingActionButton;
    }

    @Override // p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b
    /* renamed from: d8 */
    public AppBarLayout mo28080d8() {
        AppBarLayout appBarLayout = m35197pa().f27358b;
        l.d(appBarLayout, "binding.appBarLayout");
        return appBarLayout;
    }

    @Override // p193e.p194a.p437c.p438a.p456d.AbstractC8881b
    /* renamed from: g1 */
    public void mo27983g1() {
        ExtendedFloatingActionButton extendedFloatingActionButton = m35197pa().f27361e;
        extendedFloatingActionButton.k(extendedFloatingActionButton.v, (ExtendedFloatingActionButton$h) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        FinanceActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9009a m35197pa = m35197pa();
        l.d(m35197pa, "binding");
        setContentView(m35197pa.f27357a);
        C8882a.C8884b m27982a = C8882a.m27982a();
        m27982a.f27074b = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        m27982a.f27075c = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        m27982a.f27076d = C18334g0.m15209q(this);
        m27982a.f27077e = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
        AbstractC8886b m27981a = m27982a.m27981a();
        l.d(m27981a, "DaggerFinancePageCompone…nce)\n            .build()");
        this.f12755a = (C26986a1.AbstractC26987b) ((C8882a) m27981a).f27072q.get();
        this.f12758d = m27981a;
        C8869a m35196qa = m35196qa();
        AbstractC27028u lifecycle = getLifecycle();
        l.d(lifecycle, "this.lifecycle");
        Objects.requireNonNull(m35196qa);
        l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m35196qa.f27034l);
        C8869a m35196qa2 = m35196qa();
        m35196qa2.f27036n.mo26858X(true);
        C9116j c9116j = m35196qa2.f27035m;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("finance_page", "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        l.e("inbox_business_tab", "<set-?>");
        c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("page_view", "finance_page", "", "inbox_business_tab", ViewAction.VIEW, "", 0L, null, false, 448, null), i.W0(linkedHashMap)));
        C9009a m35197pa2 = m35197pa();
        m35196qa().f27024b.m42867f(this, new C8941a());
        C9593d m35195ra = m35195ra();
        C8946f c8946f = new C8946f(this);
        Objects.requireNonNull(m35195ra);
        l.e(c8946f, "onTabSelected");
        m35195ra.f29011c = c8946f;
        C9593d m35195ra2 = m35195ra();
        FinanceTab financeTab = FinanceTab.ALL;
        C8956l.C8958b c8958b = C8956l.f27247g;
        m35195ra2.m27403a(new C9593d.C9597d(financeTab, 0, 0, c8958b.m27917a(financeTab), null, 22));
        FinanceTab financeTab2 = FinanceTab.DEBIT;
        m35195ra2.m27403a(new C9593d.C9597d(financeTab2, 0, 0, c8958b.m27917a(financeTab2), null, 22));
        FinanceTab financeTab3 = FinanceTab.CREDIT;
        m35195ra2.m27403a(new C9593d.C9597d(financeTab3, 0, 0, c8958b.m27917a(financeTab3), null, 22));
        ViewPager2 viewPager2 = m35197pa().f27366j;
        l.d(viewPager2, "binding.viewPager");
        TabLayoutX tabLayoutX = m35197pa().f27365i;
        l.d(tabLayoutX, "binding.tabs");
        l.e(viewPager2, "pager");
        l.e(tabLayoutX, "tabs");
        viewPager2.setAdapter(m35195ra2.f29009a);
        viewPager2.f1520c.f74596a.add(new C9593d.C9595b(m35195ra2, tabLayoutX));
        new e(tabLayoutX, viewPager2, new C9599f(m35195ra2, viewPager2)).a();
        ViewPager2 viewPager22 = m35197pa().f27366j;
        l.d(viewPager22, "binding.viewPager");
        viewPager22.setOffscreenPageLimit(1);
        m35197pa2.f27359c.setOnClickListener(new z0(0, this));
        m35197pa2.f27361e.setOnClickListener(new z0(1, this));
        m35197pa2.f27364h.setOnClickListener(new View$OnClickListenerC8947g(m35197pa2, this));
        this.f12759e = new C8877e(this);
        RecyclerView recyclerView = m35197pa().f27362f.f27438a;
        l.d(recyclerView, "binding.filtersContainer.selectedFiltersRv");
        C8877e c8877e = this.f12759e;
        if (c8877e == null) {
            l.l("selectedFiltersAdapter");
            throw null;
        }
        recyclerView.setAdapter(c8877e);
        m35197pa().f27362f.f27438a.addItemDecoration(new C8878f(getResources().getDimensionPixelSize(C4078R.dimen.dp16)));
        m35196qa().f27027e.m42867f(this, C8942b.f27221a);
        m35196qa().f27028f.m42867f(this, new C8943c(this));
        m35196qa().f27031i.m42867f(this, new C8944d(this));
        C9009a m35197pa3 = m35197pa();
        l.d(m35197pa3, "binding");
        m35197pa3.f27357a.postDelayed(new RunnableC8945e(this), 500L);
    }

    public void onDestroy() {
        FinanceActivity.super.onDestroy();
        C9593d m35195ra = m35195ra();
        m35195ra.f29010b.clear();
        C9593d.C9594a c9594a = m35195ra.f29009a;
        c9594a.f29012i.clear();
        c9594a.notifyDataSetChanged();
    }

    /* renamed from: pa */
    public final C9009a m35197pa() {
        return (C9009a) this.f12760f.getValue();
    }

    /* renamed from: qa */
    public final C8869a m35196qa() {
        return (C8869a) this.f12756b.getValue();
    }

    /* renamed from: ra */
    public final C9593d m35195ra() {
        return (C9593d) this.f12757c.getValue();
    }

    @Override // p193e.p194a.p437c.p438a.p456d.p457a.p458c.AbstractC8876d
    /* renamed from: x8 */
    public void mo27986x8(C9234a c9234a) {
        l.e(c9234a, "accountUiModel");
        C8869a m35196qa = m35196qa();
        Objects.requireNonNull(m35196qa);
        l.e(c9234a, "accountUiModel");
        m35196qa.f27032j = true;
        C9116j c9116j = m35196qa.f27035m;
        C8926a c8926a = C8926a.f27196e;
        c9116j.m27867a(C8926a.f27193b);
        m35196qa.f27029g.remove(c9234a);
        List<C9234a> list = (List) m35196qa.f27027e.m42869d();
        if (list != null) {
            i0<List<C9234a>> i0Var = m35196qa.f27027e;
            l.d(list, "it");
            i0Var.mo1001j(m35196qa.m27992c(list));
        }
        m35196qa.m27991d();
        m35196qa.f27028f.mo1000l(i.S0(m35196qa.f27029g));
    }
}
