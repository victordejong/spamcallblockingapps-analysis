package androidx.fragment.app;

import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.AbstractC1253j;
import java.io.PrintWriter;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class C1071a extends AbstractC1121s implements FragmentManager.AbstractC1061a, FragmentManager.AbstractC1064d {

    /* renamed from: a */
    final FragmentManager f4271a;

    /* renamed from: b */
    boolean f4272b;

    /* renamed from: c */
    int f4273c;

    public C1071a(FragmentManager fragmentManager) {
        super(fragmentManager.m43685q(), fragmentManager.f4220l != null ? fragmentManager.f4220l.f4360c.getClassLoader() : null);
        this.f4273c = -1;
        this.f4271a = fragmentManager;
    }

    /* renamed from: a */
    public static boolean m43652a(AbstractC1121s.C1122a c1122a) {
        Fragment fragment = c1122a.f4421b;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    /* renamed from: b */
    private int m43643b(boolean z) {
        if (!this.f4272b) {
            if (FragmentManager.m43764a(2)) {
                new StringBuilder("Commit: ").append(this);
                PrintWriter printWriter = new PrintWriter(new C1146y("FragmentManager"));
                m43651a("  ", printWriter);
                printWriter.close();
            }
            this.f4272b = true;
            if (this.f4409j) {
                this.f4273c = this.f4271a.f4215g.getAndIncrement();
            } else {
                this.f4273c = -1;
            }
            this.f4271a.m43747a(this, z);
            return this.f4273c;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: a */
    public final Fragment m43648a(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            Fragment fragment2 = fragment;
            if (i3 < this.f4403d.size()) {
                AbstractC1121s.C1122a c1122a = this.f4403d.get(i3);
                int i4 = c1122a.f4420a;
                if (i4 != 1) {
                    if (i4 == 2) {
                        Fragment fragment3 = c1122a.f4421b;
                        int i5 = fragment3.mContainerId;
                        int size = arrayList.size() - 1;
                        boolean z = false;
                        i = i3;
                        fragment = fragment2;
                        while (size >= 0) {
                            Fragment fragment4 = arrayList.get(size);
                            Fragment fragment5 = fragment;
                            int i6 = i;
                            boolean z2 = z;
                            if (fragment4.mContainerId == i5) {
                                if (fragment4 == fragment3) {
                                    z2 = true;
                                    fragment5 = fragment;
                                    i6 = i;
                                } else {
                                    fragment5 = fragment;
                                    int i7 = i;
                                    if (fragment4 == fragment) {
                                        this.f4403d.add(i, new AbstractC1121s.C1122a(9, fragment4));
                                        i7 = i + 1;
                                        fragment5 = null;
                                    }
                                    AbstractC1121s.C1122a c1122a2 = new AbstractC1121s.C1122a(3, fragment4);
                                    c1122a2.f4422c = c1122a.f4422c;
                                    c1122a2.f4424e = c1122a.f4424e;
                                    c1122a2.f4423d = c1122a.f4423d;
                                    c1122a2.f4425f = c1122a.f4425f;
                                    this.f4403d.add(i7, c1122a2);
                                    arrayList.remove(fragment4);
                                    i6 = i7 + 1;
                                    z2 = z;
                                }
                            }
                            size--;
                            fragment = fragment5;
                            i = i6;
                            z = z2;
                        }
                        if (z) {
                            this.f4403d.remove(i);
                            i--;
                        } else {
                            c1122a.f4420a = 1;
                            arrayList.add(fragment3);
                        }
                    } else if (i4 == 3 || i4 == 6) {
                        arrayList.remove(c1122a.f4421b);
                        fragment = fragment2;
                        i = i3;
                        if (c1122a.f4421b == fragment2) {
                            this.f4403d.add(i3, new AbstractC1121s.C1122a(9, c1122a.f4421b));
                            i = i3 + 1;
                            fragment = null;
                        }
                    } else if (i4 != 7) {
                        if (i4 != 8) {
                            fragment = fragment2;
                            i = i3;
                        } else {
                            this.f4403d.add(i3, new AbstractC1121s.C1122a(9, fragment2));
                            i = i3 + 1;
                            fragment = c1122a.f4421b;
                        }
                    }
                    i2 = i + 1;
                }
                arrayList.add(c1122a.f4421b);
                i = i3;
                fragment = fragment2;
                i2 = i + 1;
            } else {
                return fragment2;
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: a */
    public final AbstractC1121s mo43539a(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.f4271a) {
            return super.mo43539a(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: a */
    public final AbstractC1121s mo43538a(Fragment fragment, AbstractC1253j.EnumC1256b enumC1256b) {
        if (fragment.mFragmentManager != this.f4271a) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f4271a);
        } else if (enumC1256b == AbstractC1253j.EnumC1256b.INITIALIZED && fragment.mState >= 0) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + enumC1256b + " after the Fragment has been created");
        } else if (enumC1256b != AbstractC1253j.EnumC1256b.DESTROYED) {
            return super.mo43538a(fragment, enumC1256b);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + enumC1256b + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
    }

    /* renamed from: a */
    public final void m43655a() {
        if (this.f4419t != null) {
            for (int i = 0; i < this.f4419t.size(); i++) {
                this.f4419t.get(i).run();
            }
            this.f4419t = null;
        }
    }

    /* renamed from: a */
    public final void m43654a(int i) {
        if (!this.f4409j) {
            return;
        }
        if (FragmentManager.m43764a(2)) {
            StringBuilder sb = new StringBuilder("Bump nesting in ");
            sb.append(this);
            sb.append(" by ");
            sb.append(i);
        }
        int size = this.f4403d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(i2);
            if (c1122a.f4421b != null) {
                c1122a.f4421b.mBackStackNesting += i;
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb2 = new StringBuilder("Bump nesting of ");
                    sb2.append(c1122a.f4421b);
                    sb2.append(" to ");
                    sb2.append(c1122a.f4421b.mBackStackNesting);
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: a */
    public final void mo43540a(int i, Fragment fragment, String str, int i2) {
        super.mo43540a(i, fragment, str, i2);
        fragment.mFragmentManager = this.f4271a;
    }

    /* renamed from: a */
    public final void m43653a(Fragment.AbstractC1045c abstractC1045c) {
        for (int i = 0; i < this.f4403d.size(); i++) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(i);
            if (m43652a(c1122a)) {
                c1122a.f4421b.setOnStartEnterTransitionListener(abstractC1045c);
            }
        }
    }

    /* renamed from: a */
    public final void m43651a(String str, PrintWriter printWriter) {
        m43650a(str, printWriter, true);
    }

    /* renamed from: a */
    public final void m43650a(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f4411l);
            printWriter.print(" mIndex=");
            printWriter.print(this.f4273c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f4272b);
            if (this.f4408i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f4408i));
            }
            if (this.f4404e != 0 || this.f4405f != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f4404e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f4405f));
            }
            if (this.f4406g != 0 || this.f4407h != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f4406g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f4407h));
            }
            if (this.f4412m != 0 || this.f4413n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f4412m));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f4413n);
            }
            if (this.f4414o != 0 || this.f4415p != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f4414o));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f4415p);
            }
        }
        if (!this.f4403d.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f4403d.size();
            for (int i = 0; i < size; i++) {
                AbstractC1121s.C1122a c1122a = this.f4403d.get(i);
                switch (c1122a.f4420a) {
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
                        str2 = "cmd=" + c1122a.f4420a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(StringUtils.SPACE);
                printWriter.println(c1122a.f4421b);
                if (z) {
                    if (c1122a.f4422c != 0 || c1122a.f4423d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c1122a.f4422c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c1122a.f4423d));
                    }
                    if (c1122a.f4424e != 0 || c1122a.f4425f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c1122a.f4424e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c1122a.f4425f));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m43646a(boolean z) {
        for (int size = this.f4403d.size() - 1; size >= 0; size--) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(size);
            Fragment fragment = c1122a.f4421b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.m43709e(this.f4408i));
                fragment.setSharedElementNames(this.f4417r, this.f4416q);
            }
            switch (c1122a.f4420a) {
                case 1:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43750a(fragment, true);
                    this.f4271a.m43700i(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c1122a.f4420a);
                case 3:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43702h(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    FragmentManager.m43696k(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43750a(fragment, true);
                    this.f4271a.m43698j(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43692m(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43750a(fragment, true);
                    this.f4271a.m43694l(fragment);
                    break;
                case 8:
                    this.f4271a.m43690n(null);
                    break;
                case 9:
                    this.f4271a.m43690n(fragment);
                    break;
                case 10:
                    this.f4271a.m43751a(fragment, c1122a.f4426g);
                    break;
            }
            if (!this.f4418s && c1122a.f4420a != 3 && fragment != null && !FragmentManager.f4192a) {
                this.f4271a.m43706f(fragment);
            }
        }
        if (this.f4418s || !z || FragmentManager.f4192a) {
            return;
        }
        FragmentManager fragmentManager = this.f4271a;
        fragmentManager.m43763a(fragmentManager.f4219k, true);
    }

    /* renamed from: a */
    public final boolean m43649a(ArrayList<C1071a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f4403d.size();
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(i4);
            int i5 = c1122a.f4421b != null ? c1122a.f4421b.mContainerId : 0;
            int i6 = i3;
            if (i5 != 0) {
                i6 = i3;
                if (i5 != i3) {
                    for (int i7 = i; i7 < i2; i7++) {
                        C1071a c1071a = arrayList.get(i7);
                        int size2 = c1071a.f4403d.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            AbstractC1121s.C1122a c1122a2 = c1071a.f4403d.get(i8);
                            if ((c1122a2.f4421b != null ? c1122a2.f4421b.mContainerId : 0) == i5) {
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

    @Override // androidx.fragment.app.FragmentManager.AbstractC1064d
    /* renamed from: a */
    public final boolean mo43647a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.m43764a(2)) {
            new StringBuilder("Run: ").append(this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f4409j) {
            FragmentManager fragmentManager = this.f4271a;
            if (fragmentManager.f4211c == null) {
                fragmentManager.f4211c = new ArrayList<>();
            }
            fragmentManager.f4211c.add(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: b */
    public final int mo43536b() {
        return m43643b(false);
    }

    /* renamed from: b */
    public final Fragment m43644b(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f4403d.size() - 1; size >= 0; size--) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(size);
            int i = c1122a.f4420a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c1122a.f4421b;
                            break;
                        case 10:
                            c1122a.f4427h = c1122a.f4426g;
                            break;
                    }
                }
                arrayList.add(c1122a.f4421b);
            }
            arrayList.remove(c1122a.f4421b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: b */
    public final AbstractC1121s mo43534b(Fragment fragment) {
        if (fragment.mFragmentManager == null || fragment.mFragmentManager == this.f4271a) {
            return super.mo43534b(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: b */
    public final boolean m43645b(int i) {
        int size = this.f4403d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(i2);
            int i3 = c1122a.f4421b != null ? c1122a.f4421b.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: c */
    public final int mo43532c() {
        return m43643b(true);
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: d */
    public final void mo43530d() {
        m43526j();
        this.f4271a.m43726b((FragmentManager.AbstractC1064d) this, false);
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: e */
    public final void mo43529e() {
        m43526j();
        this.f4271a.m43726b((FragmentManager.AbstractC1064d) this, true);
    }

    /* renamed from: f */
    public final void m43642f() {
        int size = this.f4403d.size();
        for (int i = 0; i < size; i++) {
            AbstractC1121s.C1122a c1122a = this.f4403d.get(i);
            Fragment fragment = c1122a.f4421b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f4408i);
                fragment.setSharedElementNames(this.f4416q, this.f4417r);
            }
            switch (c1122a.f4420a) {
                case 1:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43750a(fragment, false);
                    this.f4271a.m43702h(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c1122a.f4420a);
                case 3:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43700i(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43698j(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43750a(fragment, false);
                    FragmentManager.m43696k(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43694l(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c1122a.f4422c, c1122a.f4423d, c1122a.f4424e, c1122a.f4425f);
                    this.f4271a.m43750a(fragment, false);
                    this.f4271a.m43692m(fragment);
                    break;
                case 8:
                    this.f4271a.m43690n(fragment);
                    break;
                case 9:
                    this.f4271a.m43690n(null);
                    break;
                case 10:
                    this.f4271a.m43751a(fragment, c1122a.f4427h);
                    break;
            }
            if (!this.f4418s && c1122a.f4420a != 1 && fragment != null && !FragmentManager.f4192a) {
                this.f4271a.m43706f(fragment);
            }
        }
        if (this.f4418s || FragmentManager.f4192a) {
            return;
        }
        FragmentManager fragmentManager = this.f4271a;
        fragmentManager.m43763a(fragmentManager.f4219k, true);
    }

    @Override // androidx.fragment.app.FragmentManager.AbstractC1061a
    /* renamed from: g */
    public final String mo43641g() {
        return this.f4411l;
    }

    @Override // androidx.fragment.app.AbstractC1121s
    /* renamed from: h */
    public final boolean mo43528h() {
        return this.f4403d.isEmpty();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f4273c >= 0) {
            sb.append(" #");
            sb.append(this.f4273c);
        }
        if (this.f4411l != null) {
            sb.append(StringUtils.SPACE);
            sb.append(this.f4411l);
        }
        sb.append("}");
        return sb.toString();
    }
}
