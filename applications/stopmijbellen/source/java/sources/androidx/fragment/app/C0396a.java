package androidx.fragment.app;

import android.support.p012v4.media.C0082b;
import androidx.fragment.app.AbstractC0397a0;
import androidx.fragment.app.AbstractC0438i0;
import androidx.recyclerview.widget.C0608b;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Objects;
/* renamed from: androidx.fragment.app.a */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a.class */
public final class C0396a extends AbstractC0438i0 implements AbstractC0397a0.AbstractC0410l {

    /* renamed from: q */
    public final AbstractC0397a0 f1684q;

    /* renamed from: r */
    public boolean f1685r;

    /* renamed from: s */
    public int f1686s;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0396a(androidx.fragment.app.AbstractC0397a0 r5) {
        /*
            r4 = this;
            r0 = r5
            androidx.fragment.app.w r0 = r0.m8195K()
            r6 = r0
            r0 = r5
            androidx.fragment.app.x<?> r0 = r0.f1714q
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L19
            r0 = r7
            android.content.Context r0 = r0.f1982b
            java.lang.ClassLoader r0 = r0.getClassLoader()
            r7 = r0
            goto L1b
        L19:
            r0 = 0
            r7 = r0
        L1b:
            r0 = r4
            r1 = r6
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r4
            r1 = -1
            r0.f1686s = r1
            r0 = r4
            r1 = r5
            r0.f1684q = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0396a.<init>(androidx.fragment.app.a0):void");
    }

    @Override // androidx.fragment.app.AbstractC0397a0.AbstractC0410l
    /* renamed from: a */
    public boolean mo8139a(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2) {
        if (AbstractC0397a0.m8192N(2)) {
            toString();
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f1828g) {
            AbstractC0397a0 abstractC0397a0 = this.f1684q;
            if (abstractC0397a0.f1701d == null) {
                abstractC0397a0.f1701d = new ArrayList<>();
            }
            abstractC0397a0.f1701d.add(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0438i0
    /* renamed from: c */
    public int mo8097c() {
        return m8214g(false);
    }

    @Override // androidx.fragment.app.AbstractC0438i0
    /* renamed from: d */
    public void mo8096d(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder m8752j = C0082b.m8752j("Fragment ");
            m8752j.append(cls.getCanonicalName());
            m8752j.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(m8752j.toString());
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                throw new IllegalStateException(C0608b.m7625j(sb, fragment.mTag, " now ", str));
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        m8098b(new AbstractC0438i0.C0439a(i2, fragment));
        fragment.mFragmentManager = this.f1684q;
    }

    /* renamed from: f */
    public void m8215f(int i) {
        if (!this.f1828g) {
            return;
        }
        if (AbstractC0397a0.m8192N(2)) {
            toString();
        }
        int size = this.f1822a.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC0438i0.C0439a c0439a = this.f1822a.get(i2);
            Fragment fragment = c0439a.f1839b;
            if (fragment != null) {
                fragment.mBackStackNesting += i;
                if (AbstractC0397a0.m8192N(2)) {
                    Objects.toString(c0439a.f1839b);
                    int i3 = c0439a.f1839b.mBackStackNesting;
                }
            }
        }
    }

    /* renamed from: g */
    public int m8214g(boolean z) {
        if (!this.f1685r) {
            if (AbstractC0397a0.m8192N(2)) {
                toString();
                PrintWriter printWriter = new PrintWriter(new C0482v0("FragmentManager"));
                m8211j("  ", printWriter, true);
                printWriter.close();
            }
            this.f1685r = true;
            if (this.f1828g) {
                this.f1686s = this.f1684q.f1706i.getAndIncrement();
            } else {
                this.f1686s = -1;
            }
            this.f1684q.m8205A(this, z);
            return this.f1686s;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: h */
    public void m8213h() {
        if (!this.f1828g) {
            this.f1829h = false;
            this.f1684q.m8202D(this, false);
            return;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* renamed from: i */
    public void m8212i() {
        if (!this.f1828g) {
            this.f1829h = false;
            this.f1684q.m8202D(this, true);
            return;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    /* renamed from: j */
    public void m8211j(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1830i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f1686s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f1685r);
            if (this.f1827f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f1827f));
            }
            if (this.f1823b != 0 || this.f1824c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1823b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1824c));
            }
            if (this.f1825d != 0 || this.f1826e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1825d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1826e));
            }
            if (this.f1831j != 0 || this.f1832k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1831j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1832k);
            }
            if (this.f1833l != 0 || this.f1834m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1833l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f1834m);
            }
        }
        if (!this.f1822a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f1822a.size();
            for (int i = 0; i < size; i++) {
                AbstractC0438i0.C0439a c0439a = this.f1822a.get(i);
                switch (c0439a.f1838a) {
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
                        StringBuilder m8752j = C0082b.m8752j("cmd=");
                        m8752j.append(c0439a.f1838a);
                        str2 = m8752j.toString();
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(c0439a.f1839b);
                if (z) {
                    if (c0439a.f1840c != 0 || c0439a.f1841d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c0439a.f1840c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c0439a.f1841d));
                    }
                    if (c0439a.f1842e != 0 || c0439a.f1843f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c0439a.f1842e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c0439a.f1843f));
                    }
                }
            }
        }
    }

    /* renamed from: k */
    public void m8210k() {
        int size = this.f1822a.size();
        for (int i = 0; i < size; i++) {
            AbstractC0438i0.C0439a c0439a = this.f1822a.get(i);
            Fragment fragment = c0439a.f1839b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f1827f);
                fragment.setSharedElementNames(this.f1835n, this.f1836o);
            }
            switch (c0439a.f1838a) {
                case 1:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8170e0(fragment, false);
                    this.f1684q.m8179a(fragment);
                    break;
                case 2:
                default:
                    StringBuilder m8752j = C0082b.m8752j("Unknown cmd: ");
                    m8752j.append(c0439a.f1838a);
                    throw new IllegalArgumentException(m8752j.toString());
                case 3:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8180Z(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8193M(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8170e0(fragment, false);
                    this.f1684q.m8162i0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8161j(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8170e0(fragment, false);
                    this.f1684q.m8175c(fragment);
                    break;
                case 8:
                    this.f1684q.m8166g0(fragment);
                    break;
                case 9:
                    this.f1684q.m8166g0(null);
                    break;
                case 10:
                    this.f1684q.m8168f0(fragment, c0439a.f1845h);
                    break;
            }
            if (!this.f1837p) {
                int i2 = c0439a.f1838a;
            }
        }
    }

    /* renamed from: l */
    public void m8209l(boolean z) {
        for (int size = this.f1822a.size() - 1; size >= 0; size--) {
            AbstractC0438i0.C0439a c0439a = this.f1822a.get(size);
            Fragment fragment = c0439a.f1839b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                int i = this.f1827f;
                int i2 = 8194;
                if (i != 4097) {
                    i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
                }
                fragment.setNextTransition(i2);
                fragment.setSharedElementNames(this.f1836o, this.f1835n);
            }
            switch (c0439a.f1838a) {
                case 1:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8170e0(fragment, true);
                    this.f1684q.m8180Z(fragment);
                    break;
                case 2:
                default:
                    StringBuilder m8752j = C0082b.m8752j("Unknown cmd: ");
                    m8752j.append(c0439a.f1838a);
                    throw new IllegalArgumentException(m8752j.toString());
                case 3:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8179a(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8162i0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8170e0(fragment, true);
                    this.f1684q.m8193M(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8175c(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c0439a.f1840c, c0439a.f1841d, c0439a.f1842e, c0439a.f1843f);
                    this.f1684q.m8170e0(fragment, true);
                    this.f1684q.m8161j(fragment);
                    break;
                case 8:
                    this.f1684q.m8166g0(null);
                    break;
                case 9:
                    this.f1684q.m8166g0(fragment);
                    break;
                case 10:
                    this.f1684q.m8168f0(fragment, c0439a.f1844g);
                    break;
            }
            if (!this.f1837p) {
                int i3 = c0439a.f1838a;
            }
        }
    }

    /* renamed from: m */
    public boolean m8208m(int i) {
        int size = this.f1822a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f1822a.get(i2).f1839b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    public boolean m8207n(ArrayList<C0396a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f1822a.size();
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            Fragment fragment = this.f1822a.get(i4).f1839b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            int i6 = i3;
            if (i5 != 0) {
                i6 = i3;
                if (i5 != i3) {
                    for (int i7 = i; i7 < i2; i7++) {
                        C0396a c0396a = arrayList.get(i7);
                        int size2 = c0396a.f1822a.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            Fragment fragment2 = c0396a.f1822a.get(i8).f1839b;
                            if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
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

    /* renamed from: o */
    public AbstractC0438i0 m8206o(Fragment fragment) {
        AbstractC0397a0 abstractC0397a0 = fragment.mFragmentManager;
        if (abstractC0397a0 == null || abstractC0397a0 == this.f1684q) {
            m8098b(new AbstractC0438i0.C0439a(3, fragment));
            return this;
        }
        StringBuilder m8752j = C0082b.m8752j("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        m8752j.append(fragment.toString());
        m8752j.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(m8752j.toString());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f1686s >= 0) {
            sb.append(" #");
            sb.append(this.f1686s);
        }
        if (this.f1830i != null) {
            sb.append(" ");
            sb.append(this.f1830i);
        }
        sb.append("}");
        return sb.toString();
    }
}
