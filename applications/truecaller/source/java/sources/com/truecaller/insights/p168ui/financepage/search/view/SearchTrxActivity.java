package com.truecaller.insights.p168ui.financepage.search.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.ComponentActivity;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.actions.SearchIntents;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.financepage.search.presentation.SearchTrxViewModel;
import com.truecaller.insights.p168ui.widget.SearchEditText;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p1727n3.p1868v.C27042z0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p456d.p463f.p467c.C8929a;
import p193e.p194a.p437c.p438a.p456d.p463f.p468d.C8931a;
import p193e.p194a.p437c.p438a.p456d.p463f.p469e.AbstractC8934b;
import p193e.p194a.p437c.p438a.p456d.p463f.p469e.C8935c;
import p193e.p194a.p437c.p438a.p456d.p463f.p469e.C8938f;
import p193e.p194a.p437c.p438a.p456d.p463f.p469e.View$OnClickListenerC8936d;
import p193e.p194a.p437c.p438a.p477g.C9015b1;
import p193e.p194a.p437c.p438a.p477g.C9029f;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.h;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\bR\u001d\u0010\u0010\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\r\u001a\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "ra", "Le/a/c/a/g/f;", "f", "Ls1/g;", "pa", "()Le/a/c/a/g/f;", "binding", "Le/a/c/a/d/f/d/a;", "g", "Le/a/c/a/d/f/d/a;", "debouncedTextWatcher", "Le/a/c/a/d/f/c/a;", "d", "Le/a/c/a/d/f/c/a;", "getTrxAdapter", "()Le/a/c/a/d/f/c/a;", "setTrxAdapter", "(Le/a/c/a/d/f/c/a;)V", "trxAdapter", "Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;", "e", "qa", "()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;", "viewModel", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.financepage.search.view.SearchTrxActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/search/view/SearchTrxActivity.class */
public final class SearchTrxActivity extends AbstractC8934b {

    /* renamed from: h */
    public static final /* synthetic */ int f12745h = 0;
    @Inject

    /* renamed from: d */
    public C8929a f12746d;

    /* renamed from: e */
    public final g f12747e = new C27042z0(d0.a(SearchTrxViewModel.class), new C4087c(this), new C4086b(this));

    /* renamed from: f */
    public final g f12748f = C25225a.m3982O1(h.c, new C4085a(this));

    /* renamed from: g */
    public final C8931a f12749g = new C8931a(C27020r.m994b(this), new C4088d());

