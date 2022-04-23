package p459j.p460a.p503e0;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.ndp.WrappedLinearLayoutManager;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.ExperimentalCallEndNdpApi;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14035j1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14047k2;
import p459j.p460a.p582w0.C14056l;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.p590x4.C14247d;
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
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\b\u0018�� #2\u00020\u0001:\u0001#B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0003J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0017J\b\u0010\u0019\u001a\u00020\u000eH\u0016J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u000eH\u0016J\b\u0010\u001e\u001a\u00020\u000eH\u0016J\u001a\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010!\u001a\u00020\u000eH\u0002J\b\u0010\"\u001a\u00020\u000eH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NdpInfoFragment;", "Landroidx/fragment/app/Fragment;", "()V", "infoAdapter", "Lgogolook/callgogolook2/ndp/NdpInfoAdapter;", "getInfoAdapter", "()Lgogolook/callgogolook2/ndp/NdpInfoAdapter;", "infoAdapter$delegate", "Lkotlin/Lazy;", "subscription", "Lrx/Subscription;", "getAdUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "onAttach", "", "context", "Landroid/content/Context;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onReceivedRxEvent", NotificationCompat.CATEGORY_EVENT, "", "onStart", "onStop", "onViewCreated", "view", "registerBus", "unregisterBus", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.e */
/* loaded from: classes3-dex2jar.jar:j/a/e0/e.class */
public final class C12295e extends Fragment {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f27746d;

    /* renamed from: e */
    public static final C12296a f27747e = new C12296a(null);

    /* renamed from: a */
    public final AbstractC14974f f27748a = C14975g.m662a(new C12297b());

    /* renamed from: b */
    public Subscription f27749b;

    /* renamed from: c */
    public HashMap f27750c;

    /* renamed from: j.a.e0.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/e$a.class */
    public static final class C12296a {
        public C12296a() {
        }

        public /* synthetic */ C12296a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C12295e m6438a(String str, String str2, boolean z, @ExperimentalCallEndNdpApi AdUnit adUnit) {
            C15149k.m377b(str, "number");
            C15149k.m377b(str2, "e164");
            C15149k.m377b(adUnit, "adUnit");
            C12295e eVar = new C12295e();
            Bundle bundle = new Bundle();
            bundle.putString("arg_ad_unit", adUnit.m28821a());
            eVar.setArguments(bundle);
            return eVar;
        }
    }

    /* renamed from: j.a.e0.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/e$b.class */
    public static final class C12297b extends AbstractC15150l implements AbstractC15107a<C12271d> {
        public C12297b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C12271d invoke() {
            return new C12271d(C12295e.this.m6445K());
        }
    }

    /* renamed from: j.a.e0.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/e$c.class */
    public static final class C12298c extends C14056l {
        public C12298c() {
            super(null, 1, null);
        }

        @Override // p459j.p460a.p582w0.C14056l
        /* renamed from: c */
        public int mo2709c(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
            C15149k.m377b(adapter, "adapter");
            C15149k.m377b(viewHolder, "vh");
            int i2 = 0;
            if (!(adapter instanceof C12271d)) {
                return 0;
            }
            Integer valueOf = i > 0 ? Integer.valueOf(adapter.getItemViewType(i - 1)) : null;
            if (adapter.getItemViewType(i) == 100) {
                i2 = !((C12271d) adapter).m6500a() ? C14047k2.f31499f.m2714d() : C14047k2.f31499f.m2716b();
            } else if (valueOf == null || valueOf.intValue() != 100) {
                i2 = C14047k2.f31499f.m2714d();
            }
            return i2;
        }
    }

    /* renamed from: j.a.e0.e$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/e$d.class */
    public static final class C12299d<T> implements Action1<Object> {
        public C12299d() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (C14060l2.m2706a(C12295e.this)) {
                C12295e eVar = C12295e.this;
                C15149k.m383a(obj, NotificationCompat.CATEGORY_EVENT);
                eVar.m6439a(obj);
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12295e.class), "infoAdapter", "getInfoAdapter()Lgogolook/callgogolook2/ndp/NdpInfoAdapter;");
        C15131a0.m412a(sVar);
        f27746d = new AbstractC14906i[]{sVar};
    }

    /* renamed from: J */
    public void m6446J() {
        HashMap hashMap = this.f27750c;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @ExperimentalCallEndNdpApi
    /* renamed from: K */
    public final AdUnit m6445K() {
        AdUnit.Companion companion = AdUnit.Companion;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("arg_ad_unit") : null;
        if (string == null) {
            string = "";
        }
        return companion.m28820a(string);
    }

    /* renamed from: L */
    public final C12271d m6444L() {
        AbstractC14974f fVar = this.f27748a;
        AbstractC14906i iVar = f27746d[0];
        return (C12271d) fVar.getValue();
    }

    /* renamed from: M */
    public final void m6443M() {
        this.f27749b = C14037j3.m2731a().mo2703a((Action1) new C12299d());
    }

    /* renamed from: N */
    public final void m6442N() {
        Subscription subscription = this.f27749b;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    /* renamed from: a */
    public final void m6439a(Object obj) {
        if ((obj instanceof C14035j1) && getContext() != null) {
            C12271d L = m6444L();
            C12328l lVar = ((C14035j1) obj).f31477a;
            C15149k.m383a((Object) lVar, "event.model");
            L.m6486a(lVar);
            L.notifyDataSetChanged();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        C15149k.m377b(context, "context");
        super.onAttach(context);
        m6444L().m6483b(context);
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        View inflate = LayoutInflater.from(getContext()).inflate(R$layout.ndp_list_fragment_v2, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R$id.recycler_view);
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new WrappedLinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(m6444L());
            recyclerView.setBackgroundColor(C14167t.m2315a(2131099761));
            recyclerView.addItemDecoration(new C12298c());
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        m6444L().destroy();
        m6442N();
        m6446J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        C14247d.f31867v.m2040a(m6445K());
        Context context = getContext();
        if (context != null) {
            C12271d L = m6444L();
            C15149k.m383a((Object) context, "it");
            L.m6496a(context);
        }
        m6444L().m6484b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C14247d.f31867v.m2031b(m6445K());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        m6443M();
    }
}
