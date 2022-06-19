package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.HashMap;
import java.util.Iterator;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
/* renamed from: n3.r.a.y */
/* loaded from: classes-dex2jar.jar:n3/r/a/y.class */
public final class C26975y extends AbstractC27040y0 {

    /* renamed from: g */
    public static final C26986a1.AbstractC26987b f75481g = new C26976a();

    /* renamed from: d */
    public final boolean f75485d;

    /* renamed from: a */
    public final HashMap<String, Fragment> f75482a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, C26975y> f75483b = new HashMap<>();

    /* renamed from: c */
    public final HashMap<String, C26993b1> f75484c = new HashMap<>();

    /* renamed from: e */
    public boolean f75486e = false;

    /* renamed from: f */
    public boolean f75487f = false;

    /* renamed from: n3.r.a.y$a */
    /* loaded from: classes-dex2jar.jar:n3/r/a/y$a.class */
    public class C26976a implements C26986a1.AbstractC26987b {
        @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
        public <T extends AbstractC27040y0> T create(Class<T> cls) {
            return new C26975y(true);
        }
    }

    public C26975y(boolean z) {
        this.f75485d = z;
    }

    /* renamed from: c */
    public void m1031c(Fragment fragment) {
        if (this.f75487f) {
            FragmentManager.m42933T(2);
        } else if (this.f75482a.containsKey(fragment.mWho)) {
        } else {
            this.f75482a.put(fragment.mWho, fragment);
            if (!FragmentManager.m42933T(2)) {
                return;
            }
            String str = "Updating retained Fragments: Added " + fragment;
        }
    }

    /* renamed from: d */
    public void m1030d(Fragment fragment) {
        if (this.f75487f) {
            FragmentManager.m42933T(2);
            return;
        }
        if (!(this.f75482a.remove(fragment.mWho) != null) || !FragmentManager.m42933T(2)) {
            return;
        }
        String str = "Updating retained Fragments: Removed " + fragment;
    }

    /* renamed from: e */
    public boolean m1029e(Fragment fragment) {
        if (this.f75482a.containsKey(fragment.mWho) && this.f75485d) {
            return this.f75486e;
        }
        return true;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C26975y.class != obj.getClass()) {
            return false;
        }
        C26975y c26975y = (C26975y) obj;
        if (!this.f75482a.equals(c26975y.f75482a) || !this.f75483b.equals(c26975y.f75483b) || !this.f75484c.equals(c26975y.f75484c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f75482a.hashCode();
        return this.f75484c.hashCode() + ((this.f75483b.hashCode() + (hashCode * 31)) * 31);
    }

    @Override // p1727n3.p1868v.AbstractC27040y0
    public void onCleared() {
        if (FragmentManager.m42933T(3)) {
            String str = "onCleared called for " + this;
        }
        this.f75486e = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f75482a.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f75483b.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f75484c.keySet().iterator();
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
