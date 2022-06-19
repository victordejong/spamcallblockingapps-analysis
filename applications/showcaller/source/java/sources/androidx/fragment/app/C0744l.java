package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.AbstractC0813r;
import androidx.lifecycle.C0814s;
import androidx.lifecycle.C0818t;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public final class C0744l extends AbstractC0813r {

    /* renamed from: c */
    private static final C0814s.AbstractC0815a f3517c = new C0745a();

    /* renamed from: g */
    private final boolean f3521g;

    /* renamed from: d */
    private final HashMap<String, Fragment> f3518d = new HashMap<>();

    /* renamed from: e */
    private final HashMap<String, C0744l> f3519e = new HashMap<>();

    /* renamed from: f */
    private final HashMap<String, C0818t> f3520f = new HashMap<>();

    /* renamed from: h */
    private boolean f3522h = false;

    /* renamed from: i */
    private boolean f3523i = false;

    /* renamed from: j */
    private boolean f3524j = false;

    /* renamed from: androidx.fragment.app.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/l$a.class */
    class C0745a implements C0814s.AbstractC0815a {
        C0745a() {
        }

        @Override // androidx.lifecycle.C0814s.AbstractC0815a
        /* renamed from: a */
        public <T extends AbstractC0813r> T mo28941a(Class<T> cls) {
            return new C0744l(true);
        }
    }

    public C0744l(boolean z) {
        this.f3521g = z;
    }

    /* renamed from: i */
    public static C0744l m32567i(C0818t c0818t) {
        return (C0744l) new C0814s(c0818t, f3517c).m32352a(C0744l.class);
    }

    @Override // androidx.lifecycle.AbstractC0813r
    /* renamed from: d */
    public void mo28950d() {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f3522h = true;
    }

    /* renamed from: e */
    public void m32571e(Fragment fragment) {
        if (this.f3524j) {
            if (!FragmentManager.m32848G0(2)) {
                return;
            }
            Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
        } else if (this.f3518d.containsKey(fragment.f3225j)) {
        } else {
            this.f3518d.put(fragment.f3225j, fragment);
            if (!FragmentManager.m32848G0(2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0744l.class != obj.getClass()) {
            return false;
        }
        C0744l c0744l = (C0744l) obj;
        if (!this.f3518d.equals(c0744l.f3518d) || !this.f3519e.equals(c0744l.f3519e) || !this.f3520f.equals(c0744l.f3520f)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public void m32570f(Fragment fragment) {
        if (FragmentManager.m32848G0(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        C0744l c0744l = this.f3519e.get(fragment.f3225j);
        if (c0744l != null) {
            c0744l.mo28950d();
            this.f3519e.remove(fragment.f3225j);
        }
        C0818t c0818t = this.f3520f.get(fragment.f3225j);
        if (c0818t != null) {
            c0818t.m32348a();
            this.f3520f.remove(fragment.f3225j);
        }
    }

    /* renamed from: g */
    public Fragment m32569g(String str) {
        return this.f3518d.get(str);
    }

    /* renamed from: h */
    public C0744l m32568h(Fragment fragment) {
        C0744l c0744l = this.f3519e.get(fragment.f3225j);
        C0744l c0744l2 = c0744l;
        if (c0744l == null) {
            c0744l2 = new C0744l(this.f3521g);
            this.f3519e.put(fragment.f3225j, c0744l2);
        }
        return c0744l2;
    }

    public int hashCode() {
        return (((this.f3518d.hashCode() * 31) + this.f3519e.hashCode()) * 31) + this.f3520f.hashCode();
    }

    /* renamed from: j */
    public Collection<Fragment> m32566j() {
        return new ArrayList(this.f3518d.values());
    }

    /* renamed from: k */
    public C0818t m32565k(Fragment fragment) {
        C0818t c0818t = this.f3520f.get(fragment.f3225j);
        C0818t c0818t2 = c0818t;
        if (c0818t == null) {
            c0818t2 = new C0818t();
            this.f3520f.put(fragment.f3225j, c0818t2);
        }
        return c0818t2;
    }

    /* renamed from: l */
    public boolean m32564l() {
        return this.f3522h;
    }

    /* renamed from: m */
    public void m32563m(Fragment fragment) {
        if (this.f3524j) {
            if (!FragmentManager.m32848G0(2)) {
                return;
            }
            Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            return;
        }
        if (!(this.f3518d.remove(fragment.f3225j) != null) || !FragmentManager.m32848G0(2)) {
            return;
        }
        Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
    }

    /* renamed from: n */
    public void m32562n(boolean z) {
        this.f3524j = z;
    }

    /* renamed from: o */
    public boolean m32561o(Fragment fragment) {
        if (!this.f3518d.containsKey(fragment.f3225j)) {
            return true;
        }
        return this.f3521g ? this.f3522h : !this.f3523i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f3518d.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f3519e.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f3520f.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
