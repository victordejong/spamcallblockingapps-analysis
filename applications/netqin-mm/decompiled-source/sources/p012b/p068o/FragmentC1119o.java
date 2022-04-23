package p012b.p068o;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
/* renamed from: b.o.o */
/* loaded from: classes-dex2jar.jar:b/o/o.class */
public class FragmentC1119o extends Fragment {

    /* renamed from: a */
    public AbstractC1120a f4622a;

    /* renamed from: b.o.o$a */
    /* loaded from: classes-dex2jar.jar:b/o/o$a.class */
    public interface AbstractC1120a {
        void onCreate();

        void onResume();

        void onStart();
    }

    /* renamed from: a */
    public static void m34635a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC1119o(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    public final void m34634a(Lifecycle.Event event) {
        Activity activity = getActivity();
        if (activity instanceof AbstractC1113i) {
            ((AbstractC1113i) activity).mo34644a().m34662a(event);
        } else if (activity instanceof AbstractC1109g) {
            Lifecycle a = ((AbstractC1109g) activity).mo34644a();
            if (a instanceof C1110h) {
                ((C1110h) a).m34662a(event);
            }
        }
    }

    /* renamed from: a */
    public final void m34633a(AbstractC1120a aVar) {
        if (aVar != null) {
            aVar.onCreate();
        }
    }

    /* renamed from: b */
    public final void m34632b(AbstractC1120a aVar) {
        if (aVar != null) {
            aVar.onResume();
        }
    }

    /* renamed from: c */
    public final void m34631c(AbstractC1120a aVar) {
        if (aVar != null) {
            aVar.onStart();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m34633a(this.f4622a);
        m34634a(Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m34634a(Lifecycle.Event.ON_DESTROY);
        this.f4622a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m34634a(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m34632b(this.f4622a);
        m34634a(Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m34631c(this.f4622a);
        m34634a(Lifecycle.Event.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m34634a(Lifecycle.Event.ON_STOP);
    }
}
