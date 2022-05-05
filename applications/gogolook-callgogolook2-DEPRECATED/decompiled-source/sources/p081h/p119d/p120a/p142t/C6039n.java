package p081h.p119d.p120a.p142t;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.util.Log;
import androidx.fragment.app.Fragment;
import java.util.HashSet;
import p081h.p119d.p120a.C5780o;
/* renamed from: h.d.a.t.n */
/* loaded from: classes-dex2jar.jar:h/d/a/t/n.class */
public class C6039n extends Fragment {

    /* renamed from: a */
    public C5780o f15035a;

    /* renamed from: b */
    public final C6022a f15036b;

    /* renamed from: c */
    public final AbstractC6037l f15037c;

    /* renamed from: d */
    public final HashSet<C6039n> f15038d;

    /* renamed from: e */
    public C6039n f15039e;

    /* renamed from: h.d.a.t.n$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/t/n$b.class */
    public class C6041b implements AbstractC6037l {
        public C6041b(C6039n nVar) {
        }
    }

    public C6039n() {
        this(new C6022a());
    }

    @SuppressLint({"ValidFragment"})
    public C6039n(C6022a aVar) {
        this.f15037c = new C6041b();
        this.f15038d = new HashSet<>();
        this.f15036b = aVar;
    }

    /* renamed from: J */
    public C5780o m23985J() {
        return this.f15035a;
    }

    /* renamed from: K */
    public AbstractC6037l m23984K() {
        return this.f15037c;
    }

    /* renamed from: a */
    public void m23983a(C5780o oVar) {
        this.f15035a = oVar;
    }

    /* renamed from: a */
    public final void m23982a(C6039n nVar) {
        this.f15038d.add(nVar);
    }

    /* renamed from: b */
    public final void m23981b(C6039n nVar) {
        this.f15038d.remove(nVar);
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.LifecycleOwner
    public C6022a getLifecycle() {
        return this.f15036b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.f15039e = C6036k.m24001a().m23994a(getActivity().getSupportFragmentManager());
            if (this.f15039e != this) {
                this.f15039e.m23982a(this);
            }
        } catch (IllegalStateException e) {
            Log.isLoggable("SupportRMFragment", 5);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f15036b.m24020a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        C6039n nVar = this.f15039e;
        if (nVar != null) {
            nVar.m23981b(this);
            this.f15039e = null;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        C5780o oVar = this.f15035a;
        if (oVar != null) {
            oVar.m24441e();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f15036b.m24019b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f15036b.m24018c();
    }
}
