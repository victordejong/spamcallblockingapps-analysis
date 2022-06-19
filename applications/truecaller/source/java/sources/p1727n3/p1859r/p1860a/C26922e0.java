package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* renamed from: n3.r.a.e0 */
/* loaded from: classes-dex2jar.jar:n3/r/a/e0.class */
public class C26922e0 {

    /* renamed from: a */
    public final ArrayList<Fragment> f75311a = new ArrayList<>();

    /* renamed from: b */
    public final HashMap<String, C26916c0> f75312b = new HashMap<>();

    /* renamed from: c */
    public C26975y f75313c;

    /* renamed from: a */
    public void m1143a(Fragment fragment) {
        if (this.f75311a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f75311a) {
            this.f75311a.add(fragment);
        }
        fragment.mAdded = true;
    }

    /* renamed from: b */
    public void m1142b() {
        this.f75312b.values().removeAll(Collections.singleton(null));
    }

    /* renamed from: c */
    public boolean m1141c(String str) {
        return this.f75312b.get(str) != null;
    }

    /* renamed from: d */
    public Fragment m1140d(String str) {
        C26916c0 c26916c0 = this.f75312b.get(str);
        if (c26916c0 != null) {
            return c26916c0.f75295c;
        }
        return null;
    }

    /* renamed from: e */
    public Fragment m1139e(String str) {
        Fragment findFragmentByWho;
        for (C26916c0 c26916c0 : this.f75312b.values()) {
            if (c26916c0 != null && (findFragmentByWho = c26916c0.f75295c.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    /* renamed from: f */
    public List<C26916c0> m1138f() {
        ArrayList arrayList = new ArrayList();
        for (C26916c0 c26916c0 : this.f75312b.values()) {
            if (c26916c0 != null) {
                arrayList.add(c26916c0);
            }
        }
        return arrayList;
    }

    /* renamed from: g */
    public List<Fragment> m1137g() {
        ArrayList arrayList = new ArrayList();
        for (C26916c0 c26916c0 : this.f75312b.values()) {
            if (c26916c0 != null) {
                arrayList.add(c26916c0.f75295c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    public C26916c0 m1136h(String str) {
        return this.f75312b.get(str);
    }

    /* renamed from: i */
    public List<Fragment> m1135i() {
        ArrayList arrayList;
        if (this.f75311a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f75311a) {
            arrayList = new ArrayList(this.f75311a);
        }
        return arrayList;
    }

    /* renamed from: j */
    public void m1134j(C26916c0 c26916c0) {
        Fragment fragment = c26916c0.f75295c;
        if (m1141c(fragment.mWho)) {
            return;
        }
        this.f75312b.put(fragment.mWho, c26916c0);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            if (fragment.mRetainInstance) {
                this.f75313c.m1031c(fragment);
            } else {
                this.f75313c.m1030d(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (!FragmentManager.m42933T(2)) {
            return;
        }
        String str = "Added fragment to active set " + fragment;
    }

    /* renamed from: k */
    public void m1133k(C26916c0 c26916c0) {
        Fragment fragment = c26916c0.f75295c;
        if (fragment.mRetainInstance) {
            this.f75313c.m1030d(fragment);
        }
        if (this.f75312b.put(fragment.mWho, null) != null && FragmentManager.m42933T(2)) {
            String str = "Removed fragment from active set " + fragment;
        }
    }

    /* renamed from: l */
    public void m1132l(Fragment fragment) {
        synchronized (this.f75311a) {
            this.f75311a.remove(fragment);
        }
        fragment.mAdded = false;
    }
}
