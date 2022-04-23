package androidx.fragment.app;

import androidx.lifecycle.aa;
import androidx.lifecycle.ab;
import androidx.lifecycle.ac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public final class l extends aa {
    private static final ab.b f = new ab.b() { // from class: androidx.fragment.app.l.1
        @Override // androidx.lifecycle.ab.b
        public final <T extends aa> T a(Class<T> cls) {
            return new l(true);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    final boolean f2302c;
    private final HashMap<String, Fragment> g = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    final HashMap<String, l> f2300a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    final HashMap<String, ac> f2301b = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    boolean f2303d = false;
    private boolean h = false;
    boolean e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(boolean z) {
        this.f2302c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(ac acVar) {
        return (l) new ab(acVar, f).a(l.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment a(String str) {
        return this.g.get(str);
    }

    @Override // androidx.lifecycle.aa
    public final void a() {
        if (FragmentManager.a(3)) {
            new StringBuilder("onCleared called for ").append(this);
        }
        this.f2303d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment) {
        if (this.e) {
            FragmentManager.a(2);
        } else if (!this.g.containsKey(fragment.mWho)) {
            this.g.put(fragment.mWho, fragment);
            if (FragmentManager.a(2)) {
                new StringBuilder("Updating retained Fragments: Added ").append(fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Collection<Fragment> b() {
        return new ArrayList(this.g.values());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(Fragment fragment) {
        if (!this.g.containsKey(fragment.mWho)) {
            return true;
        }
        return this.f2302c ? this.f2303d : !this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(Fragment fragment) {
        if (this.e) {
            FragmentManager.a(2);
            return;
        }
        if ((this.g.remove(fragment.mWho) != null) && FragmentManager.a(2)) {
            new StringBuilder("Updating retained Fragments: Removed ").append(fragment);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.g.equals(lVar.g) && this.f2300a.equals(lVar.f2300a) && this.f2301b.equals(lVar.f2301b);
    }

    public final int hashCode() {
        return (((this.g.hashCode() * 31) + this.f2300a.hashCode()) * 31) + this.f2301b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it2 = this.g.values().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it3 = this.f2300a.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it4 = this.f2301b.keySet().iterator();
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
