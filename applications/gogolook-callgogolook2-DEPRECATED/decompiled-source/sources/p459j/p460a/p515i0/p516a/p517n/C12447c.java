package p459j.p460a.p515i0.p516a.p517n;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.OnAdRequestToLoadCallback;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p515i0.p516a.C12425g;
import p459j.p460a.p515i0.p516a.p517n.C12441b;
import p459j.p460a.p515i0.p516a.p517n.C12458g;
import p459j.p460a.p518j.AbstractC12475b;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14097o1;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p614m.C14658c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018�� C2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001CB\u0005¢\u0006\u0002\u0010\u0005J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0014J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0016H\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0016J\u001a\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0014J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0016J\u0012\u0010*\u001a\u00020\u001d2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\b\u0010+\u001a\u00020\u001dH\u0016J\b\u0010,\u001a\u00020\u001dH\u0016J\b\u0010-\u001a\u00020\u001dH\u0016J\b\u0010.\u001a\u00020\u001dH\u0016J\b\u0010/\u001a\u00020\u001dH\u0002J\u0010\u00100\u001a\u00020\u001d2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020\u001d2\u0006\u00104\u001a\u00020'H\u0016J\u0016\u00105\u001a\u00020\u001d2\f\u00106\u001a\b\u0012\u0004\u0012\u00020807H\u0016J\b\u00109\u001a\u00020\u001dH\u0016J\b\u0010:\u001a\u00020\u001dH\u0016J\u0010\u0010;\u001a\u00020\u001d2\u0006\u0010<\u001a\u00020=H\u0016J&\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020#2\u0006\u0010@\u001a\u00020\u001a2\f\u0010A\u001a\b\u0012\u0004\u0012\u00020=07H\u0016J\b\u0010B\u001a\u00020\u001dH\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000b\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��¨\u0006D"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$View;", "Lgogolook/callgogolook2/app/ContextInterface;", "Lgogolook/callgogolook2/ad/OnAdRequestToLoadCallback;", "()V", "adPresenter", "Lgogolook/callgogolook2/offline/offlinedb/OfflineDbAdPresenter;", "getAdPresenter", "()Lgogolook/callgogolook2/offline/offlinedb/OfflineDbAdPresenter;", "adPresenter$delegate", "Lkotlin/Lazy;", "presenter", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionPresenter;", "protectionAdapter", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter;", "getProtectionAdapter", "()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter;", "protectionAdapter$delegate", "subscription", "Lrx/Subscription;", "getActivityContext", "Landroid/content/Context;", "getAdUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "getLayoutResource", "", "getViewContext", "onAdRequestToLoad", "", "adUnit", "container", "Landroid/view/ViewGroup;", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "", "item", "Landroid/view/MenuItem;", "onCreate", "onDestroy", "onResume", "onStart", "onStop", "registerBus", "setExpiredStatus", "expiredStatus", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$DbExpiredStatus;", "setIsDbPremium", "isDbPremium", "setNumberInfo", "itemInfo", "", "Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionContract$NumberItemInfo;", "setShowManualUpdateTooltip", "setShowPremiumTooltip", "setUpdateRule", "rule", "", "showUpdateRuleSetting", "anchorView", "currentIndex", "itemList", "unregisterBus", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.n.c */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/c.class */
public final class C12447c extends AbstractC12476c implements C12441b.AbstractC12446e, AbstractC12475b, OnAdRequestToLoadCallback {

    /* renamed from: k */
    public static final /* synthetic */ AbstractC14906i[] f28057k;

    /* renamed from: l */
    public static final C12448a f28058l = new C12448a(null);

    /* renamed from: h */
    public Subscription f28061h;

    /* renamed from: j */
    public HashMap f28063j;

    /* renamed from: f */
    public final AbstractC14974f f28059f = C14975g.m662a(new C12450c());

    /* renamed from: g */
    public final C12455f f28060g = new C12455f(this);

    /* renamed from: i */
    public final AbstractC14974f f28062i = C14975g.m662a(new C12449b());

    /* renamed from: j.a.i0.a.n.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/c$a.class */
    public static final class C12448a {
        public C12448a() {
        }

        public /* synthetic */ C12448a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C12447c m6125a() {
            return new C12447c();
        }
    }

    /* renamed from: j.a.i0.a.n.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/c$b.class */
    public static final class C12449b extends AbstractC15150l implements AbstractC15107a<C12425g> {
        public C12449b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12425g invoke() {
            return new C12425g(C12447c.this);
        }
    }

    /* renamed from: j.a.i0.a.n.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/c$c.class */
    public static final class C12450c extends AbstractC15150l implements AbstractC15107a<C12458g> {
        public C12450c() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12458g invoke() {
            return new C12458g(C12447c.this);
        }
    }