    /* renamed from: com.truecaller.insights.ui.financepage.search.view.SearchTrxActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$a.class */
    public static final class C4085a extends m implements a<C9029f> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f12750b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4085a(n3.b.a.h hVar) {
            super(0);
            this.f12750b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12750b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4078R.layout.activity_search_finance_trx, (ViewGroup) null, false);
            int i = C4078R.C4080id.emptyStateGroup;
            Group group = (Group) inflate.findViewById(i);
            if (group != null) {
                i = C4078R.C4080id.emptyStateImg;
                ImageView imageView = (ImageView) inflate.findViewById(i);
                if (imageView != null) {
                    i = C4078R.C4080id.emptyStateTxt1;
                    TextView textView = (TextView) inflate.findViewById(i);
                    if (textView != null) {
                        i = C4078R.C4080id.emptyStateTxt2;
                        TextView textView2 = (TextView) inflate.findViewById(i);
                        if (textView2 != null) {
                            i = C4078R.C4080id.itemStateGroup;
                            Group group2 = (Group) inflate.findViewById(i);
                            if (group2 != null) {
                                i = C4078R.C4080id.scrollUp;
                                FloatingActionButton findViewById = inflate.findViewById(i);
                                if (findViewById != null) {
                                    i = C4078R.C4080id.searchCon;
                                    View findViewById2 = inflate.findViewById(i);
                                    if (findViewById2 != null) {
                                        int i2 = C4078R.C4080id.backBtn;
                                        TintedImageView tintedImageView = (TintedImageView) findViewById2.findViewById(i2);
                                        if (tintedImageView != null) {
                                            i2 = C4078R.C4080id.searchBar;
                                            SearchEditText searchEditText = (SearchEditText) findViewById2.findViewById(i2);
                                            if (searchEditText != null) {
                                                CardView cardView = (CardView) findViewById2;
                                                C9015b1 c9015b1 = new C9015b1(cardView, tintedImageView, searchEditText, cardView);
                                                i = C4078R.C4080id.trxRv;
                                                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
                                                if (recyclerView != null) {
                                                    return new C9029f((ConstraintLayout) inflate, group, imageView, textView, textView2, group2, findViewById, c9015b1, recyclerView);
                                                }
                                            }
                                        }
                                        throw new NullPointerException("Missing required view with ID: ".concat(findViewById2.getResources().getResourceName(i2)));
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

    /* renamed from: com.truecaller.insights.ui.financepage.search.view.SearchTrxActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$b.class */
    public static final class C4086b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ ComponentActivity f12751b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4086b(ComponentActivity componentActivity) {
            super(0);
            this.f12751b = componentActivity;
        }

        public Object invoke() {
            return this.f12751b.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: com.truecaller.insights.ui.financepage.search.view.SearchTrxActivity$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$c.class */
    public static final class C4087c extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ ComponentActivity f12752b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4087c(ComponentActivity componentActivity) {
            super(0);
            this.f12752b = componentActivity;
        }

        public Object invoke() {
            C26993b1 viewModelStore = this.f12752b.getViewModelStore();
            l.d(viewModelStore, "viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: com.truecaller.insights.ui.financepage.search.view.SearchTrxActivity$d */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d.class */
    public static final class C4088d extends m implements s1.z.b.l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4088d() {
            super(1);
            SearchTrxActivity.this = r4;
        }

        /* renamed from: d */
        public Object m35198d(Object obj) {
            String str = (String) obj;
            l.e(str, SearchIntents.EXTRA_QUERY);
            SearchTrxActivity searchTrxActivity = SearchTrxActivity.this;
            int i = SearchTrxActivity.f12745h;
            C9029f m35201pa = searchTrxActivity.m35201pa();
            if (str.length() < 2) {
                Group group = m35201pa.f27466b;
                l.d(group, "emptyStateGroup");
                C19286f.m13684T(group);
                Group group2 = m35201pa.f27467c;
                l.d(group2, "itemStateGroup");
                C19286f.m13689O(group2);
                SearchTrxActivity.this.m35200qa().m35202c("");
            } else {
                Group group3 = m35201pa.f27466b;
                l.d(group3, "emptyStateGroup");
                C19286f.m13689O(group3);
                Group group4 = m35201pa.f27467c;
                l.d(group4, "itemStateGroup");
                C19286f.m13684T(group4);
                SearchTrxActivity.this.m35200qa().m35202c(str);
            }
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [e.a.c.a.d.f.c.a, androidx.recyclerview.widget.RecyclerView$g] */
    public void onCreate(Bundle bundle) {
        SearchTrxActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9029f m35201pa = m35201pa();
        l.d(m35201pa, "binding");
        setContentView(m35201pa.f27465a);
        SearchTrxViewModel m35200qa = m35200qa();
        AbstractC27028u lifecycle = getLifecycle();
        l.d(lifecycle, "this.lifecycle");
        Objects.requireNonNull(m35200qa);
        l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m35200qa.f12743g);
        lifecycle.mo988a(m35200qa);
        C9029f m35201pa2 = m35201pa();
        C9029f m35201pa3 = m35201pa();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        RecyclerView recyclerView = m35201pa3.f27470f;
        l.d(recyclerView, "trxRv");
        ?? r0 = this.f12746d;
        if (r0 == 0) {
            l.l("trxAdapter");
            throw null;
        }
        recyclerView.setAdapter(r0);
        RecyclerView recyclerView2 = m35201pa3.f27470f;
        l.d(recyclerView2, "trxRv");
        recyclerView2.setLayoutManager(linearLayoutManager);
        RecyclerView recyclerView3 = m35201pa3.f27470f;
        l.d(recyclerView3, "trxRv");
        FloatingActionButton floatingActionButton = m35201pa3.f27468d;
        l.d(floatingActionButton, "scrollUp");
        C10480a.m26060I2(recyclerView3, linearLayoutManager, floatingActionButton, C8935c.f27216b);
        SearchEditText searchEditText = m35201pa2.f27469e.f27385b;
        l.d(searchEditText, "searchCon.searchBar");
        C19286f.m13680X(searchEditText, true, 500L);
        m35201pa2.f27469e.f27384a.setOnClickListener(new View$OnClickListenerC8936d(m35201pa2, this));
        m35199ra();
        m35201pa().f27469e.f27385b.addTextChangedListener(this.f12749g);
        m35200qa().f12738b.m42867f(this, new C8938f(this));
    }

    public void onDestroy() {
        SearchTrxActivity.super.onDestroy();
        m35201pa().f27469e.f27385b.removeTextChangedListener(this.f12749g);
    }

    public void onResume() {
        SearchTrxActivity.super.onResume();
        m35199ra();
    }

    /* renamed from: pa */
    public final C9029f m35201pa() {
        return (C9029f) this.f12748f.getValue();
    }

    /* renamed from: qa */
    public final SearchTrxViewModel m35200qa() {
        return (SearchTrxViewModel) this.f12747e.getValue();
    }

    /* renamed from: ra */
    public final void m35199ra() {
        C9029f m35201pa = m35201pa();
        C8929a c8929a = this.f12746d;
        if (c8929a == null) {
            l.l("trxAdapter");
            throw null;
        } else if (c8929a.getItemCount() > 0) {
            Group group = m35201pa.f27466b;
            l.d(group, "emptyStateGroup");
            C19286f.m13689O(group);
            Group group2 = m35201pa.f27467c;
            l.d(group2, "itemStateGroup");
            C19286f.m13684T(group2);
        } else {
            Group group3 = m35201pa.f27466b;
            l.d(group3, "emptyStateGroup");
            C19286f.m13684T(group3);
            Group group4 = m35201pa.f27467c;
            l.d(group4, "itemStateGroup");
            C19286f.m13689O(group4);
            m35201pa.f27470f.removeAllViewsInLayout();
        }
    }
}
