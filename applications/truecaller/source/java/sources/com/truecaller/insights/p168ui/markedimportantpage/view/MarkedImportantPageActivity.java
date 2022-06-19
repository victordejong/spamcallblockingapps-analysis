package com.truecaller.insights.p168ui.markedimportantpage.view;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.markedimportantpage.presentation.MarkedImportantViewModel;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p437c.p438a.p477g.C9017c;
import p193e.p194a.p437c.p438a.p477g.C9061p1;
import p193e.p194a.p437c.p438a.p487k.p488a.C9191a;
import p193e.p194a.p437c.p438a.p487k.p488a.C9194b;
import p193e.p194a.p437c.p438a.p487k.p490c.C9213d;
import p193e.p194a.p437c.p438a.p487k.p491d.C9215b;
import p193e.p194a.p437c.p438a.p487k.p492e.C9219a;
import p193e.p194a.p437c.p438a.p487k.p492e.C9220b;
import p193e.p194a.p437c.p438a.p487k.p492e.C9221c;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001d\u0010,\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u0014\u001a\u0004\b*\u0010+¨\u0006."}, d2 = {"Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Le/a/c/a/g/c;", "d", "Ls1/g;", "pa", "()Le/a/c/a/g/c;", "binding", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/c/a/k/d/b;", C22021b.f61237c, "Le/a/c/a/k/d/b;", "getListAdapter", "()Le/a/c/a/k/d/b;", "setListAdapter", "(Le/a/c/a/k/d/b;)V", "listAdapter", "Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;", AbstractC2405c.f7629a, "qa", "()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;", "viewModel", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.markedimportantpage.view.MarkedImportantPageActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity.class */
public final class MarkedImportantPageActivity extends h {

    /* renamed from: e */
    public static final /* synthetic */ int f12842e = 0;
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f12843a;
    @Inject

    /* renamed from: b */
    public C9215b f12844b;

    /* renamed from: c */
    public final g f12845c = C25225a.m3978P1(new C4108b());

    /* renamed from: d */
    public final g f12846d = C25225a.m3982O1(s1.h.c, new C4107a(this));

    /* renamed from: com.truecaller.insights.ui.markedimportantpage.view.MarkedImportantPageActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity$a.class */
    public static final class C4107a extends m implements a<C9017c> {

