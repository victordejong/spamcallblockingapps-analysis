package androidx.fragment.app;

import androidx.lifecycle.AbstractC0546x;
import androidx.lifecycle.AbstractC0548z;
import androidx.lifecycle.C0512c0;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.d0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d0.class */
public final class C0424d0 extends AbstractC0546x {

    /* renamed from: i */
    public static final AbstractC0548z f1778i = new C0425a();

    /* renamed from: f */
    public final boolean f1782f;

    /* renamed from: c */
    public final HashMap<String, Fragment> f1779c = new HashMap<>();

    /* renamed from: d */
    public final HashMap<String, C0424d0> f1780d = new HashMap<>();

    /* renamed from: e */
    public final HashMap<String, C0512c0> f1781e = new HashMap<>();

    /* renamed from: g */
    public boolean f1783g = false;

    /* renamed from: h */
    public boolean f1784h = false;

    /* renamed from: androidx.fragment.app.d0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/d0$a.class */
    public class C0425a implements AbstractC0548z {
        @Override // androidx.lifecycle.AbstractC0548z
        /* renamed from: a */
        public <T extends AbstractC0546x> T mo2864a(Class<T> cls) {
            return new C0424d0(true);
        }
    }

    public C0424d0(boolean z) {
        this.f1782f = z;
    }

    @Override // androidx.lifecycle.AbstractC0546x
    /* renamed from: a */
    public void mo7431a() {
        if (AbstractC0397a0.m8192N(3)) {
            toString();
        }
        this.f1783g = true;
    }

    /* renamed from: c */
    public void m8130c(Fragment fragment) {
        if (this.f1784h) {
            AbstractC0397a0.m8192N(2);
        } else if (this.f1779c.containsKey(fragment.mWho)) {
        } else {
            this.f1779c.put(fragment.mWho, fragment);
            if (!AbstractC0397a0.m8192N(2)) {
                return;
            }
            fragment.toString();
        }
    }

    /* renamed from: d */
    public void m8129d(Fragment fragment) {
        if (this.f1784h) {
            AbstractC0397a0.m8192N(2);
            return;
        }
        if (!(this.f1779c.remove(fragment.mWho) != null) || !AbstractC0397a0.m8192N(2)) {
            return;
        }
        fragment.toString();
    }

    /* renamed from: e */
    public boolean m8128e(Fragment fragment) {
        if (this.f1779c.containsKey(fragment.mWho) && this.f1782f) {
            return this.f1783g;
        }
        return true;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C0424d0.class != obj.getClass()) {
            return false;
        }
        C0424d0 c0424d0 = (C0424d0) obj;
        if (!this.f1779c.equals(c0424d0.f1779c) || !this.f1780d.equals(c0424d0.f1780d) || !this.f1781e.equals(c0424d0.f1781e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f1779c.hashCode();
        return this.f1781e.hashCode() + ((this.f1780d.hashCode() + (hashCode * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it2 = this.f1779c.values().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it3 = this.f1780d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it4 = this.f1781e.keySet().iterator();
        while (it4.hasNext()) {
            sb.append(it4.next());
            if (it4.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
