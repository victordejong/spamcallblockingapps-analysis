package p459j.p460a.p596x.p597k;

import android.content.Context;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p576w.p580q.C13828a;
import p459j.p460a.p576w.p580q.C13832b;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p596x.p597k.C14401k;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� 82\u00020\u00012\u00020\u0002:\u00018B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0017H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\n\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u001a\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0012\u0010'\u001a\u00020\u00172\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010(\u001a\u00020\u0017H\u0016J\b\u0010)\u001a\u00020\u0017H\u0016J\u0016\u0010*\u001a\u00020\u00172\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00120,H\u0016J \u0010-\u001a\u00020\u00172\u0006\u0010.\u001a\u00020\u001a2\u0006\u0010/\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u0012H\u0016J\u0010\u00101\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u0012H\u0016J\u001e\u00103\u001a\u00020\u00172\u0014\u00104\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u001205H\u0016J\u0010\u00106\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u0012H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\t\u001a\u0004\b\u0013\u0010\u0014¨\u00069"}, m815d2 = {"Lgogolook/callgogolook2/intro/iap/IapPromoFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/intro/iap/IapPromoContract$View;", "()V", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "getCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "coroutineScope$delegate", "Lkotlin/Lazy;", "iapPromoAdapter", "Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter;", "getIapPromoAdapter", "()Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter;", "iapPromoAdapter$delegate", "presenter", "Lgogolook/callgogolook2/intro/iap/IapPromoContract$Presenter;", "sourceFrom", "", "getSourceFrom", "()Ljava/lang/String;", "sourceFrom$delegate", "executeDeferredAction", "", "finishActivity", "getLayoutResource", "", "getSource", "getViewContext", "Landroid/content/Context;", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "", "item", "Landroid/view/MenuItem;", "onCreate", "onDestroy", "onStart", "setFeatures", "items", "", "setHeader", "icon", "title", MraidParser.MRAID_COMMAND_CLOSE, "setPositiveText", "cta", "setPrice", "pricing", "Lkotlin/Pair;", "setSubtitle", "subtitle", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.x.k.g */
/* loaded from: classes2-dex2jar.jar:j/a/x/k/g.class */
public final class C14390g extends AbstractC12476c implements AbstractC14386c {

    /* renamed from: k */
    public static final /* synthetic */ AbstractC14906i[] f32222k;

    /* renamed from: l */
    public static final C14391a f32223l = new C14391a(null);

    /* renamed from: g */
    public AbstractC14384b f32225g;

    /* renamed from: j */
    public HashMap f32228j;

    /* renamed from: f */
    public final AbstractC14974f f32224f = C14975g.m662a(new C14397g());

    /* renamed from: h */
    public final AbstractC14974f f32226h = C14975g.m662a(C14393c.f32230a);

    /* renamed from: i */
    public final AbstractC14974f f32227i = C14975g.m662a(C14392b.f32229a);

    /* renamed from: j.a.x.k.g$a */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$a.class */
    public static final class C14391a {
        public C14391a() {
        }

        public /* synthetic */ C14391a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14390g m1404a(String str) {
            C15149k.m377b(str, "source");
            C14390g gVar = new C14390g();
            Bundle bundle = new Bundle();
            bundle.putString("source", str);
            gVar.setArguments(bundle);
            return gVar;
        }
    }

    /* renamed from: j.a.x.k.g$b */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$b.class */
    public static final class C14392b extends AbstractC15150l implements AbstractC15107a<CoroutineScope> {

        /* renamed from: a */
        public static final C14392b f32229a = new C14392b();

