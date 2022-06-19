package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.AbstractC0754s;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import java.io.PrintWriter;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class C0706a extends AbstractC0754s implements FragmentManager.AbstractC0694n {

    /* renamed from: t */
    final FragmentManager f3418t;

    /* renamed from: u */
    boolean f3419u;

    /* renamed from: v */
    int f3420v;

    public C0706a(FragmentManager fragmentManager) {
        super(fragmentManager.m32757r0(), fragmentManager.m32750u0() != null ? fragmentManager.m32750u0().m32593h().getClassLoader() : null);
        this.f3420v = -1;
        this.f3418t = fragmentManager;
    }

    /* renamed from: D */
    private static boolean m32679D(AbstractC0754s.C0755a c0755a) {
        Fragment fragment = c0755a.f3568b;
        return fragment != null && fragment.f3231p && fragment.f3201L != null && !fragment.f3194E && !fragment.f3193D && fragment.m32906q0();
    }

    /* renamed from: A */
    public String m32682A() {
        return this.f3558k;
    }

    /* renamed from: B */
    public boolean m32681B(int i) {
        int size = this.f3550c.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f3550c.get(i2).f3568b;
            int i3 = fragment != null ? fragment.f3191B : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: C */
    public boolean m32680C(ArrayList<C0706a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f3550c.size();
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            Fragment fragment = this.f3550c.get(i4).f3568b;
            int i5 = fragment != null ? fragment.f3191B : 0;
            int i6 = i3;
            if (i5 != 0) {
                i6 = i3;
                if (i5 != i3) {
                    for (int i7 = i; i7 < i2; i7++) {
                        C0706a c0706a = arrayList.get(i7);
                        int size2 = c0706a.f3550c.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            Fragment fragment2 = c0706a.f3550c.get(i8).f3568b;
                            if ((fragment2 != null ? fragment2.f3191B : 0) == i5) {
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

    /* renamed from: E */
    public boolean m32678E() {
        for (int i = 0; i < this.f3550c.size(); i++) {
            if (m32679D(this.f3550c.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: F */
    public void m32677F() {
        if (this.f3566s != null) {
            for (int i = 0; i < this.f3566s.size(); i++) {
                this.f3566s.get(i).run();
            }
            this.f3566s = null;
        }
    }

    /* renamed from: G */
    public void m32676G(Fragment.AbstractC0675g abstractC0675g) {
        for (int i = 0; i < this.f3550c.size(); i++) {
            AbstractC0754s.C0755a c0755a = this.f3550c.get(i);
            if (m32679D(c0755a)) {
                c0755a.f3568b.m32955R1(abstractC0675g);
            }
        }
    }

    /* renamed from: H */
    public Fragment m32675H(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f3550c.size() - 1; size >= 0; size--) {
            AbstractC0754s.C0755a c0755a = this.f3550c.get(size);
            int i = c0755a.f3567a;
            if (i != 1) {
                if (i != 3) {
                    switch (i) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = c0755a.f3568b;
                            break;
                        case 10:
                            c0755a.f3574h = c0755a.f3573g;
                            break;
                    }
                }
                arrayList.add(c0755a.f3568b);
            }
            arrayList.remove(c0755a.f3568b);
        }
        return fragment;
    }

    @Override // androidx.fragment.app.FragmentManager.AbstractC0694n
    /* renamed from: a */
    public boolean mo32674a(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f3556i) {
            this.f3418t.m32797e(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: h */
    public int mo32503h() {
        return m32672u(false);
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: i */
    public int mo32502i() {
        return m32672u(true);
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: j */
    public void mo32501j() {
        m32498m();
        this.f3418t.m32805b0(this, false);
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: k */
    public void mo32500k() {
        m32498m();
        this.f3418t.m32805b0(this, true);
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: l */
    public AbstractC0754s mo32499l(Fragment fragment) {
        FragmentManager fragmentManager = fragment.f3238w;
        if (fragmentManager == null || fragmentManager == this.f3418t) {
            return super.mo32499l(fragment);
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: n */
    public void mo32497n(int i, Fragment fragment, String str, int i2) {
        super.mo32497n(i, fragment, str, i2);
        fragment.f3238w = this.f3418t;
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: o */
    public AbstractC0754s mo32496o(Fragment fragment) {
        FragmentManager fragmentManager = fragment.f3238w;
        if (fragmentManager == null || fragmentManager == this.f3418t) {
            return super.mo32496o(fragment);
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0754s
    /* renamed from: r */
    public AbstractC0754s mo32493r(Fragment fragment, Lifecycle.State state) {
        if (fragment.f3238w != this.f3418t) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + this.f3418t);
        } else if (state == Lifecycle.State.INITIALIZED && fragment.f3220e > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + " after the Fragment has been created");
        } else if (state != Lifecycle.State.DESTROYED) {
            return super.mo32493r(fragment, state);
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + state + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
    }

    /* renamed from: t */
    public void m32673t(int i) {
        AbstractC0754s.C0755a c0755a;
        if (!this.f3556i) {
            return;
        }
        if (FragmentManager.m32848G0(2)) {
            Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
        }
        int size = this.f3550c.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f3550c.get(i2).f3568b;
            if (fragment != null) {
                fragment.f3237v += i;
                if (FragmentManager.m32848G0(2)) {
                    Log.v("FragmentManager", "Bump nesting of " + c0755a.f3568b + " to " + c0755a.f3568b.f3237v);
                }
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f3420v >= 0) {
            sb.append(" #");
            sb.append(this.f3420v);
        }
        if (this.f3558k != null) {
            sb.append(" ");
            sb.append(this.f3558k);
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: u */
    int m32672u(boolean z) {
        if (!this.f3419u) {
            if (FragmentManager.m32848G0(2)) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new C0776x("FragmentManager"));
                m32671v("  ", printWriter);
                printWriter.close();
            }
            this.f3419u = true;
            if (this.f3556i) {
                this.f3420v = this.f3418t.m32785i();
            } else {
                this.f3420v = -1;
            }
            this.f3418t.m32813Y(this, z);
            return this.f3420v;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: v */
    public void m32671v(String str, PrintWriter printWriter) {
        m32670w(str, printWriter, true);
    }

    /* renamed from: w */
    public void m32670w(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f3558k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f3420v);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f3419u);
            if (this.f3555h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f3555h));
            }
            if (this.f3551d != 0 || this.f3552e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3551d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3552e));
            }
            if (this.f3553f != 0 || this.f3554g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3553f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3554g));
            }
            if (this.f3559l != 0 || this.f3560m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3559l));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f3560m);
            }
            if (this.f3561n != 0 || this.f3562o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3561n));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f3562o);
            }
        }
        if (!this.f3550c.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f3550c.size();
            for (int i = 0; i < size; i++) {
                AbstractC0754s.C0755a c0755a = this.f3550c.get(i);
                switch (c0755a.f3567a) {
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
                        str2 = "cmd=" + c0755a.f3567a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0755a.f3568b);
                if (z) {
                    if (c0755a.f3569c != 0 || c0755a.f3570d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c0755a.f3569c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c0755a.f3570d));
                    }
                    if (c0755a.f3571e != 0 || c0755a.f3572f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c0755a.f3571e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c0755a.f3572f));
                    }
                }
            }
        }
    }

    /* renamed from: x */
    public void m32669x() {
        int size = this.f3550c.size();
        for (int i = 0; i < size; i++) {
            AbstractC0754s.C0755a c0755a = this.f3550c.get(i);
            Fragment fragment = c0755a.f3568b;
            if (fragment != null) {
                fragment.m32952S1(false);
                fragment.m32958Q1(this.f3555h);
                fragment.m32947U1(this.f3563p, this.f3564q);
            }
            switch (c0755a.f3567a) {
                case 1:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32777k1(fragment, false);
                    this.f3418t.m32791g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0755a.f3567a);
                case 3:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32801c1(fragment);
                    break;
                case 4:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32854D0(fragment);
                    break;
                case 5:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32777k1(fragment, false);
                    this.f3418t.m32765o1(fragment);
                    break;
                case 6:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32745x(fragment);
                    break;
                case 7:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32777k1(fragment, false);
                    this.f3418t.m32779k(fragment);
                    break;
                case 8:
                    this.f3418t.m32771m1(fragment);
                    break;
                case 9:
                    this.f3418t.m32771m1(null);
                    break;
                case 10:
                    this.f3418t.m32774l1(fragment, c0755a.f3574h);
                    break;
            }
            if (!this.f3565r && c0755a.f3567a != 1 && fragment != null && !FragmentManager.f3287b) {
                this.f3418t.m32832O0(fragment);
            }
        }
        if (this.f3565r || FragmentManager.f3287b) {
            return;
        }
        FragmentManager fragmentManager = this.f3418t;
        fragmentManager.m32830P0(fragmentManager.f3320s, true);
    }

    /* renamed from: y */
    public void m32668y(boolean z) {
        for (int size = this.f3550c.size() - 1; size >= 0; size--) {
            AbstractC0754s.C0755a c0755a = this.f3550c.get(size);
            Fragment fragment = c0755a.f3568b;
            if (fragment != null) {
                fragment.m32952S1(true);
                fragment.m32958Q1(FragmentManager.m32789g1(this.f3555h));
                fragment.m32947U1(this.f3564q, this.f3563p);
            }
            switch (c0755a.f3567a) {
                case 1:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32777k1(fragment, true);
                    this.f3418t.m32801c1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0755a.f3567a);
                case 3:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32791g(fragment);
                    break;
                case 4:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32765o1(fragment);
                    break;
                case 5:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32777k1(fragment, true);
                    this.f3418t.m32854D0(fragment);
                    break;
                case 6:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32779k(fragment);
                    break;
                case 7:
                    fragment.m32975J1(c0755a.f3569c, c0755a.f3570d, c0755a.f3571e, c0755a.f3572f);
                    this.f3418t.m32777k1(fragment, true);
                    this.f3418t.m32745x(fragment);
                    break;
                case 8:
                    this.f3418t.m32771m1(null);
                    break;
                case 9:
                    this.f3418t.m32771m1(fragment);
                    break;
                case 10:
                    this.f3418t.m32774l1(fragment, c0755a.f3573g);
                    break;
            }
            if (!this.f3565r && c0755a.f3567a != 3 && fragment != null && !FragmentManager.f3287b) {
                this.f3418t.m32832O0(fragment);
            }
        }
        if (this.f3565r || !z || FragmentManager.f3287b) {
            return;
        }
        FragmentManager fragmentManager = this.f3418t;
        fragmentManager.m32830P0(fragmentManager.f3320s, true);
    }

    /* renamed from: z */
    public Fragment m32667z(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            Fragment fragment2 = fragment;
            if (i3 < this.f3550c.size()) {
                AbstractC0754s.C0755a c0755a = this.f3550c.get(i3);
                int i4 = c0755a.f3567a;
                if (i4 != 1) {
                    if (i4 == 2) {
                        Fragment fragment3 = c0755a.f3568b;
                        int i5 = fragment3.f3191B;
                        int size = arrayList.size() - 1;
                        boolean z = false;
                        i = i3;
                        fragment = fragment2;
                        while (size >= 0) {
                            Fragment fragment4 = arrayList.get(size);
                            Fragment fragment5 = fragment;
                            int i6 = i;
                            boolean z2 = z;
                            if (fragment4.f3191B == i5) {
                                if (fragment4 == fragment3) {
                                    z2 = true;
                                    fragment5 = fragment;
                                    i6 = i;
                                } else {
                                    fragment5 = fragment;
                                    int i7 = i;
                                    if (fragment4 == fragment) {
                                        this.f3550c.add(i, new AbstractC0754s.C0755a(9, fragment4));
                                        i7 = i + 1;
                                        fragment5 = null;
                                    }
                                    AbstractC0754s.C0755a c0755a2 = new AbstractC0754s.C0755a(3, fragment4);
                                    c0755a2.f3569c = c0755a.f3569c;
                                    c0755a2.f3571e = c0755a.f3571e;
                                    c0755a2.f3570d = c0755a.f3570d;
                                    c0755a2.f3572f = c0755a.f3572f;
                                    this.f3550c.add(i7, c0755a2);
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
                            this.f3550c.remove(i);
                            i--;
                        } else {
                            c0755a.f3567a = 1;
                            arrayList.add(fragment3);
                        }
                    } else if (i4 == 3 || i4 == 6) {
                        arrayList.remove(c0755a.f3568b);
                        Fragment fragment6 = c0755a.f3568b;
                        fragment = fragment2;
                        i = i3;
                        if (fragment6 == fragment2) {
                            this.f3550c.add(i3, new AbstractC0754s.C0755a(9, fragment6));
                            i = i3 + 1;
                            fragment = null;
                        }
                    } else if (i4 != 7) {
                        if (i4 != 8) {
                            fragment = fragment2;
                            i = i3;
                        } else {
                            this.f3550c.add(i3, new AbstractC0754s.C0755a(9, fragment2));
                            i = i3 + 1;
                            fragment = c0755a.f3568b;
                        }
                    }
                    i2 = i + 1;
                }
                arrayList.add(c0755a.f3568b);
                i = i3;
                fragment = fragment2;
                i2 = i + 1;
            } else {
                return fragment2;
            }
        }
    }
}
