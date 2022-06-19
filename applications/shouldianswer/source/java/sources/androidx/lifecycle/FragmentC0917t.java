package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0896g;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public class FragmentC0917t extends Fragment {

    /* renamed from: a */
    private AbstractC0918a f2875a;

    /* renamed from: androidx.lifecycle.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$a.class */
    public interface AbstractC0918a {
        /* renamed from: a */
        void mo5067a();

        /* renamed from: b */
        void mo5066b();

        /* renamed from: c */
        void mo5065c();
    }

    /* renamed from: a */
    public static void m5074a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0917t(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    private void m5073a(AbstractC0896g.EnumC0897a enumC0897a) {
        Activity activity = getActivity();
        if (activity instanceof AbstractC0907m) {
            ((AbstractC0907m) activity).m5093a().m5111a(enumC0897a);
        } else if (!(activity instanceof AbstractC0903k)) {
        } else {
            AbstractC0896g lifecycle = ((AbstractC0903k) activity).getLifecycle();
            if (!(lifecycle instanceof C0904l)) {
                return;
            }
            ((C0904l) lifecycle).m5111a(enumC0897a);
        }
    }

    /* renamed from: b */
    public static FragmentC0917t m5071b(Activity activity) {
        return (FragmentC0917t) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    /* renamed from: b */
    private void m5070b(AbstractC0918a abstractC0918a) {
        if (abstractC0918a != null) {
            abstractC0918a.mo5067a();
        }
    }

    /* renamed from: c */
    private void m5069c(AbstractC0918a abstractC0918a) {
        if (abstractC0918a != null) {
            abstractC0918a.mo5066b();
        }
    }

    /* renamed from: d */
    private void m5068d(AbstractC0918a abstractC0918a) {
        if (abstractC0918a != null) {
            abstractC0918a.mo5065c();
        }
    }

    /* renamed from: a */
    public void m5072a(AbstractC0918a abstractC0918a) {
        this.f2875a = abstractC0918a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m5070b(this.f2875a);
        m5073a(AbstractC0896g.EnumC0897a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m5073a(AbstractC0896g.EnumC0897a.ON_DESTROY);
        this.f2875a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m5073a(AbstractC0896g.EnumC0897a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m5068d(this.f2875a);
        m5073a(AbstractC0896g.EnumC0897a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m5069c(this.f2875a);
        m5073a(AbstractC0896g.EnumC0897a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m5073a(AbstractC0896g.EnumC0897a.ON_STOP);
    }
}
