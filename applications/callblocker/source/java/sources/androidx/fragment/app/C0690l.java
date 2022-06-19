package androidx.fragment.app;

import android.util.Log;
import androidx.lifecycle.AbstractC0884s;
import androidx.lifecycle.C0885t;
import androidx.lifecycle.C0888u;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public class C0690l extends AbstractC0884s {

    /* renamed from: a */
    private static final C0885t.AbstractC0886a f2447a = new C0885t.AbstractC0886a() { // from class: androidx.fragment.app.l.1
        @Override // androidx.lifecycle.C0885t.AbstractC0886a
        /* renamed from: a */
        public <T extends AbstractC0884s> T mo19172a(Class<T> cls) {
            return new C0690l(true);
        }
    };

    /* renamed from: e */
    private final boolean f2451e;

    /* renamed from: b */
    private final HashSet<Fragment> f2448b = new HashSet<>();

    /* renamed from: c */
    private final HashMap<String, C0690l> f2449c = new HashMap<>();

    /* renamed from: d */
    private final HashMap<String, C0888u> f2450d = new HashMap<>();

    /* renamed from: f */
    private boolean f2452f = false;

    /* renamed from: g */
    private boolean f2453g = false;

    public C0690l(boolean z) {
        this.f2451e = z;
    }

    /* renamed from: a */
    public static C0690l m19679a(C0888u c0888u) {
        return (C0690l) new C0885t(c0888u, f2447a).m19174a(C0690l.class);
    }

    @Override // androidx.lifecycle.AbstractC0884s
    /* renamed from: a */
    public void mo19177a() {
        if (LayoutInflater$Factory2C0673j.f2378b) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f2452f = true;
    }

    /* renamed from: a */
    public boolean m19680a(Fragment fragment) {
        return this.f2448b.add(fragment);
    }

    /* renamed from: b */
    public boolean m19678b() {
        return this.f2452f;
    }

    /* renamed from: b */
    public boolean m19677b(Fragment fragment) {
        boolean z = true;
        if (this.f2448b.contains(fragment)) {
            if (this.f2451e) {
                z = this.f2452f;
            } else if (this.f2453g) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    public Collection<Fragment> m19676c() {
        return this.f2448b;
    }

    /* renamed from: c */
    public boolean m19675c(Fragment fragment) {
        return this.f2448b.remove(fragment);
    }

    /* renamed from: d */
    public C0690l m19674d(Fragment fragment) {
        C0690l c0690l = this.f2449c.get(fragment.f2291o);
        C0690l c0690l2 = c0690l;
        if (c0690l == null) {
            c0690l2 = new C0690l(this.f2451e);
            this.f2449c.put(fragment.f2291o, c0690l2);
        }
        return c0690l2;
    }

    /* renamed from: e */
    public C0888u m19673e(Fragment fragment) {
        C0888u c0888u = this.f2450d.get(fragment.f2291o);
        C0888u c0888u2 = c0888u;
        if (c0888u == null) {
            c0888u2 = new C0888u();
            this.f2450d.put(fragment.f2291o, c0888u2);
        }
        return c0888u2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                C0690l c0690l = (C0690l) obj;
                if (!this.f2448b.equals(c0690l.f2448b) || !this.f2449c.equals(c0690l.f2449c) || !this.f2450d.equals(c0690l.f2450d)) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public void m19672f(Fragment fragment) {
        if (LayoutInflater$Factory2C0673j.f2378b) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        C0690l c0690l = this.f2449c.get(fragment.f2291o);
        if (c0690l != null) {
            c0690l.mo19177a();
            this.f2449c.remove(fragment.f2291o);
        }
        C0888u c0888u = this.f2450d.get(fragment.f2291o);
        if (c0888u != null) {
            c0888u.m19170a();
            this.f2450d.remove(fragment.f2291o);
        }
    }

    public int hashCode() {
        return (((this.f2448b.hashCode() * 31) + this.f2449c.hashCode()) * 31) + this.f2450d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f2448b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f2449c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f2450d.keySet().iterator();
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
