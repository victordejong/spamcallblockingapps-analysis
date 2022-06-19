package androidx.fragment.app;

import android.util.Log;
import androidx.core.p022f.C0496b;
import androidx.fragment.app.AbstractC0738l;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.LayoutInflater$Factory2C0720i;
import androidx.lifecycle.AbstractC0896g;
import java.io.PrintWriter;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class C0708a extends AbstractC0738l implements LayoutInflater$Factory2C0720i.AbstractC0732e {

    /* renamed from: a */
    final LayoutInflater$Factory2C0720i f2314a;

    /* renamed from: b */
    boolean f2315b;

    /* renamed from: c */
    int f2316c = -1;

    public C0708a(LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i) {
        this.f2314a = layoutInflater$Factory2C0720i;
    }

    /* renamed from: b */
    private static boolean m5684b(AbstractC0738l.C0739a c0739a) {
        Fragment fragment = c0739a.f2436b;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    /* renamed from: a */
    int m5686a(boolean z) {
        if (!this.f2315b) {
            if (LayoutInflater$Factory2C0720i.f2340b) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new C0496b("FragmentManager"));
                m5690a("  ", printWriter);
                printWriter.close();
            }
            this.f2315b = true;
            if (this.f2424k) {
                this.f2316c = this.f2314a.m5568a(this);
            } else {
                this.f2316c = -1;
            }
            this.f2314a.m5565a(this, z);
            return this.f2316c;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: a */
    public Fragment m5687a(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            Fragment fragment2 = fragment;
            if (i3 < this.f2417d.size()) {
                AbstractC0738l.C0739a c0739a = this.f2417d.get(i3);
                int i4 = c0739a.f2435a;
                if (i4 != 1) {
                    if (i4 == 2) {
                        Fragment fragment3 = c0739a.f2436b;
                        int i5 = fragment3.mContainerId;
                        int size = arrayList.size() - 1;
                        fragment = fragment2;
                        boolean z = false;
                        while (size >= 0) {
                            Fragment fragment4 = arrayList.get(size);
                            boolean z2 = z;
                            int i6 = i3;
                            Fragment fragment5 = fragment;
                            if (fragment4.mContainerId == i5) {
                                if (fragment4 == fragment3) {
                                    z2 = true;
                                    i6 = i3;
                                    fragment5 = fragment;
                                } else {
                                    int i7 = i3;
                                    fragment5 = fragment;
                                    if (fragment4 == fragment) {
                                        this.f2417d.add(i3, new AbstractC0738l.C0739a(9, fragment4));
                                        i7 = i3 + 1;
                                        fragment5 = null;
                                    }
                                    AbstractC0738l.C0739a c0739a2 = new AbstractC0738l.C0739a(3, fragment4);
                                    c0739a2.f2437c = c0739a.f2437c;
                                    c0739a2.f2439e = c0739a.f2439e;
                                    c0739a2.f2438d = c0739a.f2438d;
                                    c0739a2.f2440f = c0739a.f2440f;
                                    this.f2417d.add(i7, c0739a2);
                                    arrayList.remove(fragment4);
                                    i6 = i7 + 1;
                                    z2 = z;
                                }
                            }
                            size--;
                            z = z2;
                            i3 = i6;
                            fragment = fragment5;
                        }
                        if (z) {
                            this.f2417d.remove(i3);
                            i3--;
                        } else {
                            c0739a.f2435a = 1;
                            arrayList.add(fragment3);
                        }
                        i = i3;
                    } else if (i4 == 3 || i4 == 6) {
                        arrayList.remove(c0739a.f2436b);
                        i = i3;
                        fragment = fragment2;
                        if (c0739a.f2436b == fragment2) {
                            this.f2417d.add(i3, new AbstractC0738l.C0739a(9, c0739a.f2436b));
                            i = i3 + 1;
                            fragment = null;
                        }
                    } else if (i4 != 7) {
                        if (i4 != 8) {
                            i = i3;
                            fragment = fragment2;
                        } else {
                            this.f2417d.add(i3, new AbstractC0738l.C0739a(9, fragment2));
                            i = i3 + 1;
                            fragment = c0739a.f2436b;
                        }
                    }
                    i2 = i + 1;
                }
                arrayList.add(c0739a.f2436b);
                fragment = fragment2;
                i = i3;
                i2 = i + 1;
            } else {
                return fragment2;
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: a */
    public AbstractC0738l mo5461a(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.f2314a) {
            return super.mo5461a(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: a */
    public AbstractC0738l mo5460a(Fragment fragment, AbstractC0896g.EnumC0898b enumC0898b) {
        if (fragment.mFragmentManager != this.f2314a) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f2314a);
        } else if (enumC0898b.m5114a(AbstractC0896g.EnumC0898b.CREATED)) {
            return super.mo5460a(fragment, enumC0898b);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle below " + AbstractC0896g.EnumC0898b.CREATED);
        }
    }

    /* renamed from: a */
    public void m5693a() {
        if (this.f2434u != null) {
            for (int i = 0; i < this.f2434u.size(); i++) {
                this.f2434u.get(i).run();
            }
            this.f2434u = null;
        }
    }

    /* renamed from: a */
    public void m5692a(int i) {
        if (!this.f2424k) {
            return;
        }
        if (LayoutInflater$Factory2C0720i.f2340b) {
            Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
        }
        int size = this.f2417d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(i2);
            if (c0739a.f2436b != null) {
                c0739a.f2436b.mBackStackNesting += i;
                if (LayoutInflater$Factory2C0720i.f2340b) {
                    Log.v("FragmentManager", "Bump nesting of " + c0739a.f2436b + " to " + c0739a.f2436b.mBackStackNesting);
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: a */
    public void mo5462a(int i, Fragment fragment, String str, int i2) {
        super.mo5462a(i, fragment, str, i2);
        fragment.mFragmentManager = this.f2314a;
    }

    /* renamed from: a */
    public void m5691a(Fragment.AbstractC0705b abstractC0705b) {
        for (int i = 0; i < this.f2417d.size(); i++) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(i);
            if (m5684b(c0739a)) {
                c0739a.f2436b.setOnStartEnterTransitionListener(abstractC0705b);
            }
        }
    }

    /* renamed from: a */
    public void m5690a(String str, PrintWriter printWriter) {
        m5689a(str, printWriter, true);
    }

    /* renamed from: a */
    public void m5689a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2426m);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2316c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2315b);
            if (this.f2422i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2422i));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.f2423j));
            }
            if (this.f2418e != 0 || this.f2419f != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2418e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2419f));
            }
            if (this.f2420g != 0 || this.f2421h != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2420g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2421h));
            }
            if (this.f2427n != 0 || this.f2428o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2427n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2428o);
            }
            if (this.f2429p != 0 || this.f2430q != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2429p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f2430q);
            }
        }
        if (!this.f2417d.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f2417d.size();
            for (int i = 0; i < size; i++) {
                AbstractC0738l.C0739a c0739a = this.f2417d.get(i);
                switch (c0739a.f2435a) {
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
                        str2 = "cmd=" + c0739a.f2435a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0739a.f2436b);
                if (z) {
                    if (c0739a.f2437c != 0 || c0739a.f2438d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c0739a.f2437c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c0739a.f2438d));
                    }
                    if (c0739a.f2439e != 0 || c0739a.f2440f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c0739a.f2439e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c0739a.f2440f));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m5688a(ArrayList<C0708a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f2417d.size();
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(i4);
            int i5 = c0739a.f2436b != null ? c0739a.f2436b.mContainerId : 0;
            int i6 = i3;
            if (i5 != 0) {
                i6 = i3;
                if (i5 != i3) {
                    for (int i7 = i; i7 < i2; i7++) {
                        C0708a c0708a = arrayList.get(i7);
                        int size2 = c0708a.f2417d.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            AbstractC0738l.C0739a c0739a2 = c0708a.f2417d.get(i8);
                            if ((c0739a2.f2436b != null ? c0739a2.f2436b.mContainerId : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i6 = i5;
                } else {
                    continue;
                }
            }
            i4++;
            i3 = i6;
        }
        return false;
    }

    @Override // androidx.fragment.app.LayoutInflater$Factory2C0720i.AbstractC0732e
    /* renamed from: a */
    public boolean mo5478a(ArrayList<C0708a> arrayList, ArrayList<Boolean> arrayList2) {
        if (LayoutInflater$Factory2C0720i.f2340b) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (this.f2424k) {
            this.f2314a.m5545b(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: b */
    public int mo5457b() {
        return m5686a(false);
    }

    /* renamed from: b */
    public Fragment m5683b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2417d.size() - 1; size >= 0; size--) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(size);
            int i = c0739a.f2435a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c0739a.f2436b;
                            break;
                        case 10:
                            c0739a.f2442h = c0739a.f2441g;
                            break;
                    }
                }
                arrayList.add(c0739a.f2436b);
            }
            arrayList.remove(c0739a.f2436b);
        }
        return fragment;
    }

    /* renamed from: b */
    public void m5682b(boolean z) {
        for (int size = this.f2417d.size() - 1; size >= 0; size--) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(size);
            Fragment fragment = c0739a.f2436b;
            if (fragment != null) {
                fragment.setNextTransition(LayoutInflater$Factory2C0720i.m5531d(this.f2422i), this.f2423j);
            }
            switch (c0739a.f2435a) {
                case 1:
                    fragment.setNextAnim(c0739a.f2440f);
                    this.f2314a.m5503n(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0739a.f2435a);
                case 3:
                    fragment.setNextAnim(c0739a.f2439e);
                    this.f2314a.m5569a(fragment, false);
                    break;
                case 4:
                    fragment.setNextAnim(c0739a.f2439e);
                    this.f2314a.m5499p(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(c0739a.f2440f);
                    this.f2314a.m5501o(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(c0739a.f2439e);
                    this.f2314a.m5495r(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(c0739a.f2440f);
                    this.f2314a.m5497q(fragment);
                    break;
                case 8:
                    this.f2314a.m5489u(null);
                    break;
                case 9:
                    this.f2314a.m5489u(fragment);
                    break;
                case 10:
                    this.f2314a.m5570a(fragment, c0739a.f2441g);
                    break;
            }
            if (!this.f2433t && c0739a.f2435a != 3 && fragment != null) {
                this.f2314a.m5509k(fragment);
            }
        }
        if (this.f2433t || !z) {
            return;
        }
        LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.f2314a;
        layoutInflater$Factory2C0720i.m5586a(layoutInflater$Factory2C0720i.f2358m, true);
    }

    /* renamed from: b */
    public boolean m5685b(int i) {
        int size = this.f2417d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(i2);
            int i3 = c0739a.f2436b != null ? c0739a.f2436b.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: c */
    public int mo5456c() {
        return m5686a(true);
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: d */
    public void mo5455d() {
        m5453i();
        this.f2314a.m5544b((LayoutInflater$Factory2C0720i.AbstractC0732e) this, false);
    }

    @Override // androidx.fragment.app.AbstractC0738l
    /* renamed from: e */
    public void mo5454e() {
        m5453i();
        this.f2314a.m5544b((LayoutInflater$Factory2C0720i.AbstractC0732e) this, true);
    }

    /* renamed from: f */
    public void m5681f() {
        int size = this.f2417d.size();
        for (int i = 0; i < size; i++) {
            AbstractC0738l.C0739a c0739a = this.f2417d.get(i);
            Fragment fragment = c0739a.f2436b;
            if (fragment != null) {
                fragment.setNextTransition(this.f2422i, this.f2423j);
            }
            switch (c0739a.f2435a) {
                case 1:
                    fragment.setNextAnim(c0739a.f2437c);
                    this.f2314a.m5569a(fragment, false);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0739a.f2435a);
                case 3:
                    fragment.setNextAnim(c0739a.f2438d);
                    this.f2314a.m5503n(fragment);
                    break;
                case 4:
                    fragment.setNextAnim(c0739a.f2438d);
                    this.f2314a.m5501o(fragment);
                    break;
                case 5:
                    fragment.setNextAnim(c0739a.f2437c);
                    this.f2314a.m5499p(fragment);
                    break;
                case 6:
                    fragment.setNextAnim(c0739a.f2438d);
                    this.f2314a.m5497q(fragment);
                    break;
                case 7:
                    fragment.setNextAnim(c0739a.f2437c);
                    this.f2314a.m5495r(fragment);
                    break;
                case 8:
                    this.f2314a.m5489u(fragment);
                    break;
                case 9:
                    this.f2314a.m5489u(null);
                    break;
                case 10:
                    this.f2314a.m5570a(fragment, c0739a.f2442h);
                    break;
            }
            if (!this.f2433t && c0739a.f2435a != 1 && fragment != null) {
                this.f2314a.m5509k(fragment);
            }
        }
        if (!this.f2433t) {
            LayoutInflater$Factory2C0720i layoutInflater$Factory2C0720i = this.f2314a;
            layoutInflater$Factory2C0720i.m5586a(layoutInflater$Factory2C0720i.f2358m, true);
        }
    }

    /* renamed from: g */
    public boolean m5680g() {
        for (int i = 0; i < this.f2417d.size(); i++) {
            if (m5684b(this.f2417d.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public String m5679h() {
        return this.f2426m;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2316c >= 0) {
            sb.append(" #");
            sb.append(this.f2316c);
        }
        if (this.f2426m != null) {
            sb.append(" ");
            sb.append(this.f2426m);
        }
        sb.append("}");
        return sb.toString();
    }
}
