package androidx.fragment.app;

import android.util.Log;
import androidx.core.p025g.C0520b;
import androidx.fragment.app.AbstractC0695o;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.LayoutInflater$Factory2C0673j;
import androidx.lifecycle.AbstractC0864e;
import java.io.PrintWriter;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class C0659a extends AbstractC0695o implements LayoutInflater$Factory2C0673j.AbstractC0685e {

    /* renamed from: a */
    final LayoutInflater$Factory2C0673j f2326a;

    /* renamed from: b */
    boolean f2327b;

    /* renamed from: c */
    int f2328c = -1;

    public C0659a(LayoutInflater$Factory2C0673j layoutInflater$Factory2C0673j) {
        this.f2326a = layoutInflater$Factory2C0673j;
    }

    /* renamed from: b */
    private static boolean m19904b(AbstractC0695o.C0696a c0696a) {
        Fragment fragment = c0696a.f2491b;
        return fragment != null && fragment.f2296t && fragment.f2268O != null && !fragment.f2262I && !fragment.f2261H && fragment.m19961aq();
    }

    /* renamed from: a */
    int m19906a(boolean z) {
        if (this.f2327b) {
            throw new IllegalStateException("commit already called");
        }
        if (LayoutInflater$Factory2C0673j.f2378b) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new C0520b("FragmentManager"));
            m19910a("  ", printWriter);
            printWriter.close();
        }
        this.f2327b = true;
        if (this.f2479k) {
            this.f2328c = this.f2326a.m19779a(this);
        } else {
            this.f2328c = -1;
        }
        this.f2326a.m19774a(this, z);
        return this.f2328c;
    }

    /* renamed from: a */
    public Fragment m19907a(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i = 0;
        while (true) {
            int i2 = i;
            Fragment fragment2 = fragment;
            if (i2 < this.f2472d.size()) {
                AbstractC0695o.C0696a c0696a = this.f2472d.get(i2);
                int i3 = i2;
                fragment = fragment2;
                switch (c0696a.f2490a) {
                    case 1:
                    case 7:
                        arrayList.add(c0696a.f2491b);
                        i3 = i2;
                        fragment = fragment2;
                        break;
                    case 2:
                        Fragment fragment3 = c0696a.f2491b;
                        int i4 = fragment3.f2259F;
                        boolean z = false;
                        fragment = fragment2;
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            Fragment fragment4 = arrayList.get(size);
                            if (fragment4.f2259F == i4) {
                                if (fragment4 == fragment3) {
                                    z = true;
                                } else {
                                    int i5 = i2;
                                    Fragment fragment5 = fragment;
                                    if (fragment4 == fragment) {
                                        this.f2472d.add(i2, new AbstractC0695o.C0696a(9, fragment4));
                                        i5 = i2 + 1;
                                        fragment5 = null;
                                    }
                                    AbstractC0695o.C0696a c0696a2 = new AbstractC0695o.C0696a(3, fragment4);
                                    c0696a2.f2492c = c0696a.f2492c;
                                    c0696a2.f2494e = c0696a.f2494e;
                                    c0696a2.f2493d = c0696a.f2493d;
                                    c0696a2.f2495f = c0696a.f2495f;
                                    this.f2472d.add(i5, c0696a2);
                                    arrayList.remove(fragment4);
                                    i2 = i5 + 1;
                                    fragment = fragment5;
                                }
                            }
                        }
                        if (z) {
                            this.f2472d.remove(i2);
                            i2--;
                        } else {
                            c0696a.f2490a = 1;
                            arrayList.add(fragment3);
                        }
                        i3 = i2;
                        break;
                    case 3:
                    case 6:
                        arrayList.remove(c0696a.f2491b);
                        i3 = i2;
                        fragment = fragment2;
                        if (c0696a.f2491b == fragment2) {
                            this.f2472d.add(i2, new AbstractC0695o.C0696a(9, c0696a.f2491b));
                            i3 = i2 + 1;
                            fragment = null;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                    case 5:
                        break;
                    case 8:
                        this.f2472d.add(i2, new AbstractC0695o.C0696a(9, fragment2));
                        i3 = i2 + 1;
                        fragment = c0696a.f2491b;
                        break;
                    default:
                        fragment = fragment2;
                        i3 = i2;
                        break;
                }
                i = i3 + 1;
            } else {
                return fragment2;
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: a */
    public AbstractC0695o mo19661a(Fragment fragment) {
        if (fragment.f2254A == null || fragment.f2254A == this.f2326a) {
            return super.mo19661a(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: a */
    public AbstractC0695o mo19660a(Fragment fragment, AbstractC0864e.EnumC0866b enumC0866b) {
        if (fragment.f2254A != this.f2326a) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f2326a);
        }
        if (enumC0866b.m19224a(AbstractC0864e.EnumC0866b.CREATED)) {
            return super.mo19660a(fragment, enumC0866b);
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + AbstractC0864e.EnumC0866b.CREATED);
    }

    /* renamed from: a */
    public void m19913a() {
        if (this.f2489u != null) {
            for (int i = 0; i < this.f2489u.size(); i++) {
                this.f2489u.get(i).run();
            }
            this.f2489u = null;
        }
    }

    /* renamed from: a */
    public void m19912a(int i) {
        if (!this.f2479k) {
            return;
        }
        if (LayoutInflater$Factory2C0673j.f2378b) {
            Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
        }
        int size = this.f2472d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0695o.C0696a c0696a = this.f2472d.get(i2);
            if (c0696a.f2491b != null) {
                c0696a.f2491b.f2302z += i;
                if (LayoutInflater$Factory2C0673j.f2378b) {
                    Log.v("FragmentManager", "Bump nesting of " + c0696a.f2491b + " to " + c0696a.f2491b.f2302z);
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: a */
    public void mo19662a(int i, Fragment fragment, String str, int i2) {
        super.mo19662a(i, fragment, str, i2);
        fragment.f2254A = this.f2326a;
    }

    /* renamed from: a */
    public void m19911a(Fragment.AbstractC0658b abstractC0658b) {
        for (int i = 0; i < this.f2472d.size(); i++) {
            AbstractC0695o.C0696a c0696a = this.f2472d.get(i);
            if (m19904b(c0696a)) {
                c0696a.f2491b.m19981a(abstractC0658b);
            }
        }
    }

    /* renamed from: a */
    public void m19910a(String str, PrintWriter printWriter) {
        m19909a(str, printWriter, true);
    }

    /* renamed from: a */
    public void m19909a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2481m);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2328c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2327b);
            if (this.f2477i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2477i));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f2478j));
            }
            if (this.f2473e != 0 || this.f2474f != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2473e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2474f));
            }
            if (this.f2475g != 0 || this.f2476h != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2475g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2476h));
            }
            if (this.f2482n != 0 || this.f2483o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2482n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2483o);
            }
            if (this.f2484p != 0 || this.f2485q != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2484p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f2485q);
            }
        }
        if (!this.f2472d.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f2472d.size();
            for (int i = 0; i < size; i++) {
                AbstractC0695o.C0696a c0696a = this.f2472d.get(i);
                switch (c0696a.f2490a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + c0696a.f2490a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0696a.f2491b);
                if (z) {
                    if (c0696a.f2492c != 0 || c0696a.f2493d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c0696a.f2492c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c0696a.f2493d));
                    }
                    if (c0696a.f2494e != 0 || c0696a.f2495f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c0696a.f2494e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c0696a.f2495f));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m19908a(ArrayList<C0659a> arrayList, int i, int i2) {
        boolean z;
        if (i2 != i) {
            int size = this.f2472d.size();
            int i3 = -1;
            int i4 = 0;
            loop0: while (true) {
                if (i4 >= size) {
                    z = false;
                    break;
                }
                AbstractC0695o.C0696a c0696a = this.f2472d.get(i4);
                int i5 = c0696a.f2491b != null ? c0696a.f2491b.f2259F : 0;
                if (i5 == 0 || i5 == i3) {
                    i5 = i3;
                } else {
                    for (int i6 = i; i6 < i2; i6++) {
                        C0659a c0659a = arrayList.get(i6);
                        int size2 = c0659a.f2472d.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            AbstractC0695o.C0696a c0696a2 = c0659a.f2472d.get(i7);
                            if ((c0696a2.f2491b != null ? c0696a2.f2491b.f2259F : 0) == i5) {
                                z = true;
                                break loop0;
                            }
                        }
                    }
                    continue;
                }
                i4++;
                i3 = i5;
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // androidx.fragment.app.LayoutInflater$Factory2C0673j.AbstractC0685e
    /* renamed from: a */
    public boolean mo19688a(ArrayList<C0659a> arrayList, ArrayList<Boolean> arrayList2) {
        if (LayoutInflater$Factory2C0673j.f2378b) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.f2479k) {
            this.f2326a.m19754b(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: b */
    public int mo19657b() {
        return m19906a(false);
    }

    /* renamed from: b */
    public Fragment m19903b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2472d.size() - 1; size >= 0; size--) {
            AbstractC0695o.C0696a c0696a = this.f2472d.get(size);
            switch (c0696a.f2490a) {
                case 1:
                case 7:
                    arrayList.remove(c0696a.f2491b);
                    break;
                case 3:
                case 6:
                    arrayList.add(c0696a.f2491b);
                    break;
                case 8:
                    fragment = null;
                    break;
                case 9:
                    fragment = c0696a.f2491b;
                    break;
                case 10:
                    c0696a.f2497h = c0696a.f2496g;
                    break;
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: b */
    public AbstractC0695o mo19654b(Fragment fragment) {
        if (fragment.f2254A == null || fragment.f2254A == this.f2326a) {
            return super.mo19654b(fragment);
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: b */
    public void m19902b(boolean z) {
        for (int size = this.f2472d.size() - 1; size >= 0; size--) {
            AbstractC0695o.C0696a c0696a = this.f2472d.get(size);
            Fragment fragment = c0696a.f2491b;
            if (fragment != null) {
                fragment.m19997a(LayoutInflater$Factory2C0673j.m19740d(this.f2477i), this.f2478j);
            }
            switch (c0696a.f2490a) {
                case 1:
                    fragment.m19953c(c0696a.f2495f);
                    this.f2326a.m19714m(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0696a.f2490a);
                case 3:
                    fragment.m19953c(c0696a.f2494e);
                    this.f2326a.m19780a(fragment, false);
                    break;
                case 4:
                    fragment.m19953c(c0696a.f2494e);
                    this.f2326a.m19710o(fragment);
                    break;
                case 5:
                    fragment.m19953c(c0696a.f2495f);
                    this.f2326a.m19712n(fragment);
                    break;
                case 6:
                    fragment.m19953c(c0696a.f2494e);
                    this.f2326a.m19706q(fragment);
                    break;
                case 7:
                    fragment.m19953c(c0696a.f2495f);
                    this.f2326a.m19708p(fragment);
                    break;
                case 8:
                    this.f2326a.m19700t(null);
                    break;
                case 9:
                    this.f2326a.m19700t(fragment);
                    break;
                case 10:
                    this.f2326a.m19781a(fragment, c0696a.f2496g);
                    break;
            }
            if (!this.f2488t && c0696a.f2490a != 3 && fragment != null) {
                this.f2326a.m19720j(fragment);
            }
        }
        if (this.f2488t || !z) {
            return;
        }
        this.f2326a.m19797a(this.f2326a.f2396m, true);
    }

    /* renamed from: b */
    public boolean m19905b(int i) {
        boolean z;
        int size = this.f2472d.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                z = false;
                break;
            }
            AbstractC0695o.C0696a c0696a = this.f2472d.get(i2);
            int i3 = c0696a.f2491b != null ? c0696a.f2491b.f2259F : 0;
            if (i3 != 0 && i3 == i) {
                z = true;
                break;
            }
            i2++;
        }
        return z;
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: c */
    public int mo19653c() {
        return m19906a(true);
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: c */
    public AbstractC0695o mo19652c(Fragment fragment) {
        if (fragment.f2254A == null || fragment.f2254A == this.f2326a) {
            return super.mo19652c(fragment);
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: d */
    public AbstractC0695o mo19650d(Fragment fragment) {
        if (fragment.f2254A == null || fragment.f2254A == this.f2326a) {
            return super.mo19650d(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: d */
    public void mo19651d() {
        m19646j();
        this.f2326a.m19753b((LayoutInflater$Factory2C0673j.AbstractC0685e) this, false);
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: e */
    public void mo19649e() {
        m19646j();
        this.f2326a.m19753b((LayoutInflater$Factory2C0673j.AbstractC0685e) this, true);
    }

    /* renamed from: f */
    public void m19901f() {
        int size = this.f2472d.size();
        for (int i = 0; i < size; i++) {
            AbstractC0695o.C0696a c0696a = this.f2472d.get(i);
            Fragment fragment = c0696a.f2491b;
            if (fragment != null) {
                fragment.m19997a(this.f2477i, this.f2478j);
            }
            switch (c0696a.f2490a) {
                case 1:
                    fragment.m19953c(c0696a.f2492c);
                    this.f2326a.m19780a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0696a.f2490a);
                case 3:
                    fragment.m19953c(c0696a.f2493d);
                    this.f2326a.m19714m(fragment);
                    break;
                case 4:
                    fragment.m19953c(c0696a.f2493d);
                    this.f2326a.m19712n(fragment);
                    break;
                case 5:
                    fragment.m19953c(c0696a.f2492c);
                    this.f2326a.m19710o(fragment);
                    break;
                case 6:
                    fragment.m19953c(c0696a.f2493d);
                    this.f2326a.m19708p(fragment);
                    break;
                case 7:
                    fragment.m19953c(c0696a.f2492c);
                    this.f2326a.m19706q(fragment);
                    break;
                case 8:
                    this.f2326a.m19700t(fragment);
                    break;
                case 9:
                    this.f2326a.m19700t(null);
                    break;
                case 10:
                    this.f2326a.m19781a(fragment, c0696a.f2497h);
                    break;
            }
            if (!this.f2488t && c0696a.f2490a != 1 && fragment != null) {
                this.f2326a.m19720j(fragment);
            }
        }
        if (!this.f2488t) {
            this.f2326a.m19797a(this.f2326a.f2396m, true);
        }
    }

    /* renamed from: g */
    public boolean m19900g() {
        boolean z;
        int i = 0;
        while (true) {
            z = false;
            if (i >= this.f2472d.size()) {
                break;
            } else if (m19904b(this.f2472d.get(i))) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: h */
    public String m19899h() {
        return this.f2481m;
    }

    @Override // androidx.fragment.app.AbstractC0695o
    /* renamed from: i */
    public boolean mo19647i() {
        return this.f2472d.isEmpty();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2328c >= 0) {
            sb.append(" #");
            sb.append(this.f2328c);
        }
        if (this.f2481m != null) {
            sb.append(" ");
            sb.append(this.f2481m);
        }
        sb.append("}");
        return sb.toString();
    }
}