        public C14392b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)));
        }
    }

    /* renamed from: j.a.x.k.g$c */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$c.class */
    public static final class C14393c extends AbstractC15150l implements AbstractC15107a<C14401k> {

        /* renamed from: a */
        public static final C14393c f32230a = new C14393c();

        public C14393c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C14401k invoke() {
            return new C14401k();
        }
    }

    /* renamed from: j.a.x.k.g$d */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$d.class */
    public static final class View$OnClickListenerC14394d implements View.OnClickListener {
        public View$OnClickListenerC14394d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C15149k.m383a((Object) view, "it");
            view.setClickable(false);
            C14388e.m1426a(1);
            C14390g.m1411a(C14390g.this).mo1434c();
        }
    }

    /* renamed from: j.a.x.k.g$e */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$e.class */
    public static final class View$OnClickListenerC14395e implements View.OnClickListener {
        public View$OnClickListenerC14395e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C15149k.m383a((Object) view, "it");
            view.setClickable(false);
            C14388e.m1426a(2);
            C14390g.m1411a(C14390g.this).mo1436b();
        }
    }

    /* renamed from: j.a.x.k.g$f */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$f.class */
    public static final class C14396f implements C14401k.AbstractC14403b {
        public C14396f() {
        }

        @Override // p459j.p460a.p596x.p597k.C14401k.AbstractC14403b
        /* renamed from: a */
        public void mo1391a() {
            C14388e.m1426a(0);
            C14390g.m1411a(C14390g.this).mo1438a();
        }
    }

    /* renamed from: j.a.x.k.g$g */
    /* loaded from: classes2-dex2jar.jar:j/a/x/k/g$g.class */
    public static final class C14397g extends AbstractC15150l implements AbstractC15107a<String> {
        public C14397g() {
            super(0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
            if (r4 != null) goto L_0x001d;
         */
        @Override // p626l.p641z.p642c.AbstractC15107a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String invoke() {
            /*
                r3 = this;
                r0 = r3
                j.a.x.k.g r0 = p459j.p460a.p596x.p597k.C14390g.this
                android.os.Bundle r0 = r0.getArguments()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L_0x001a
                r0 = r4
                java.lang.String r1 = "source"
                java.lang.String r0 = r0.getString(r1)
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L_0x001a
                goto L_0x001d
            L_0x001a:
                java.lang.String r0 = "onboarding_v2"
                r4 = r0
            L_0x001d:
                r0 = r4
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p596x.p597k.C14390g.C14397g.invoke():java.lang.String");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14390g.class), "sourceFrom", "getSourceFrom()Ljava/lang/String;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C14390g.class), "iapPromoAdapter", "getIapPromoAdapter()Lgogolook/callgogolook2/intro/iap/IapPromoRecyclerViewAdapter;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C14390g.class), "coroutineScope", "getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;");
        C15131a0.m412a(sVar3);
        f32222k = new AbstractC14906i[]{sVar, sVar2, sVar3};
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14384b m1411a(C14390g gVar) {
        AbstractC14384b bVar = gVar.f32225g;
        if (bVar != null) {
            return bVar;
        }
        C15149k.m373d("presenter");
        throw null;
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: C */
    public void mo1421C() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f32228j;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    public void mo1419K() {
        super.mo1419K();
        AbstractC14384b bVar = this.f32225g;
        if (bVar != null) {
            bVar.mo1431e();
            TextView textView = (TextView) mo1408c(R$id.tvPositiveCta);
            C15149k.m383a((Object) textView, "tvPositiveCta");
            textView.setClickable(true);
            TextView textView2 = (TextView) mo1408c(R$id.tvNegative);
            C15149k.m383a((Object) textView2, "tvNegative");
            textView2.setClickable(true);
            return;
        }
        C15149k.m373d("presenter");
        throw null;
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.iap_promo_fragment_v2;
    }

    /* renamed from: V */
    public final CoroutineScope m1417V() {
        AbstractC14974f fVar = this.f32227i;
        AbstractC14906i iVar = f32222k[2];
        return (CoroutineScope) fVar.getValue();
    }

    /* renamed from: W */
    public final C14401k m1416W() {
        AbstractC14974f fVar = this.f32226h;
        AbstractC14906i iVar = f32222k[1];
        return (C14401k) fVar.getValue();
    }

    /* renamed from: X */
    public final String m1415X() {
        AbstractC14974f fVar = this.f32224f;
        AbstractC14906i iVar = f32222k[0];
        return (String) fVar.getValue();
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: a */
    public Context mo1414a() {
        return getContext();
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: a */
    public void mo1413a(int i, String str, String str2) {
        C15149k.m377b(str, "title");
        C15149k.m377b(str2, MraidParser.MRAID_COMMAND_CLOSE);
        m1416W().m1399a(Integer.valueOf(i));
        m1416W().m1392c(str);
        m1416W().m1398a(str2);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        m1416W().m1400a(new C14396f());
        ((TextView) view.findViewById(R$id.tvPositiveCta)).setOnClickListener(new View$OnClickListenerC14394d());
        TextView textView = (TextView) view.findViewById(R$id.tvNegative);
        C15149k.m383a((Object) textView, "tvNegative");
        AbstractC14384b bVar = this.f32225g;
        if (bVar != null) {
            textView.setText(bVar.mo1432d());
            ((TextView) view.findViewById(R$id.tvNegative)).setOnClickListener(new View$OnClickListenerC14395e());
            RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.rvData);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(m1416W());
            CardView cardView = (CardView) view.findViewById(R$id.cvIapCta);
            C15149k.m383a((Object) cardView, "cvIapCta");
            cardView.setCardElevation(C14017g4.m2805s() ? view.getResources().getDimension(R$dimen.iap_card_view_elevation) : 0.0f);
            return;
        }
        C15149k.m373d("presenter");
        throw null;
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: a */
    public void mo1410a(String str) {
        C15149k.m377b(str, "subtitle");
        m1416W().m1394b(str);
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: a */
    public void mo1409a(C14978j<String, String> jVar) {
        C15149k.m377b(jVar, "pricing");
        m1416W().m1396a(jVar);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f32228j == null) {
            this.f32228j = new HashMap();
        }
        View view = (View) this.f32228j.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f32228j.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: d */
    public void mo1407d(String str) {
        C15149k.m377b(str, "cta");
        TextView textView = (TextView) mo1408c(R$id.tvPositiveCta);
        C15149k.m383a((Object) textView, "tvPositiveCta");
        textView.setText(str);
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: f */
    public String mo1406f() {
        return m1415X();
    }

    @Override // p459j.p460a.p596x.p597k.AbstractC14386c
    /* renamed from: i */
    public void mo1405i(List<String> list) {
        C15149k.m377b(list, "items");
        m1416W().m1397a(list);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        AbstractC14384b bVar;
        super.onCreate(bundle);
        String X = m1415X();
        int hashCode = X.hashCode();
        if (hashCode != -564082449) {
            if (hashCode == 1097519758 && X.equals("restore")) {
                bVar = new C13832b(this);
            }
            bVar = new C14380a(this, m1417V());
        } else {
            if (X.equals("open_app_v2")) {
                bVar = new C13828a(this, m1417V());
            }
            bVar = new C14380a(this, m1417V());
        }
        this.f32225g = bVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (CoroutineScopeKt.isActive(m1417V())) {
            CoroutineScopeKt.cancel$default(m1417V(), null, 1, null);
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        FragmentActivity activity = getActivity();
        if (activity != null && (window = activity.getWindow()) != null) {
            if (C14017g4.m2803u()) {
                C14123p4.m2442a(window, -1);
                C14197v4.m2248b(window);
                return;
            }
            C14123p4.m2429b(window, C14167t.m2315a(2131100101));
        }
    }
}
