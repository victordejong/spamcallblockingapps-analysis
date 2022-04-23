package p459j.p460a.p576w.p579p;

import android.content.Context;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p576w.C13755l;
import p459j.p460a.p576w.p578o.C13797d;
import p459j.p460a.p576w.p579p.C13820i;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p587d5.C13976c;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� %2\u00020\u00012\u00020\u0002:\u0001%B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0014J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u001c\u001a\u00020\u0011H\u0016J\b\u0010\u001d\u001a\u00020\u0011H\u0016J\u0016\u0010\u001e\u001a\u00020\u00112\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 H\u0016J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��¨\u0006&"}, m815d2 = {"Lgogolook/callgogolook2/iap/premium/IapPremiumFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/iap/premium/IapPremiumContract$View;", "()V", "premiumAdapter", "Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter;", "getPremiumAdapter", "()Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter;", "premiumAdapter$delegate", "Lkotlin/Lazy;", "presenter", "Lgogolook/callgogolook2/iap/premium/IapPremiumPresenter;", "getLayoutResource", "", "getViewContext", "Landroid/content/Context;", "hideIapNotice", "", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "", "item", "Landroid/view/MenuItem;", "onCreate", "onPause", "onStart", "setPremiumItems", "result", "", "Lgogolook/callgogolook2/iap/premium/IapPremiumContract$PremiumItem;", "showIapNotice", "notice", "Lgogolook/callgogolook2/iap/model/IapNotice;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w.p.d */
/* loaded from: classes2-dex2jar.jar:j/a/w/p/d.class */
public final class C13808d extends AbstractC12476c implements AbstractC13807c {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f31023i;

    /* renamed from: j */
    public static final C13809a f31024j = new C13809a(null);

    /* renamed from: f */
    public final AbstractC14974f f31025f = C14975g.m662a(C13813e.f31030a);

    /* renamed from: g */
    public C13817h f31026g = new C13817h(this);

    /* renamed from: h */
    public HashMap f31027h;

    /* renamed from: j.a.w.p.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/d$a.class */
    public static final class C13809a {
        public C13809a() {
        }

        public /* synthetic */ C13809a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C13808d m3388a() {
            return new C13808d();
        }
    }

    /* renamed from: j.a.w.p.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/d$b.class */
    public static final class C13810b implements C13820i.AbstractC13822b {
        public C13810b() {
        }

        @Override // p459j.p460a.p576w.p579p.C13820i.AbstractC13822b
        /* renamed from: a */
        public void mo3368a(C13805a aVar) {
            C15149k.m377b(aVar, "premiumItem");
            C13808d.this.f31026g.m3384a(aVar);
        }
    }

    /* renamed from: j.a.w.p.d$c */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/d$c.class */
    public static final class C13811c implements C13820i.AbstractC13823c {
        public C13811c() {
        }

        @Override // p459j.p460a.p576w.p579p.C13820i.AbstractC13823c
        /* renamed from: a */
        public void mo3367a() {
            C13808d.this.f31026g.m3379b();
        }

        @Override // p459j.p460a.p576w.p579p.C13820i.AbstractC13823c
        /* renamed from: a */
        public void mo3366a(C13797d dVar) {
            C15149k.m377b(dVar, "notice");
            C13808d.this.f31026g.m3385a(dVar);
        }

        @Override // p459j.p460a.p576w.p579p.C13820i.AbstractC13823c
        public void onCloseClick() {
            C13808d.this.mo3389t();
            C13976c.f31384a.m9459a("iap_click_restore_subscription_close_time", (String) Long.valueOf(System.currentTimeMillis()));
            C13755l.m3513a(3);
        }
    }

    /* renamed from: j.a.w.p.d$d */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/d$d.class */
    public static final class C13812d extends AbstractC15037a implements CoroutineExceptionHandler {
        public C13812d(AbstractC15049g.AbstractC15054c cVar) {
            super(cVar);
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(AbstractC15049g gVar, Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: j.a.w.p.d$e */
    /* loaded from: classes2-dex2jar.jar:j/a/w/p/d$e.class */
    public static final class C13813e extends AbstractC15150l implements AbstractC15107a<C13820i> {

        /* renamed from: a */
        public static final C13813e f31030a = new C13813e();

        public C13813e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13820i invoke() {
            return new C13820i();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13808d.class), "premiumAdapter", "getPremiumAdapter()Lgogolook/callgogolook2/iap/premium/IapPremiumRecyclerViewAdapter;");
        C15131a0.m412a(sVar);
        f31023i = new AbstractC14906i[]{sVar};
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f31027h;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.iap_premium_fragment;
    }

    /* renamed from: V */
    public final C13820i m3394V() {
        AbstractC14974f fVar = this.f31025f;
        AbstractC14906i iVar = f31023i[0];
        return (C13820i) fVar.getValue();
    }

    @Override // p459j.p460a.p576w.p579p.AbstractC13807c
    /* renamed from: a */
    public Context mo3393a() {
        return getContext();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        m3394V().m3373a(new C13810b());
        m3394V().m3372a(new C13811c());
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.rvData);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(m3394V());
    }

    @Override // p459j.p460a.p576w.p579p.AbstractC13807c
    /* renamed from: b */
    public void mo3391b(C13797d dVar) {
        C15149k.m377b(dVar, "notice");
        m3394V().m3374a(dVar);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f31027h == null) {
            this.f31027h = new HashMap();
        }
        View view = (View) this.f31027h.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f31027h.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p576w.p579p.AbstractC13807c
    /* renamed from: g */
    public void mo3390g(List<C13805a> list) {
        C15149k.m377b(list, "result");
        m3394V().m3371a(list);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C13755l.m3511b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        CompletableJob Job$default;
        super.onStart();
        C13812d dVar = new C13812d(CoroutineExceptionHandler.Key);
        C13817h hVar = this.f31026g;
        Job$default = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        hVar.m3381a(CoroutineScopeKt.CoroutineScope(Job$default.plus(Dispatchers.getMain()).plus(dVar)));
        this.f31026g.m3387a();
    }

    @Override // p459j.p460a.p576w.p579p.AbstractC13807c
    /* renamed from: t */
    public void mo3389t() {
        m3394V().m3374a((C13797d) null);
    }
}
