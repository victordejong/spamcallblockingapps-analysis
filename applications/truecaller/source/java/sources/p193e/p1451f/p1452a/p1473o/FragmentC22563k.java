package p193e.p1451f.p1452a.p1473o;

import android.app.Activity;
import android.app.Fragment;
import android.util.Log;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
@Deprecated
/* renamed from: e.f.a.o.k */
/* loaded from: classes-dex2jar.jar:e/f/a/o/k.class */
public class FragmentC22563k extends Fragment {

    /* renamed from: a */
    public final C22554a f62487a;

    /* renamed from: b */
    public final AbstractC22568m f62488b = new C22564a();

    /* renamed from: c */
    public final Set<FragmentC22563k> f62489c = new HashSet();

    /* renamed from: d */
    public ComponentCallbacks2C22236i f62490d;

    /* renamed from: e */
    public FragmentC22563k f62491e;

    /* renamed from: f */
    public Fragment f62492f;

    /* renamed from: e.f.a.o.k$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/o/k$a.class */
    public class C22564a implements AbstractC22568m {
        public C22564a() {
            FragmentC22563k.this = r4;
        }

        public String toString() {
            return super.toString() + "{fragment=" + FragmentC22563k.this + "}";
        }
    }

    public FragmentC22563k() {
        C22554a c22554a = new C22554a();
        this.f62487a = c22554a;
    }

    /* renamed from: a */
    public final void m8137a(Activity activity) {
        m8136b();
        C22565l c22565l = ComponentCallbacks2C22222c.m8449b(activity).f61718g;
        Objects.requireNonNull(c22565l);
        FragmentC22563k m8127i = c22565l.m8127i(activity.getFragmentManager(), null, C22565l.m8125k(activity));
        this.f62491e = m8127i;
        if (!equals(m8127i)) {
            this.f62491e.f62489c.add(this);
        }
    }

    /* renamed from: b */
    public final void m8136b() {
        FragmentC22563k fragmentC22563k = this.f62491e;
        if (fragmentC22563k != null) {
            fragmentC22563k.f62489c.remove(this);
            this.f62491e = null;
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m8137a(activity);
        } catch (IllegalStateException e) {
            Log.isLoggable("RMFragment", 5);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f62487a.m8142c();
        m8136b();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m8136b();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f62487a.m8141d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f62487a.m8140e();
    }

    @Override // android.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            parentFragment = this.f62492f;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
