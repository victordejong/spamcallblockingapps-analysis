package p081h.p119d.p120a.p142t;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import java.util.HashSet;
import p081h.p119d.p120a.C5780o;
@TargetApi(11)
/* renamed from: h.d.a.t.j */
/* loaded from: classes-dex2jar.jar:h/d/a/t/j.class */
public class FragmentC6033j extends Fragment {

    /* renamed from: a */
    public final C6022a f15022a;

    /* renamed from: b */
    public final AbstractC6037l f15023b;

    /* renamed from: c */
    public C5780o f15024c;

    /* renamed from: d */
    public final HashSet<FragmentC6033j> f15025d;

    /* renamed from: e */
    public FragmentC6033j f15026e;

    /* renamed from: h.d.a.t.j$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/t/j$b.class */
    public class C6035b implements AbstractC6037l {
        public C6035b(FragmentC6033j jVar) {
        }
    }

    public FragmentC6033j() {
        this(new C6022a());
    }

    @SuppressLint({"ValidFragment"})
    public FragmentC6033j(C6022a aVar) {
        this.f15023b = new C6035b();
        this.f15025d = new HashSet<>();
        this.f15022a = aVar;
    }

    /* renamed from: a */
    public C6022a m24007a() {
        return this.f15022a;
    }

    /* renamed from: a */
    public void m24006a(C5780o oVar) {
        this.f15024c = oVar;
    }

    /* renamed from: a */
    public final void m24005a(FragmentC6033j jVar) {
        this.f15025d.add(jVar);
    }

    /* renamed from: b */
    public C5780o m24004b() {
        return this.f15024c;
    }

    /* renamed from: b */
    public final void m24003b(FragmentC6033j jVar) {
        this.f15025d.remove(jVar);
    }

    /* renamed from: c */
    public AbstractC6037l m24002c() {
        return this.f15023b;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.f15026e = C6036k.m24001a().m23999a(getActivity().getFragmentManager());
            if (this.f15026e != this) {
                this.f15026e.m24005a(this);
            }
        } catch (IllegalStateException e) {
            Log.isLoggable("RMFragment", 5);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f15022a.m24020a();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        FragmentC6033j jVar = this.f15026e;
        if (jVar != null) {
            jVar.m24003b(this);
            this.f15026e = null;
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        C5780o oVar = this.f15024c;
        if (oVar != null) {
            oVar.m24441e();
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f15022a.m24019b();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f15022a.m24018c();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        C5780o oVar = this.f15024c;
        if (oVar != null) {
            oVar.m24458a(i);
        }
    }
}
