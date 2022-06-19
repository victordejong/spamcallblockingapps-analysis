package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0864e;
/* renamed from: androidx.lifecycle.q */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/q.class */
public class FragmentC0880q extends Fragment {

    /* renamed from: a */
    private AbstractC0881a f2996a;

    /* renamed from: androidx.lifecycle.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/q$a.class */
    public interface AbstractC0881a {
        /* renamed from: a */
        void m19186a();

        /* renamed from: b */
        void m19185b();

        /* renamed from: c */
        void m19184c();
    }

    /* renamed from: a */
    public static void m19191a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0880q(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    private void m19190a(AbstractC0864e.EnumC0865a enumC0865a) {
        Activity activity = getActivity();
        if (activity instanceof AbstractC0873j) {
            ((AbstractC0873j) activity).m19204a().m19222a(enumC0865a);
        } else if (!(activity instanceof AbstractC0869h)) {
        } else {
            AbstractC0864e mo19203b = ((AbstractC0869h) activity).mo19203b();
            if (!(mo19203b instanceof C0870i)) {
                return;
            }
            ((C0870i) mo19203b).m19222a(enumC0865a);
        }
    }

    /* renamed from: a */
    private void m19189a(AbstractC0881a abstractC0881a) {
        if (abstractC0881a != null) {
            abstractC0881a.m19186a();
        }
    }

    /* renamed from: b */
    private void m19188b(AbstractC0881a abstractC0881a) {
        if (abstractC0881a != null) {
            abstractC0881a.m19185b();
        }
    }

    /* renamed from: c */
    private void m19187c(AbstractC0881a abstractC0881a) {
        if (abstractC0881a != null) {
            abstractC0881a.m19184c();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m19189a(this.f2996a);
        m19190a(AbstractC0864e.EnumC0865a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m19190a(AbstractC0864e.EnumC0865a.ON_DESTROY);
        this.f2996a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m19190a(AbstractC0864e.EnumC0865a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m19187c(this.f2996a);
        m19190a(AbstractC0864e.EnumC0865a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m19188b(this.f2996a);
        m19190a(AbstractC0864e.EnumC0865a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m19190a(AbstractC0864e.EnumC0865a.ON_STOP);
    }
}
