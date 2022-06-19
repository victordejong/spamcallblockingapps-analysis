package androidx.fragment.app;

import androidx.lifecycle.AbstractC1231aa;
import androidx.lifecycle.C1232ab;
import androidx.lifecycle.C1238ac;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public final class C1111l extends AbstractC1231aa {

    /* renamed from: f */
    private static final C1232ab.AbstractC1234b f4370f = new C1232ab.AbstractC1234b() { // from class: androidx.fragment.app.l.1
        @Override // androidx.lifecycle.C1232ab.AbstractC1234b
        /* renamed from: a */
        public final <T extends AbstractC1231aa> T mo43274a(Class<T> cls) {
            return new C1111l(true);
        }
    };

    /* renamed from: c */
    final boolean f4373c;

    /* renamed from: g */
    private final HashMap<String, Fragment> f4376g = new HashMap<>();

    /* renamed from: a */
    final HashMap<String, C1111l> f4371a = new HashMap<>();

    /* renamed from: b */
    final HashMap<String, C1238ac> f4372b = new HashMap<>();

    /* renamed from: d */
    boolean f4374d = false;

    /* renamed from: h */
    private boolean f4377h = false;

    /* renamed from: e */
    boolean f4375e = false;

    public C1111l(boolean z) {
        this.f4373c = z;
    }

    /* renamed from: a */
    public static C1111l m43590a(C1238ac c1238ac) {
        return (C1111l) new C1232ab(c1238ac, f4370f).m43312a(C1111l.class);
    }

    /* renamed from: a */
    public final Fragment m43589a(String str) {
        return this.f4376g.get(str);
    }

    @Override // androidx.lifecycle.AbstractC1231aa
    /* renamed from: a */
    public final void mo43317a() {
        if (FragmentManager.m43764a(3)) {
            new StringBuilder("onCleared called for ").append(this);
        }
        this.f4374d = true;
    }

    /* renamed from: a */
    public final void m43591a(Fragment fragment) {
        if (this.f4375e) {
            FragmentManager.m43764a(2);
        } else if (this.f4376g.containsKey(fragment.mWho)) {
        } else {
            this.f4376g.put(fragment.mWho, fragment);
            if (!FragmentManager.m43764a(2)) {
                return;
            }
            new StringBuilder("Updating retained Fragments: Added ").append(fragment);
        }
    }

    /* renamed from: b */
    public final Collection<Fragment> m43588b() {
        return new ArrayList(this.f4376g.values());
    }

    /* renamed from: b */
    public final boolean m43587b(Fragment fragment) {
        if (!this.f4376g.containsKey(fragment.mWho)) {
            return true;
        }
        return this.f4373c ? this.f4374d : !this.f4377h;
    }

    /* renamed from: c */
    public final void m43586c(Fragment fragment) {
        if (this.f4375e) {
            FragmentManager.m43764a(2);
            return;
        }
        if (!(this.f4376g.remove(fragment.mWho) != null) || !FragmentManager.m43764a(2)) {
            return;
        }
        new StringBuilder("Updating retained Fragments: Removed ").append(fragment);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1111l c1111l = (C1111l) obj;
        return this.f4376g.equals(c1111l.f4376g) && this.f4371a.equals(c1111l.f4371a) && this.f4372b.equals(c1111l.f4372b);
    }

    public final int hashCode() {
        return (((this.f4376g.hashCode() * 31) + this.f4371a.hashCode()) * 31) + this.f4372b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it2 = this.f4376g.values().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it3 = this.f4371a.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it4 = this.f4372b.keySet().iterator();
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
