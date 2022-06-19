package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0920v;
import androidx.lifecycle.C0926x;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public class C0735j extends AbstractC0919u {

    /* renamed from: a */
    private static final C0920v.AbstractC0922b f2404a = new C0920v.AbstractC0922b() { // from class: androidx.fragment.app.j.1
        @Override // androidx.lifecycle.C0920v.AbstractC0922b
        /* renamed from: a */
        public <T extends AbstractC0919u> T mo5057a(Class<T> cls) {
            return new C0735j(true);
        }
    };

    /* renamed from: e */
    private final boolean f2408e;

    /* renamed from: b */
    private final HashSet<Fragment> f2405b = new HashSet<>();

    /* renamed from: c */
    private final HashMap<String, C0735j> f2406c = new HashMap<>();

    /* renamed from: d */
    private final HashMap<String, C0926x> f2407d = new HashMap<>();

    /* renamed from: f */
    private boolean f2409f = false;

    /* renamed from: g */
    private boolean f2410g = false;

    public C0735j(boolean z) {
        this.f2408e = z;
    }

    /* renamed from: a */
    public static C0735j m5471a(C0926x c0926x) {
        return (C0735j) new C0920v(c0926x, f2404a).m5061a(C0735j.class);
    }

    @Override // androidx.lifecycle.AbstractC0919u
    /* renamed from: a */
    public void mo5064a() {
        if (LayoutInflater$Factory2C0720i.f2340b) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f2409f = true;
    }

    /* renamed from: a */
    public boolean m5472a(Fragment fragment) {
        return this.f2405b.add(fragment);
    }

    /* renamed from: b */
    public boolean m5470b() {
        return this.f2409f;
    }

    /* renamed from: b */
    public boolean m5469b(Fragment fragment) {
        if (!this.f2405b.contains(fragment)) {
            return true;
        }
        return this.f2408e ? this.f2409f : !this.f2410g;
    }

    /* renamed from: c */
    public Collection<Fragment> m5468c() {
        return this.f2405b;
    }

    /* renamed from: c */
    public boolean m5467c(Fragment fragment) {
        return this.f2405b.remove(fragment);
    }

    /* renamed from: d */
    public C0735j m5466d(Fragment fragment) {
        C0735j c0735j = this.f2406c.get(fragment.mWho);
        C0735j c0735j2 = c0735j;
        if (c0735j == null) {
            c0735j2 = new C0735j(this.f2408e);
            this.f2406c.put(fragment.mWho, c0735j2);
        }
        return c0735j2;
    }

    /* renamed from: e */
    public C0926x m5465e(Fragment fragment) {
        C0926x c0926x = this.f2407d.get(fragment.mWho);
        C0926x c0926x2 = c0926x;
        if (c0926x == null) {
            c0926x2 = new C0926x();
            this.f2407d.put(fragment.mWho, c0926x2);
        }
        return c0926x2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C0735j c0735j = (C0735j) obj;
        if (!this.f2405b.equals(c0735j.f2405b) || !this.f2406c.equals(c0735j.f2406c) || !this.f2407d.equals(c0735j.f2407d)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public void m5464f(Fragment fragment) {
        if (LayoutInflater$Factory2C0720i.f2340b) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        C0735j c0735j = this.f2406c.get(fragment.mWho);
        if (c0735j != null) {
            c0735j.mo5064a();
            this.f2406c.remove(fragment.mWho);
        }
        C0926x c0926x = this.f2407d.get(fragment.mWho);
        if (c0926x != null) {
            c0926x.m5050a();
            this.f2407d.remove(fragment.mWho);
        }
    }

    public int hashCode() {
        return (((this.f2405b.hashCode() * 31) + this.f2406c.hashCode()) * 31) + this.f2407d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f2405b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f2406c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f2407d.keySet().iterator();
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
