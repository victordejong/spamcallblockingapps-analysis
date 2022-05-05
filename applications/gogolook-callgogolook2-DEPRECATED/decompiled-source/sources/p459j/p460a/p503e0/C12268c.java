package p459j.p460a.p503e0;

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
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14035j1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14046k1;
import p459j.p460a.p582w0.C14060l2;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0006\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0017J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0017J\b\u0010\u0013\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001a\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0019\u001a\u00020\nH\u0002J\b\u0010\u001a\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NdpHistoryFragment;", "Landroidx/fragment/app/Fragment;", "()V", "adapter", "Lgogolook/callgogolook2/ndp/HistoryAdapterV2;", "subscription", "Lrx/Subscription;", "getNumber", "", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroyView", "onReceivedRxEvent", NotificationCompat.CATEGORY_EVENT, "", "onViewCreated", "view", "registerBus", "unregisterBus", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.c */
/* loaded from: classes3-dex2jar.jar:j/a/e0/c.class */
public final class C12268c extends Fragment {

    /* renamed from: d */
    public static final C12269a f27705d = new C12269a(null);

    /* renamed from: a */
    public C12255a f27706a;

    /* renamed from: b */
    public Subscription f27707b;

    /* renamed from: c */
    public HashMap f27708c;

    /* renamed from: j.a.e0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/c$a.class */
    public static final class C12269a {
        public C12269a() {
        }

        public /* synthetic */ C12269a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C12268c m6501a(String str) {
            C15149k.m377b(str, "number");
            C12268c cVar = new C12268c();
            Bundle bundle = new Bundle();
            bundle.putString("arg_number", str);
            cVar.setArguments(bundle);
            return cVar;
        }
    }

    /* renamed from: j.a.e0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/c$b.class */
    public static final class C12270b<T> implements Action1<Object> {
        public C12270b() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (C14060l2.m2706a(C12268c.this)) {
                C12268c cVar = C12268c.this;
                C15149k.m383a(obj, NotificationCompat.CATEGORY_EVENT);
                cVar.m6503a(obj);
            }
        }
    }

    /* renamed from: J */
    public void m6508J() {
        HashMap hashMap = this.f27708c;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final String m6507K() {
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("arg_number") : null;
        if (string == null) {
            string = "";
        }
        return string;
    }

    /* renamed from: L */
    public final void m6506L() {
        this.f27707b = C14037j3.m2731a().mo2703a((Action1) new C12270b());
    }

    /* renamed from: M */
    public final void m6505M() {
        Subscription subscription = this.f27707b;
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
    public final void m6503a(Object obj) {
        if (obj instanceof C14046k1) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                arguments.putString("arg_number", ((C14046k1) obj).f31494a);
            }
            C12255a aVar = this.f27706a;
            if (aVar != null) {
                aVar.m6522b(m6507K());
            } else {
                C15149k.m373d("adapter");
                throw null;
            }
        } else if (obj instanceof C14035j1) {
            C12255a aVar2 = this.f27706a;
            if (aVar2 != null) {
                aVar2.m6522b(((C14035j1) obj).f31477a.m6366d());
            } else {
                C15149k.m373d("adapter");
                throw null;
            }
        }
    }

    /* renamed from: b */
    public View m6502b(int i) {
        if (this.f27708c == null) {
            this.f27708c = new HashMap();
        }
        View view = (View) this.f27708c.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f27708c.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f27706a = new C12255a(getActivity(), m6507K());
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        return layoutInflater.inflate(R$layout.ndp_list_fragment_v2, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        m6505M();
        m6508J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        RecyclerView recyclerView = (RecyclerView) m6502b(R$id.recycler_view);
        C15149k.m383a((Object) recyclerView, "recycler_view");
        C12255a aVar = this.f27706a;
        if (aVar != null) {
            recyclerView.setAdapter(aVar);
            RecyclerView recyclerView2 = (RecyclerView) m6502b(R$id.recycler_view);
            C15149k.m383a((Object) recyclerView2, "recycler_view");
            recyclerView2.setLayoutManager(new WrappedLinearLayoutManager(getContext()));
            m6506L();
            C12255a aVar2 = this.f27706a;
            if (aVar2 != null) {
                aVar2.m6522b(m6507K());
            } else {
                C15149k.m373d("adapter");
                throw null;
            }
        } else {
            C15149k.m373d("adapter");
            throw null;
        }
    }
}