        /* renamed from: b */
        public final /* synthetic */ h f12847b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4107a(h hVar) {
            super(0);
            this.f12847b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12847b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4078R.layout.activity_marked_important_page, (ViewGroup) null, false);
            int i = C4078R.C4080id.emptyState;
            View findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                C9061p1 m27886a = C9061p1.m27886a(findViewById);
                ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                i = C4078R.C4080id.markedImportantList;
                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(i);
                if (recyclerView != null) {
                    i = C4078R.C4080id.toolBar;
                    MaterialToolbar findViewById2 = inflate.findViewById(i);
                    if (findViewById2 != null) {
                        return new C9017c(constraintLayout, m27886a, constraintLayout, recyclerView, findViewById2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.insights.ui.markedimportantpage.view.MarkedImportantPageActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity$b.class */
    public static final class C4108b extends m implements a<MarkedImportantViewModel> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4108b() {
            super(0);
            MarkedImportantPageActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.insights.ui.markedimportantpage.view.MarkedImportantPageActivity, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = MarkedImportantPageActivity.this;
            C26986a1.AbstractC26987b abstractC26987b = r0.f12843a;
            if (abstractC26987b == null) {
                l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = MarkedImportantViewModel.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (MarkedImportantViewModel.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, MarkedImportantViewModel.class) : abstractC26987b.create(MarkedImportantViewModel.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            l.d(abstractC27040y0, "ViewModelProvider(this, …antViewModel::class.java)");
            return (MarkedImportantViewModel) abstractC27040y0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        MarkedImportantPageActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9017c m35163pa = m35163pa();
        l.d(m35163pa, "binding");
        setContentView(m35163pa.f27405a);
        Long valueOf = Long.valueOf(getIntent().getLongExtra("conversation_id", -1L));
        if (!(valueOf.longValue() != -1)) {
            valueOf = null;
        }
        C9194b c9194b = new C9194b(valueOf);
        AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        AbstractC8412c m15209q = C18334g0.m15209q(this);
        C25225a.m3846s(c9194b, C9194b.class);
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        C25225a.m3846s(m15209q, AbstractC8412c.class);
        C9191a c9191a = new C9191a(c9194b, abstractC10451a, abstractC10261a, m15209q, null);
        this.f12843a = (C26986a1.AbstractC26987b) c9191a.f27950m.get();
        this.f12844b = (C9215b) c9191a.f27952o.get();
        C9017c m35163pa2 = m35163pa();
        C9215b c9215b = this.f12844b;
        if (c9215b == null) {
            l.l("listAdapter");
            throw null;
        }
        MarkedImportantViewModel m35162qa = m35162qa();
        l.e(m35162qa, "importantMessageMarker");
        c9215b.f28000a = m35162qa;
        RecyclerView recyclerView = m35163pa2.f27408d;
        l.d(recyclerView, "markedImportantList");
        if (recyclerView.getAdapter() == null) {
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
            RecyclerView recyclerView2 = m35163pa2.f27408d;
            l.d(recyclerView2, "markedImportantList");
            C9215b c9215b2 = this.f12844b;
            if (c9215b2 == null) {
                l.l("listAdapter");
                throw null;
            }
            recyclerView2.setAdapter(c9215b2);
            RecyclerView recyclerView3 = m35163pa2.f27408d;
            l.d(recyclerView3, "markedImportantList");
            recyclerView3.setLayoutManager(linearLayoutManager);
        }
        setSupportActionBar(m35163pa().f27409e);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
            supportActionBar.mo3552o(true);
        }
        C27010k0<List<AdapterItem>> c27010k0 = m35162qa().f12824b;
        C9215b c9215b3 = this.f12844b;
        if (c9215b3 == null) {
            l.l("listAdapter");
            throw null;
        }
        c27010k0.m42867f(this, new C9221c(new C9219a(c9215b3)));
        m35162qa().f12825c.m42867f(this, new C9221c(new C9220b(this)));
        MarkedImportantViewModel m35162qa2 = m35162qa();
        AbstractC27028u lifecycle = getLifecycle();
        l.d(lifecycle, "lifecycle");
        Objects.requireNonNull(m35162qa2);
        l.e(lifecycle, "lifecycle");
        lifecycle.mo988a(m35162qa2.f12828f);
        lifecycle.mo988a(m35162qa2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuItem findItem;
        MenuItem findItem2;
        C9213d c9213d = m35162qa().f12823a.f27993a;
        boolean z = false;
        if (c9213d != null) {
            List<AbstractC9235b.C9238c> list = c9213d.f27999b;
            z = false;
            if (list != null) {
                z = false;
                if (!list.isEmpty()) {
                    z = true;
                }
            }
        }
        if (z) {
            getMenuInflater().inflate(C4078R.C4082menu.marked_important_menu, menu);
        }
        if (menu != null && (findItem2 = menu.findItem(C4078R.C4080id.unMarkAllMenuItem)) != null) {
            findItem2.setIcon(C17422k.m16104N(this, C4078R.C4079drawable.ic_un_star, C4078R.attr.tcx_textPrimary));
        }
        if (menu != null && (findItem = menu.findItem(C4078R.C4080id.option)) != null) {
            findItem.setIcon(C17422k.m16104N(this, C4078R.C4079drawable.ic_overflow_menu_24dp, C4078R.attr.tcx_textSecondary));
        }
        return MarkedImportantPageActivity.super.onCreateOptionsMenu(menu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        int itemId = menuItem.getItemId();
        if (itemId == C4078R.C4080id.unMarkAllMenuItem) {
            MarkedImportantViewModel m35162qa = m35162qa();
            C9213d c9213d = m35162qa.f12823a.f27993a;
            if (c9213d != null) {
                List<AbstractC9235b.C9238c> list = c9213d.f27999b;
                m35162qa.m35174g(false, list, i.a1(list));
            }
        } else if (itemId == 16908332) {
            finish();
        }
        return MarkedImportantPageActivity.super.onOptionsItemSelected(menuItem);
    }

    public void onStart() {
        MarkedImportantPageActivity.super.onStart();
        m35162qa().m35176e();
    }

    /* renamed from: pa */
    public final C9017c m35163pa() {
        return (C9017c) this.f12846d.getValue();
    }

    /* renamed from: qa */
    public final MarkedImportantViewModel m35162qa() {
        return (MarkedImportantViewModel) this.f12845c.getValue();
    }
}
