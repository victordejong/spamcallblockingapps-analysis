package p012b.p063m.p064a;

import android.util.Log;
import androidx.fragment.app.Fragment;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import p012b.p068o.AbstractC1121p;
import p012b.p068o.C1122q;
import p012b.p068o.C1125r;
/* renamed from: b.m.a.i */
/* loaded from: classes-dex2jar.jar:b/m/a/i.class */
public class C1077i extends AbstractC1121p {

    /* renamed from: h */
    public static final C1122q.AbstractC1123a f4507h = new C1078a();

    /* renamed from: e */
    public final boolean f4511e;

    /* renamed from: b */
    public final HashSet<Fragment> f4508b = new HashSet<>();

    /* renamed from: c */
    public final HashMap<String, C1077i> f4509c = new HashMap<>();

    /* renamed from: d */
    public final HashMap<String, C1125r> f4510d = new HashMap<>();

    /* renamed from: f */
    public boolean f4512f = false;

    /* renamed from: g */
    public boolean f4513g = false;

    /* renamed from: b.m.a.i$a */
    /* loaded from: classes-dex2jar.jar:b/m/a/i$a.class */
    public static final class C1078a implements C1122q.AbstractC1123a {
        @Override // p012b.p068o.C1122q.AbstractC1123a
        /* renamed from: a */
        public <T extends AbstractC1121p> T mo34607a(Class<T> cls) {
            return new C1077i(true);
        }
    }

    public C1077i(boolean z) {
        this.f4511e = z;
    }

    /* renamed from: a */
    public static C1077i m34758a(C1125r rVar) {
        return (C1077i) new C1122q(rVar, f4507h).m34628a(C1077i.class);
    }

    /* renamed from: a */
    public boolean m34759a(Fragment fragment) {
        return this.f4508b.add(fragment);
    }

    @Override // p012b.p068o.AbstractC1121p
    /* renamed from: b */
    public void mo34609b() {
        if (LayoutInflater$Factory2C1062h.f4442H) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f4512f = true;
    }

    /* renamed from: b */
    public void m34757b(Fragment fragment) {
        if (LayoutInflater$Factory2C1062h.f4442H) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        C1077i iVar = this.f4509c.get(fragment.f1286e);
        if (iVar != null) {
            iVar.mo34609b();
            this.f4509c.remove(fragment.f1286e);
        }
        C1125r rVar = this.f4510d.get(fragment.f1286e);
        if (rVar != null) {
            rVar.m34625a();
            this.f4510d.remove(fragment.f1286e);
        }
    }

    /* renamed from: c */
    public C1077i m34755c(Fragment fragment) {
        C1077i iVar = this.f4509c.get(fragment.f1286e);
        C1077i iVar2 = iVar;
        if (iVar == null) {
            iVar2 = new C1077i(this.f4511e);
            this.f4509c.put(fragment.f1286e, iVar2);
        }
        return iVar2;
    }

    /* renamed from: c */
    public Collection<Fragment> m34756c() {
        return this.f4508b;
    }

    /* renamed from: d */
    public C1125r m34753d(Fragment fragment) {
        C1125r rVar = this.f4510d.get(fragment.f1286e);
        C1125r rVar2 = rVar;
        if (rVar == null) {
            rVar2 = new C1125r();
            this.f4510d.put(fragment.f1286e, rVar2);
        }
        return rVar2;
    }

    /* renamed from: d */
    public boolean m34754d() {
        return this.f4512f;
    }

    /* renamed from: e */
    public boolean m34752e(Fragment fragment) {
        return this.f4508b.remove(fragment);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C1077i.class != obj.getClass()) {
            return false;
        }
        C1077i iVar = (C1077i) obj;
        if (!this.f4508b.equals(iVar.f4508b) || !this.f4509c.equals(iVar.f4509c) || !this.f4510d.equals(iVar.f4510d)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m34751f(Fragment fragment) {
        if (!this.f4508b.contains(fragment)) {
            return true;
        }
        return this.f4511e ? this.f4512f : !this.f4513g;
    }

    public int hashCode() {
        return (((this.f4508b.hashCode() * 31) + this.f4509c.hashCode()) * 31) + this.f4510d.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f4508b.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f4509c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f4510d.keySet().iterator();
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