    /* renamed from: j.a.i0.a.n.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/c$d.class */
    public static final class C12451d<T> implements Action1<Object> {
        public C12451d() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14097o1) {
                C12447c.this.f28060g.m6120e();
            }
        }
    }

    /* renamed from: j.a.i0.a.n.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/n/c$e.class */
    public static final class C12452e implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ PopupWindow f28067a;

        /* renamed from: b */
        public final /* synthetic */ C12447c f28068b;

        /* renamed from: c */
        public final /* synthetic */ int f28069c;

        public C12452e(PopupWindow popupWindow, C12447c cVar, C14658c cVar2, int i, View view) {
            this.f28067a = popupWindow;
            this.f28068b = cVar;
            this.f28069c = i;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            C14063l4.m2665d(i);
            this.f28068b.m6140X().m6102a(C14063l4.m2675b(i));
            this.f28067a.dismiss();
            if (this.f28069c != i) {
                C12470h.m6076b(i);
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12447c.class), "protectionAdapter", "getProtectionAdapter()Lgogolook/callgogolook2/offline/offlinedb/protection/ProtectionRecyclerViewAdapter;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C12447c.class), "adPresenter", "getAdPresenter()Lgogolook/callgogolook2/offline/offlinedb/OfflineDbAdPresenter;");
        C15131a0.m412a(sVar2);
        f28057k = new AbstractC14906i[]{sVar, sVar2};
    }

    /* renamed from: a0 */
    public static final C12447c m6132a0() {
        return f28058l.m6125a();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f28063j;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.protection_fragment;
    }

    /* renamed from: V */
    public final C12425g m6142V() {
        AbstractC14974f fVar = this.f28062i;
        AbstractC14906i iVar = f28057k[1];
        return (C12425g) fVar.getValue();
    }

    /* renamed from: W */
    public final AdUnit m6141W() {
        return AdUnit.PROTECTION_PAGE;
    }

    /* renamed from: X */
    public final C12458g m6140X() {
        AbstractC14974f fVar = this.f28059f;
        AbstractC14906i iVar = f28057k[0];
        return (C12458g) fVar.getValue();
    }

    /* renamed from: Y */
    public final void m6139Y() {
        this.f28061h = C14037j3.m2731a().mo2703a((Action1) new C12451d());
    }

    /* renamed from: Z */
    public final void m6138Z() {
        Subscription subscription = this.f28061h;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: a */
    public Context mo6137a() {
        return getContext();
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: a */
    public void mo6136a(View view, int i, List<String> list) {
        C15149k.m377b(view, "anchorView");
        C15149k.m377b(list, "itemList");
        C14658c cVar = new C14658c(list, i);
        Context context = getContext();
        if (context != null) {
            PopupWindow popupWindow = new PopupWindow();
            ListView listView = new ListView(context);
            listView.setAdapter((ListAdapter) cVar);
            listView.setPadding(0, C14217x3.m2201a(8.0f), 0, C14217x3.m2201a(8.0f));
            listView.setDivider(null);
            listView.setOnItemClickListener(new C12452e(popupWindow, this, cVar, i, view));
            popupWindow.setContentView(listView);
            C15149k.m383a((Object) context, "context");
            popupWindow.setWidth(context.getResources().getDimensionPixelSize(R$dimen.popup_menu_width));
            popupWindow.setHeight(-2);
            popupWindow.setOutsideTouchable(true);
            if (C14017g4.m2805s()) {
                popupWindow.setElevation(C14217x3.m2201a(4.0f));
            }
            popupWindow.setBackgroundDrawable(new ColorDrawable(-1));
            popupWindow.showAsDropDown(view, 0, -C14217x3.m2201a(20.0f), 8388613);
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        m6140X().m6105a((C12458g.AbstractC12463e) this.f28060g);
        m6140X().m6107a((C12458g.AbstractC12461c) this.f28060g);
        m6140X().m6108a((C12458g.AbstractC12460b) this.f28060g);
        m6140X().m6106a((C12458g.AbstractC12462d) this.f28060g);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.rvData);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(m6140X());
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        RecyclerView.ItemAnimator itemAnimator2 = itemAnimator;
        if (!(itemAnimator instanceof SimpleItemAnimator)) {
            itemAnimator2 = null;
        }
        SimpleItemAnimator simpleItemAnimator = (SimpleItemAnimator) itemAnimator2;
        if (simpleItemAnimator != null) {
            simpleItemAnimator.setSupportsChangeAnimations(false);
        }
    }

    @Override // gogolook.callgogolook2.p074ad.OnAdRequestToLoadCallback
    /* renamed from: a */
    public void mo6135a(AdUnit adUnit, ViewGroup viewGroup) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(viewGroup, "container");
        C12425g V = m6142V();
        V.m6196a(adUnit, viewGroup);
        V.m6194b();
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: a */
    public void mo6134a(C12441b.C12443b bVar) {
        C15149k.m377b(bVar, "expiredStatus");
        m6140X().m6109a(bVar);
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: b */
    public void mo6130b(String str) {
        C15149k.m377b(str, "rule");
        m6140X().m6102a(str);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f28063j == null) {
            this.f28063j = new HashMap();
        }
        View view = (View) this.f28063j.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f28063j.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: c */
    public void mo6129c(boolean z) {
        m6140X().m6100a(z);
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: d */
    public void mo6128d(List<C12441b.C12444c> list) {
        C15149k.m377b(list, "itemInfo");
        m6140X().m6101a(list);
    }

    @Override // p459j.p460a.p518j.AbstractC12475b
    /* renamed from: e */
    public Context mo6072e() {
        return getContext();
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: n */
    public void mo6127n() {
        m6140X().m6089g();
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m6139Y();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m6138Z();
        m6142V().m6197a(m6141W());
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m6140X().m6090f();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f28060g.m6120e();
        m6142V().m6190c(m6141W());
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C12470h.m6080a();
        m6142V().m6188d(m6141W());
    }

    @Override // p459j.p460a.p515i0.p516a.p517n.C12441b.AbstractC12446e
    /* renamed from: s */
    public void mo6126s() {
        m6140X().m6088h();
    }
}
