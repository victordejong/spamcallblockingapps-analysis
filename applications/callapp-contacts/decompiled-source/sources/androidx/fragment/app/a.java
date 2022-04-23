package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.s;
import androidx.lifecycle.j;
import java.io.PrintWriter;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class a extends s implements FragmentManager.a, FragmentManager.d {

    /* renamed from: a  reason: collision with root package name */
    final FragmentManager f2222a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2223b;

    /* renamed from: c  reason: collision with root package name */
    int f2224c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(FragmentManager fragmentManager) {
        super(fragmentManager.q(), fragmentManager.l != null ? fragmentManager.l.f2291c.getClassLoader() : null);
        this.f2224c = -1;
        this.f2222a = fragmentManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(s.a aVar) {
        Fragment fragment = aVar.f2326b;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    private int b(boolean z) {
        if (!this.f2223b) {
            if (FragmentManager.a(2)) {
                new StringBuilder("Commit: ").append(this);
                PrintWriter printWriter = new PrintWriter(new y("FragmentManager"));
                a("  ", printWriter);
                printWriter.close();
            }
            this.f2223b = true;
            if (this.j) {
                this.f2224c = this.f2222a.g.getAndIncrement();
            } else {
                this.f2224c = -1;
            }
            this.f2222a.a(this, z);
            return this.f2224c;
        }
        throw new IllegalStateException("commit already called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment a(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        for (int i2 = 0; i2 < this.f2324d.size(); i2 = i + 1) {
            s.a aVar = this.f2324d.get(i2);
            int i3 = aVar.f2325a;
            if (i3 != 1) {
                if (i3 == 2) {
                    Fragment fragment2 = aVar.f2326b;
                    int i4 = fragment2.mContainerId;
                    boolean z = false;
                    i = i2;
                    fragment = fragment;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = arrayList.get(size);
                        fragment = fragment;
                        i = i;
                        z = z;
                        if (fragment3.mContainerId == i4) {
                            if (fragment3 == fragment2) {
                                z = true;
                                fragment = fragment;
                                i = i;
                            } else {
                                fragment = fragment;
                                int i5 = i;
                                if (fragment3 == fragment) {
                                    this.f2324d.add(i, new s.a(9, fragment3));
                                    i5 = i + 1;
                                    fragment = null;
                                }
                                s.a aVar2 = new s.a(3, fragment3);
                                aVar2.f2327c = aVar.f2327c;
                                aVar2.e = aVar.e;
                                aVar2.f2328d = aVar.f2328d;
                                aVar2.f = aVar.f;
                                this.f2324d.add(i5, aVar2);
                                arrayList.remove(fragment3);
                                i = i5 + 1;
                                z = z;
                            }
                        }
                    }
                    if (z) {
                        this.f2324d.remove(i);
                        i--;
                    } else {
                        aVar.f2325a = 1;
                        arrayList.add(fragment2);
                    }
                } else if (i3 == 3 || i3 == 6) {
                    arrayList.remove(aVar.f2326b);
                    fragment = fragment;
                    i = i2;
                    if (aVar.f2326b == fragment) {
                        this.f2324d.add(i2, new s.a(9, aVar.f2326b));
                        i = i2 + 1;
                        fragment = null;
                    }
                } else if (i3 != 7) {
                    if (i3 != 8) {
                        fragment = fragment;
                        i = i2;
                    } else {
                        this.f2324d.add(i2, new s.a(9, fragment));
                        i = i2 + 1;
                        fragment = aVar.f2326b;
                    }
                }
            }
            arrayList.add(aVar.f2326b);
            i = i2;
            fragment = fragment;
        }
        return fragment;
    }

    @Override // androidx.fragment.app.s
    public final s a(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.f2222a) {
            return super.a(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.s
    public final s a(Fragment fragment, j.b bVar) {
        if (fragment.mFragmentManager != this.f2222a) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f2222a);
        } else if (bVar == j.b.INITIALIZED && fragment.mState >= 0) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + bVar + " after the Fragment has been created");
        } else if (bVar != j.b.DESTROYED) {
            return super.a(fragment, bVar);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + bVar + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
    }

    public final void a() {
        if (this.t != null) {
            for (int i = 0; i < this.t.size(); i++) {
                this.t.get(i).run();
            }
            this.t = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        if (this.j) {
            if (FragmentManager.a(2)) {
                StringBuilder sb = new StringBuilder("Bump nesting in ");
                sb.append(this);
                sb.append(" by ");
                sb.append(i);
            }
            int size = this.f2324d.size();
            for (int i2 = 0; i2 < size; i2++) {
                s.a aVar = this.f2324d.get(i2);
                if (aVar.f2326b != null) {
                    aVar.f2326b.mBackStackNesting += i;
                    if (FragmentManager.a(2)) {
                        StringBuilder sb2 = new StringBuilder("Bump nesting of ");
                        sb2.append(aVar.f2326b);
                        sb2.append(" to ");
                        sb2.append(aVar.f2326b.mBackStackNesting);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.fragment.app.s
    public final void a(int i, Fragment fragment, String str, int i2) {
        super.a(i, fragment, str, i2);
        fragment.mFragmentManager = this.f2222a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment.c cVar) {
        for (int i = 0; i < this.f2324d.size(); i++) {
            s.a aVar = this.f2324d.get(i);
            if (a(aVar)) {
                aVar.f2326b.setOnStartEnterTransitionListener(cVar);
            }
        }
    }

    public final void a(String str, PrintWriter printWriter) {
        a(str, printWriter, true);
    }

    public final void a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.l);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2224c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2223b);
            if (this.i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.i));
            }
            if (!(this.e == 0 && this.f == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (!(this.g == 0 && this.h == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (!(this.m == 0 && this.n == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.n);
            }
            if (!(this.o == 0 && this.p == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.o));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.p);
            }
        }
        if (!this.f2324d.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f2324d.size();
            for (int i = 0; i < size; i++) {
                s.a aVar = this.f2324d.get(i);
                switch (aVar.f2325a) {
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
                        str2 = "cmd=" + aVar.f2325a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(StringUtils.SPACE);
                printWriter.println(aVar.f2326b);
                if (z) {
                    if (!(aVar.f2327c == 0 && aVar.f2328d == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.f2327c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f2328d));
                    }
                    if (aVar.e != 0 || aVar.f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(aVar.e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(aVar.f));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        for (int size = this.f2324d.size() - 1; size >= 0; size--) {
            s.a aVar = this.f2324d.get(size);
            Fragment fragment = aVar.f2326b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.e(this.i));
                fragment.setSharedElementNames(this.r, this.q);
            }
            switch (aVar.f2325a) {
                case 1:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.a(fragment, true);
                    this.f2222a.i(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2325a);
                case 3:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.h(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    FragmentManager.k(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.a(fragment, true);
                    this.f2222a.j(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.m(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.a(fragment, true);
                    this.f2222a.l(fragment);
                    break;
                case 8:
                    this.f2222a.n(null);
                    break;
                case 9:
                    this.f2222a.n(fragment);
                    break;
                case 10:
                    this.f2222a.a(fragment, aVar.g);
                    break;
            }
            if (!this.s && aVar.f2325a != 3 && fragment != null && !FragmentManager.f2185a) {
                this.f2222a.f(fragment);
            }
        }
        if (!(this.s || !z || FragmentManager.f2185a)) {
            FragmentManager fragmentManager = this.f2222a;
            fragmentManager.a(fragmentManager.k, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f2324d.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            s.a aVar = this.f2324d.get(i4);
            int i5 = aVar.f2326b != null ? aVar.f2326b.mContainerId : 0;
            i3 = i3;
            if (i5 != 0) {
                i3 = i3;
                if (i5 != i3) {
                    for (int i6 = i; i6 < i2; i6++) {
                        a aVar2 = arrayList.get(i6);
                        int size2 = aVar2.f2324d.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            s.a aVar3 = aVar2.f2324d.get(i7);
                            if ((aVar3.f2326b != null ? aVar3.f2326b.mContainerId : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i3 = i5;
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentManager.d
    public final boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.a(2)) {
            new StringBuilder("Run: ").append(this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.j) {
            return true;
        }
        FragmentManager fragmentManager = this.f2222a;
        if (fragmentManager.f2187c == null) {
            fragmentManager.f2187c = new ArrayList<>();
        }
        fragmentManager.f2187c.add(this);
        return true;
    }

    @Override // androidx.fragment.app.s
    public final int b() {
        return b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2324d.size() - 1; size >= 0; size--) {
            s.a aVar = this.f2324d.get(size);
            int i = aVar.f2325a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = aVar.f2326b;
                            break;
                        case 10:
                            aVar.h = aVar.g;
                            break;
                    }
                }
                arrayList.add(aVar.f2326b);
            }
            arrayList.remove(aVar.f2326b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.s
    public final s b(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.f2222a) {
            return super.b(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(int i) {
        int size = this.f2324d.size();
        for (int i2 = 0; i2 < size; i2++) {
            s.a aVar = this.f2324d.get(i2);
            int i3 = aVar.f2326b != null ? aVar.f2326b.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.s
    public final int c() {
        return b(true);
    }

    @Override // androidx.fragment.app.s
    public final void d() {
        j();
        this.f2222a.b((FragmentManager.d) this, false);
    }

    @Override // androidx.fragment.app.s
    public final void e() {
        j();
        this.f2222a.b((FragmentManager.d) this, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        int size = this.f2324d.size();
        for (int i = 0; i < size; i++) {
            s.a aVar = this.f2324d.get(i);
            Fragment fragment = aVar.f2326b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.i);
                fragment.setSharedElementNames(this.q, this.r);
            }
            switch (aVar.f2325a) {
                case 1:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.a(fragment, false);
                    this.f2222a.h(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2325a);
                case 3:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.i(fragment);
                    break;
                case 4:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.j(fragment);
                    break;
                case 5:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.a(fragment, false);
                    FragmentManager.k(fragment);
                    break;
                case 6:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.l(fragment);
                    break;
                case 7:
                    fragment.setAnimations(aVar.f2327c, aVar.f2328d, aVar.e, aVar.f);
                    this.f2222a.a(fragment, false);
                    this.f2222a.m(fragment);
                    break;
                case 8:
                    this.f2222a.n(fragment);
                    break;
                case 9:
                    this.f2222a.n(null);
                    break;
                case 10:
                    this.f2222a.a(fragment, aVar.h);
                    break;
            }
            if (!this.s && aVar.f2325a != 1 && fragment != null && !FragmentManager.f2185a) {
                this.f2222a.f(fragment);
            }
        }
        if (!(this.s || FragmentManager.f2185a)) {
            FragmentManager fragmentManager = this.f2222a;
            fragmentManager.a(fragmentManager.k, true);
        }
    }

    @Override // androidx.fragment.app.FragmentManager.a
    public final String g() {
        return this.l;
    }

    @Override // androidx.fragment.app.s
    public final boolean h() {
        return this.f2324d.isEmpty();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2224c >= 0) {
            sb.append(" #");
            sb.append(this.f2224c);
        }
        if (this.l != null) {
            sb.append(StringUtils.SPACE);
            sb.append(this.l);
        }
        sb.append("}");
        return sb.toString();
    }
}
